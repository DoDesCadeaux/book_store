-- -------------------------------------------------------------
-- TablePlus 5.9.0(538)
--
-- https://tableplus.com/
--
-- Database: book_db
-- Generation Time: 2024-02-22 13:33:24.7360
-- -------------------------------------------------------------


-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."auth_group" (
    "id" int4 NOT NULL,
    "name" varchar(150) NOT NULL,
    PRIMARY KEY ("id")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."auth_group_permissions" (
    "id" int8 NOT NULL,
    "group_id" int4 NOT NULL,
    "permission_id" int4 NOT NULL,
    PRIMARY KEY ("id")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."auth_permission" (
    "id" int4 NOT NULL,
    "name" varchar(255) NOT NULL,
    "content_type_id" int4 NOT NULL,
    "codename" varchar(100) NOT NULL,
    PRIMARY KEY ("id")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."auth_user" (
    "id" int4 NOT NULL,
    "password" varchar(128) NOT NULL,
    "last_login" timestamptz,
    "is_superuser" bool NOT NULL,
    "username" varchar(150) NOT NULL,
    "first_name" varchar(150) NOT NULL,
    "last_name" varchar(150) NOT NULL,
    "email" varchar(254) NOT NULL,
    "is_staff" bool NOT NULL,
    "is_active" bool NOT NULL,
    "date_joined" timestamptz NOT NULL,
    PRIMARY KEY ("id")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."auth_user_groups" (
    "id" int8 NOT NULL,
    "user_id" int4 NOT NULL,
    "group_id" int4 NOT NULL,
    PRIMARY KEY ("id")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."auth_user_user_permissions" (
    "id" int8 NOT NULL,
    "user_id" int4 NOT NULL,
    "permission_id" int4 NOT NULL,
    PRIMARY KEY ("id")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."book_outlet_address" (
    "id" int8 NOT NULL,
    "street" varchar(100) NOT NULL,
    "postal_code" varchar(5) NOT NULL,
    "city" varchar(50) NOT NULL,
    PRIMARY KEY ("id")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."book_outlet_author" (
    "id" int8 NOT NULL,
    "first_name" varchar(100) NOT NULL,
    "last_name" varchar(100) NOT NULL,
    "address_id" int8,
    PRIMARY KEY ("id")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."book_outlet_book" (
    "id" int8 NOT NULL,
    "title" varchar(50) NOT NULL,
    "rating" int4 NOT NULL,
    "autor_id" int8,
    "is_best_selling" bool NOT NULL,
    "slug" varchar(50) NOT NULL,
    PRIMARY KEY ("id")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."django_admin_log" (
    "id" int4 NOT NULL,
    "action_time" timestamptz NOT NULL,
    "object_id" text,
    "object_repr" varchar(200) NOT NULL,
    "action_flag" int2 NOT NULL CHECK (action_flag >= 0),
    "change_message" text NOT NULL,
    "content_type_id" int4,
    "user_id" int4 NOT NULL,
    PRIMARY KEY ("id")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."django_content_type" (
    "id" int4 NOT NULL,
    "app_label" varchar(100) NOT NULL,
    "model" varchar(100) NOT NULL,
    PRIMARY KEY ("id")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."django_migrations" (
    "id" int8 NOT NULL,
    "app" varchar(255) NOT NULL,
    "name" varchar(255) NOT NULL,
    "applied" timestamptz NOT NULL,
    PRIMARY KEY ("id")
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."django_session" (
    "session_key" varchar(40) NOT NULL,
    "session_data" text NOT NULL,
    "expire_date" timestamptz NOT NULL,
    PRIMARY KEY ("session_key")
);

INSERT INTO "public"."auth_permission" ("id", "name", "content_type_id", "codename") VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add book', 7, 'add_book'),
(26, 'Can change book', 7, 'change_book'),
(27, 'Can delete book', 7, 'delete_book'),
(28, 'Can view book', 7, 'view_book'),
(29, 'Can add author', 8, 'add_author'),
(30, 'Can change author', 8, 'change_author'),
(31, 'Can delete author', 8, 'delete_author'),
(32, 'Can view author', 8, 'view_author'),
(33, 'Can add address', 9, 'add_address'),
(34, 'Can change address', 9, 'change_address'),
(35, 'Can delete address', 9, 'delete_address'),
(36, 'Can view address', 9, 'view_address');

INSERT INTO "public"."auth_user" ("id", "password", "last_login", "is_superuser", "username", "first_name", "last_name", "email", "is_staff", "is_active", "date_joined") VALUES
(1, 'pbkdf2_sha256$600000$cfOLiB4rie3ButGKzWhQKl$yHORTUqVEhFrtW+GeWG2zYAtI4V24dWKszX3wI5xlhc=', '2024-02-21 18:46:38.844561+01', 't', 'dduraku', '', '', '', 't', 't', '2024-02-16 17:38:29.076303+01');

INSERT INTO "public"."django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES
(1, '2024-02-16 17:47:46.403048+01', '4', 'Le zinzin - Dorian', 1, '[{"added": {}}]', 7, 1);

INSERT INTO "public"."django_content_type" ("id", "app_label", "model") VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'book_outlet', 'book'),
(8, 'book_outlet', 'author'),
(9, 'book_outlet', 'address');

INSERT INTO "public"."django_migrations" ("id", "app", "name", "applied") VALUES
(1, 'contenttypes', '0001_initial', '2024-02-08 17:51:14.133116+01'),
(2, 'auth', '0001_initial', '2024-02-08 17:51:14.19622+01'),
(3, 'admin', '0001_initial', '2024-02-08 17:51:14.24778+01'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-02-08 17:51:14.257495+01'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-02-08 17:51:14.265507+01'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-02-08 17:51:14.287542+01'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-02-08 17:51:14.296195+01'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-02-08 17:51:14.305888+01'),
(9, 'auth', '0004_alter_user_username_opts', '2024-02-08 17:51:14.314253+01'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-02-08 17:51:14.323178+01'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-02-08 17:51:14.32653+01'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-02-08 17:51:14.33499+01'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-02-08 17:51:14.346301+01'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-02-08 17:51:14.358144+01'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-02-08 17:51:14.367034+01'),
(16, 'auth', '0011_update_proxy_permissions', '2024-02-08 17:51:14.376719+01'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-02-08 17:51:14.384642+01'),
(18, 'book_outlet', '0001_initial', '2024-02-08 17:51:14.39126+01'),
(19, 'sessions', '0001_initial', '2024-02-08 17:51:14.404709+01'),
(20, 'book_outlet', '0002_book_autor_book_is_best_selling_alter_book_rating', '2024-02-12 15:35:49.577896+01'),
(21, 'book_outlet', '0003_book_slug', '2024-02-16 16:54:14.029194+01'),
(22, 'book_outlet', '0004_author_alter_book_slug_alter_book_autor', '2024-02-21 16:57:27.910397+01'),
(23, 'book_outlet', '0005_alter_book_autor', '2024-02-21 18:46:07.157449+01'),
(24, 'book_outlet', '0006_address_alter_book_is_best_selling_author_address', '2024-02-22 12:41:12.470385+01'),
(25, 'book_outlet', '0007_alter_author_address', '2024-02-22 12:41:12.526821+01'),
(26, 'book_outlet', '0008_alter_author_address', '2024-02-22 12:41:12.535519+01'),
(27, 'book_outlet', '0009_alter_author_address', '2024-02-22 12:41:12.546126+01'),
(28, 'book_outlet', '0010_remove_author_address_delete_address', '2024-02-22 12:41:12.572081+01'),
(29, 'book_outlet', '0011_address_author_address', '2024-02-22 12:41:36.00856+01');

INSERT INTO "public"."django_session" ("session_key", "session_data", "expire_date") VALUES
('0gy9zbhqcxyrfnlg7bufe2fdr6bpkub7', '.eJxVjEEOgjAQRe_StWk6dGCqS_ecgQydqaCmTSisjHdXEha6_e-9_zIDb-s0bFWXYRZzMWBOv9vI8aF5B3LnfCs2lrwu82h3xR602r6IPq-H-3cwcZ2-NZ4ldQpEroOogE0iESfeE0KKxMGhdNgEImYffQvAmCRhq8E7DKN5fwDUmTdw:1rcqg2:EKJPmUiUx32Q3Bhjd6P-LVu296n3twgtG_lTAniSW6o', '2024-03-06 18:46:38.84824+01'),
('0vd5zh47bizui9bv0hacn4qpin8ihfru', '.eJxVjEEOgjAQRe_StWk6dGCqS_ecgQydqaCmTSisjHdXEha6_e-9_zIDb-s0bFWXYRZzMWBOv9vI8aF5B3LnfCs2lrwu82h3xR602r6IPq-H-3cwcZ2-NZ4ldQpEroOogE0iESfeE0KKxMGhdNgEImYffQvAmCRhq8E7DKN5fwDUmTdw:1rb1Ej:IveooI1iCwLzmB0SYhHJp9sQLeU3BWAaY34HmdHbdHo', '2024-03-01 17:38:53.965529+01');

ALTER TABLE "public"."auth_group_permissions" ADD FOREIGN KEY ("permission_id") REFERENCES "public"."auth_permission"("id");
ALTER TABLE "public"."auth_group_permissions" ADD FOREIGN KEY ("group_id") REFERENCES "public"."auth_group"("id");
ALTER TABLE "public"."auth_permission" ADD FOREIGN KEY ("content_type_id") REFERENCES "public"."django_content_type"("id");
ALTER TABLE "public"."auth_user_groups" ADD FOREIGN KEY ("group_id") REFERENCES "public"."auth_group"("id");
ALTER TABLE "public"."auth_user_groups" ADD FOREIGN KEY ("user_id") REFERENCES "public"."auth_user"("id");
ALTER TABLE "public"."auth_user_user_permissions" ADD FOREIGN KEY ("permission_id") REFERENCES "public"."auth_permission"("id");
ALTER TABLE "public"."auth_user_user_permissions" ADD FOREIGN KEY ("user_id") REFERENCES "public"."auth_user"("id");
ALTER TABLE "public"."book_outlet_author" ADD FOREIGN KEY ("address_id") REFERENCES "public"."book_outlet_address"("id");
ALTER TABLE "public"."book_outlet_book" ADD FOREIGN KEY ("autor_id") REFERENCES "public"."book_outlet_author"("id");
ALTER TABLE "public"."django_admin_log" ADD FOREIGN KEY ("content_type_id") REFERENCES "public"."django_content_type"("id");
ALTER TABLE "public"."django_admin_log" ADD FOREIGN KEY ("user_id") REFERENCES "public"."auth_user"("id");
