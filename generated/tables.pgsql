--
-- Class Conversation as table conversation
--

CREATE TABLE "conversation" (
  "id" serial,
  "private" boolean NOT NULL,
  "hash" text NOT NULL
);

ALTER TABLE ONLY "conversation"
  ADD CONSTRAINT conversation_pkey PRIMARY KEY (id);


--
-- Class Message as table message
--

CREATE TABLE "message" (
  "id" serial,
  "channel" text,
  "content" text NOT NULL,
  "send_by" text,
  "sent_at" timestamp without time zone,
  "seen_at" timestamp without time zone,
  "seen_by" json NOT NULL,
  "group" boolean,
  "deleted" boolean,
  "replayto" integer
);

ALTER TABLE ONLY "message"
  ADD CONSTRAINT message_pkey PRIMARY KEY (id);


--
-- Class User as table users
--

CREATE TABLE "users" (
  "id" serial,
  "uid" text,
  "name" text NOT NULL,
  "email" text,
  "phone" integer,
  "image" integer,
  "photourl" text,
  "last_seen" timestamp without time zone,
  "status" boolean,
  "deleted" boolean
);

ALTER TABLE ONLY "users"
  ADD CONSTRAINT users_pkey PRIMARY KEY (id);


