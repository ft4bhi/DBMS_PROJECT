CREATE TABLE IF NOT EXISTS "locations" (
	"id" serial PRIMARY KEY NOT NULL,
	"places" varchar(255)
);
--> statement-breakpoint
CREATE TABLE IF NOT EXISTS "notifications" (
	"id" serial PRIMARY KEY NOT NULL,
	"user" varchar(255) DEFAULT 'admin',
	"email" varchar(255),
	"from" varchar(255),
	"to" varchar(255),
	"send" boolean DEFAULT false,
	"received" boolean DEFAULT false
);
--> statement-breakpoint
CREATE TABLE IF NOT EXISTS "messages" (
	"id" serial PRIMARY KEY NOT NULL,
	"user" varchar(255) DEFAULT 'admin',
	"fromEmail" varchar(255),
	"toEmail" varchar(255),
	"send" boolean DEFAULT false,
	"received" boolean DEFAULT false
);
