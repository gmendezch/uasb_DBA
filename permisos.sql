GRANT SELECT ON TABLE public.album TO uasb_user;
GRANT SELECT ON TABLE public.artist TO uasb_user;
GRANT SELECT ON TABLE public.customer TO uasb_user;
GRANT SELECT ON TABLE public.employee TO uasb_user;
GRANT SELECT ON TABLE public.genre TO uasb_user;
GRANT SELECT ON TABLE public.invoice TO uasb_user;
GRANT SELECT ON TABLE public.invoiceline TO uasb_user;
GRANT SELECT ON TABLE public.mediatype TO uasb_user;
GRANT SELECT ON TABLE public.playlist TO uasb_user;
GRANT SELECT ON TABLE public.playlisttrack TO uasb_user;
GRANT SELECT ON TABLE public.track TO uasb_user;

GRANT INSERT, UPDATE, DELETE ON TABLE public.album TO operator_user;
GRANT INSERT, UPDATE, DELETE ON TABLE public.artist TO operator_user;
GRANT INSERT, UPDATE, DELETE ON TABLE public.customer TO operator_user;
GRANT INSERT, UPDATE, DELETE ON TABLE public.employee TO operator_user;
GRANT INSERT, UPDATE, DELETE ON TABLE public.genre TO operator_user;
GRANT INSERT, UPDATE, DELETE ON TABLE public.invoice TO operator_user;
GRANT INSERT, UPDATE, DELETE ON TABLE public.invoiceline TO operator_user;
GRANT INSERT, UPDATE, DELETE ON TABLE public.mediatype TO operator_user;
GRANT INSERT, UPDATE, DELETE ON TABLE public.playlist TO operator_user;
GRANT INSERT, UPDATE, DELETE ON TABLE public.playlisttrack TO operator_user;
GRANT INSERT, UPDATE, DELETE ON TABLE public.track TO operator_user;

REVOKE ALL ON TABLE public.album FROM public;
REVOKE ALL ON TABLE public.artist FROM public;
REVOKE ALL ON TABLE public.customer FROM public;
REVOKE ALL ON TABLE public.employee FROM public;
REVOKE ALL ON TABLE public.genre FROM public;
REVOKE ALL ON TABLE public.invoice FROM public;
REVOKE ALL ON TABLE public.invoiceline FROM public;
REVOKE ALL ON TABLE public.mediatype FROM public;
REVOKE ALL ON TABLE public.playlist FROM public;
REVOKE ALL ON TABLE public.playlisttrack FROM public;
REVOKE ALL ON TABLE public.track FROM public;

GRANT SELECT ON TABLE public.cancionestop TO admin_user;
GRANT SELECT ON TABLE public.compracliente TO admin_user;
GRANT SELECT ON TABLE public.mayorduracion TO admin_user;
GRANT SELECT ON TABLE public.ventames TO admin_user;

GRANT SELECT ON TABLE public.cancionestop TO test_user;
GRANT SELECT ON TABLE public.compracliente TO test_user;
GRANT SELECT ON TABLE public.mayorduracion TO test_user;
GRANT SELECT ON TABLE public.ventames TO test_user;

REVOKE ALL ON TABLE public.cancionestop FROM public;
REVOKE ALL ON TABLE public.compracliente FROM public;
REVOKE ALL ON TABLE public.mayorduracion FROM public;
REVOKE ALL ON TABLE public.ventames FROM public;