export const Permissions = {
  backoffice: {
    access: 'backoffice:access',
    billing: 'backoffice:billing',
    support: 'backoffice:support',
    users: {
      general: 'backoffice:users',
      impersonate: 'backoffice:users:impersonate',
    },
    platform: 'backoffice:platform',
  },
  platform: {
    business: 'platform:business',
    delivery: 'platform:delivery',
    deliveryBusiness: 'platform:deliveryBusiness',
    users: 'platform:users',
    guest: 'platform:guest',
  },
};
