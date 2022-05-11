export default ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', '549ed57cedabcb16b224049a8c5b4459'),
  },
});
