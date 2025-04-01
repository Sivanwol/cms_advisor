import { createAccessControl } from 'better-auth/plugins/access';
import { defaultStatements, adminAc } from 'better-auth/plugins/admin/access';
import { Permissions } from './constraints/permissions';
const statement = {
  ...defaultStatements,
  project: [
    Permissions.backoffice.access,
    Permissions.backoffice.billing,
    Permissions.backoffice.support,
    Permissions.backoffice.users.impersonate,
    Permissions.backoffice.users.general,
    Permissions.backoffice.platform,
    Permissions.platform.business,
    Permissions.platform.delivery,
    Permissions.platform.deliveryBusiness,
    Permissions.platform.users,
    Permissions.platform.guest,
  ],
} as const;

export const ac = createAccessControl(statement);

export const adminUser = ac.newRole({
  project: [
    Permissions.backoffice.access,
    Permissions.backoffice.billing,
    Permissions.backoffice.support,
    Permissions.backoffice.users.impersonate,
    Permissions.backoffice.users.general,
    Permissions.backoffice.platform,
  ],
  ...adminAc.statements,
});

export const supportUser = ac.newRole({
  project: [
    Permissions.backoffice.access,
    Permissions.backoffice.support,
    Permissions.backoffice.users.impersonate,
    Permissions.backoffice.users.general,
    Permissions.backoffice.platform,
  ],
  ...adminAc.statements,
});
export const deliveryUser = ac.newRole({
  project: [Permissions.platform.delivery],
});

export const guestDeliveryUser = ac.newRole({
  project: [Permissions.platform.guest, Permissions.platform.delivery],
});

export const deliveryBusinessUser = ac.newRole({
  project: [Permissions.platform.deliveryBusiness],
});

export const guestDeliveryBusinessUser = ac.newRole({
  project: [Permissions.platform.guest, Permissions.platform.deliveryBusiness],
});
export const businessUser = ac.newRole({
  project: [Permissions.platform.business],
});
export const guestBusinessUser = ac.newRole({
  project: [Permissions.platform.guest, Permissions.platform.business],
});
export const normalUser = ac.newRole({
  project: [Permissions.platform.users],
});
export const guestNormalUser = ac.newRole({
  project: [Permissions.platform.guest, Permissions.platform.users],
});
