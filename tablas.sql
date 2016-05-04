CREATE TABLE Artist (
    ArtistId integer NOT NULL,
    Name character varying(50)
);
ALTER TABLE public.Artist OWNER TO admin_user;

CREATE TABLE Album (
    AlbumId integer NOT NULL,
    Title character varying(50),
    ArtistId integer
);
ALTER TABLE public.Album OWNER TO admin_user;

CREATE TABLE MediaType (
    MediaTypeId integer NOT NULL,
    Name character varying(50)
);
ALTER TABLE public.MediaType OWNER TO admin_user;

CREATE TABLE Genre (
    GenreId integer NOT NULL,
    Name character varying(50)
);
ALTER TABLE public.Genre OWNER TO admin_user;

CREATE TABLE Track (
    TrackId integer NOT NULL,
    Name character varying(50),
    AlbumId integer,
    MediaTypeId integer,
    GenreId integer,
    Composer character varying(50),
    Miliseconds integer,
    Bytes integer,
    UnitPrice money
);
ALTER TABLE public.Track OWNER TO admin_user;

CREATE TABLE Playlist (
    PlaylistId integer NOT NULL,
    Name character varying(50)
);
ALTER TABLE public.Playlist OWNER TO admin_user;

CREATE TABLE PlaylistTrack (
    PlaylistId integer NOT NULL,
    TrackId integer NOT NULL
);
ALTER TABLE public.PlaylistTrack OWNER TO admin_user;

CREATE TABLE Employee (
    EmployeeId integer NOT NULL,
    LastName character varying(50),
    FirstName character varying(50),
    Title character varying(50),
    ReportsTo integer,
    BirthDate date,
    HireDate date,
    Address character varying(50),
    City character varying(50),
    State character varying(50),
    Country character varying(50),
    PostalCode character varying(20),
    Phone character varying(20),
    Fax character varying(20),
    Email character varying(50)
);
ALTER TABLE public.Employee OWNER TO admin_user;

CREATE TABLE Customer (
    CustomerId integer NOT NULL,
    FirstName character varying(50),
    LastName character varying(50),
    Company character varying(50),
    Address character varying(50),
    City character varying(50),
    State character varying(50),
    Country character varying(50),
    PostalCode character varying(15),
    Phone character varying(20),
    Fax character varying(20),
    Email character varying(30),
    SupportRepId integer
);
ALTER TABLE public.Customer OWNER TO admin_user;

CREATE TABLE Invoice (
    InvoiceId integer NOT NULL,
    CustomerId integer,
    InvoiceDate date,
    BillingAddress character varying(50),
    BillingCity character varying(50),
    BillingState character varying(50),
    BillingCountry character varying(50),
    BillingPostalCode character varying(20),
    Total money
);
ALTER TABLE public.Invoice OWNER TO admin_user;

CREATE TABLE InvoiceLine (
    InvoiceLineId integer NOT NULL,
    InvoiceId integer,
    TrackId integer,
    UnitPrice money,
    Quantity smallint
);
ALTER TABLE public.InvoiceLine OWNER TO admin_user;



