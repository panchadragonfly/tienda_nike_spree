--
-- PostgreSQL database dump
--

-- Dumped from database version 10.15
-- Dumped by pg_dump version 10.15

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: action_mailbox_inbound_emails; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.action_mailbox_inbound_emails (
    id bigint NOT NULL,
    status integer DEFAULT 0 NOT NULL,
    message_id character varying NOT NULL,
    message_checksum character varying NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.action_mailbox_inbound_emails OWNER TO pguser;

--
-- Name: action_mailbox_inbound_emails_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.action_mailbox_inbound_emails_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.action_mailbox_inbound_emails_id_seq OWNER TO pguser;

--
-- Name: action_mailbox_inbound_emails_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.action_mailbox_inbound_emails_id_seq OWNED BY public.action_mailbox_inbound_emails.id;


--
-- Name: action_text_rich_texts; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.action_text_rich_texts (
    id bigint NOT NULL,
    name character varying NOT NULL,
    body text,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.action_text_rich_texts OWNER TO pguser;

--
-- Name: action_text_rich_texts_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.action_text_rich_texts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.action_text_rich_texts_id_seq OWNER TO pguser;

--
-- Name: action_text_rich_texts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.action_text_rich_texts_id_seq OWNED BY public.action_text_rich_texts.id;


--
-- Name: active_storage_attachments; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.active_storage_attachments OWNER TO pguser;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_attachments_id_seq OWNER TO pguser;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;


--
-- Name: active_storage_blobs; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    byte_size bigint NOT NULL,
    checksum character varying NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.active_storage_blobs OWNER TO pguser;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_blobs_id_seq OWNER TO pguser;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO pguser;

--
-- Name: friendly_id_slugs; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.friendly_id_slugs (
    id integer NOT NULL,
    slug character varying NOT NULL,
    sluggable_id integer NOT NULL,
    sluggable_type character varying(50),
    scope character varying,
    created_at timestamp without time zone,
    deleted_at timestamp without time zone
);


ALTER TABLE public.friendly_id_slugs OWNER TO pguser;

--
-- Name: friendly_id_slugs_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.friendly_id_slugs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.friendly_id_slugs_id_seq OWNER TO pguser;

--
-- Name: friendly_id_slugs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.friendly_id_slugs_id_seq OWNED BY public.friendly_id_slugs.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO pguser;

--
-- Name: spree_addresses; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_addresses (
    id integer NOT NULL,
    firstname character varying,
    lastname character varying,
    address1 character varying,
    address2 character varying,
    city character varying,
    zipcode character varying,
    phone character varying,
    state_name character varying,
    alternative_phone character varying,
    company character varying,
    state_id integer,
    country_id integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    user_id integer,
    deleted_at timestamp without time zone
);


ALTER TABLE public.spree_addresses OWNER TO pguser;

--
-- Name: spree_addresses_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_addresses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_addresses_id_seq OWNER TO pguser;

--
-- Name: spree_addresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_addresses_id_seq OWNED BY public.spree_addresses.id;


--
-- Name: spree_adjustments; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_adjustments (
    id integer NOT NULL,
    source_type character varying,
    source_id integer,
    adjustable_type character varying,
    adjustable_id integer,
    amount numeric(10,2),
    label character varying,
    mandatory boolean,
    eligible boolean DEFAULT true,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    state character varying,
    order_id integer NOT NULL,
    included boolean DEFAULT false
);


ALTER TABLE public.spree_adjustments OWNER TO pguser;

--
-- Name: spree_adjustments_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_adjustments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_adjustments_id_seq OWNER TO pguser;

--
-- Name: spree_adjustments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_adjustments_id_seq OWNED BY public.spree_adjustments.id;


--
-- Name: spree_assets; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_assets (
    id integer NOT NULL,
    viewable_type character varying,
    viewable_id integer,
    attachment_width integer,
    attachment_height integer,
    attachment_file_size integer,
    "position" integer,
    attachment_content_type character varying,
    attachment_file_name character varying,
    type character varying(75),
    attachment_updated_at timestamp without time zone,
    alt text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.spree_assets OWNER TO pguser;

--
-- Name: spree_assets_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_assets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_assets_id_seq OWNER TO pguser;

--
-- Name: spree_assets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_assets_id_seq OWNED BY public.spree_assets.id;


--
-- Name: spree_calculators; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_calculators (
    id integer NOT NULL,
    type character varying,
    calculable_type character varying,
    calculable_id integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    preferences text,
    deleted_at timestamp without time zone
);


ALTER TABLE public.spree_calculators OWNER TO pguser;

--
-- Name: spree_calculators_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_calculators_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_calculators_id_seq OWNER TO pguser;

--
-- Name: spree_calculators_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_calculators_id_seq OWNED BY public.spree_calculators.id;


--
-- Name: spree_checks; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_checks (
    id bigint NOT NULL,
    payment_method_id bigint,
    user_id bigint,
    account_holder_name character varying,
    account_holder_type character varying,
    routing_number character varying,
    account_number character varying,
    account_type character varying DEFAULT 'checking'::character varying,
    status character varying,
    last_digits character varying,
    gateway_customer_profile_id character varying,
    gateway_payment_profile_id character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    deleted_at timestamp without time zone
);


ALTER TABLE public.spree_checks OWNER TO pguser;

--
-- Name: spree_checks_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_checks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_checks_id_seq OWNER TO pguser;

--
-- Name: spree_checks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_checks_id_seq OWNED BY public.spree_checks.id;


--
-- Name: spree_countries; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_countries (
    id integer NOT NULL,
    iso_name character varying,
    iso character varying NOT NULL,
    iso3 character varying NOT NULL,
    name character varying,
    numcode integer,
    states_required boolean DEFAULT false,
    updated_at timestamp without time zone,
    zipcode_required boolean DEFAULT true
);


ALTER TABLE public.spree_countries OWNER TO pguser;

--
-- Name: spree_countries_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_countries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_countries_id_seq OWNER TO pguser;

--
-- Name: spree_countries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_countries_id_seq OWNED BY public.spree_countries.id;


--
-- Name: spree_credit_cards; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_credit_cards (
    id integer NOT NULL,
    month character varying,
    year character varying,
    cc_type character varying,
    last_digits character varying,
    address_id integer,
    gateway_customer_profile_id character varying,
    gateway_payment_profile_id character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    name character varying,
    user_id integer,
    payment_method_id integer,
    "default" boolean DEFAULT false NOT NULL,
    deleted_at timestamp without time zone
);


ALTER TABLE public.spree_credit_cards OWNER TO pguser;

--
-- Name: spree_credit_cards_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_credit_cards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_credit_cards_id_seq OWNER TO pguser;

--
-- Name: spree_credit_cards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_credit_cards_id_seq OWNED BY public.spree_credit_cards.id;


--
-- Name: spree_customer_returns; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_customer_returns (
    id integer NOT NULL,
    number character varying,
    stock_location_id integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.spree_customer_returns OWNER TO pguser;

--
-- Name: spree_customer_returns_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_customer_returns_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_customer_returns_id_seq OWNER TO pguser;

--
-- Name: spree_customer_returns_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_customer_returns_id_seq OWNED BY public.spree_customer_returns.id;


--
-- Name: spree_gateways; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_gateways (
    id integer NOT NULL,
    type character varying,
    name character varying,
    description text,
    active boolean DEFAULT true,
    environment character varying DEFAULT 'development'::character varying,
    server character varying DEFAULT 'test'::character varying,
    test_mode boolean DEFAULT true,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    preferences text
);


ALTER TABLE public.spree_gateways OWNER TO pguser;

--
-- Name: spree_gateways_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_gateways_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_gateways_id_seq OWNER TO pguser;

--
-- Name: spree_gateways_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_gateways_id_seq OWNED BY public.spree_gateways.id;


--
-- Name: spree_inventory_units; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_inventory_units (
    id integer NOT NULL,
    state character varying,
    variant_id integer,
    order_id integer,
    shipment_id integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    pending boolean DEFAULT true,
    line_item_id integer,
    quantity integer DEFAULT 1,
    original_return_item_id integer
);


ALTER TABLE public.spree_inventory_units OWNER TO pguser;

--
-- Name: spree_inventory_units_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_inventory_units_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_inventory_units_id_seq OWNER TO pguser;

--
-- Name: spree_inventory_units_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_inventory_units_id_seq OWNED BY public.spree_inventory_units.id;


--
-- Name: spree_line_items; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_line_items (
    id integer NOT NULL,
    variant_id integer,
    order_id integer,
    quantity integer NOT NULL,
    price numeric(10,2) NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    currency character varying,
    cost_price numeric(10,2),
    tax_category_id integer,
    adjustment_total numeric(10,2) DEFAULT 0.0,
    additional_tax_total numeric(10,2) DEFAULT 0.0,
    promo_total numeric(10,2) DEFAULT 0.0,
    included_tax_total numeric(10,2) DEFAULT 0.0 NOT NULL,
    pre_tax_amount numeric(12,4) DEFAULT 0.0 NOT NULL,
    taxable_adjustment_total numeric(10,2) DEFAULT 0.0 NOT NULL,
    non_taxable_adjustment_total numeric(10,2) DEFAULT 0.0 NOT NULL
);


ALTER TABLE public.spree_line_items OWNER TO pguser;

--
-- Name: spree_line_items_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_line_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_line_items_id_seq OWNER TO pguser;

--
-- Name: spree_line_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_line_items_id_seq OWNED BY public.spree_line_items.id;


--
-- Name: spree_log_entries; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_log_entries (
    id integer NOT NULL,
    source_type character varying,
    source_id integer,
    details text,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.spree_log_entries OWNER TO pguser;

--
-- Name: spree_log_entries_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_log_entries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_log_entries_id_seq OWNER TO pguser;

--
-- Name: spree_log_entries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_log_entries_id_seq OWNED BY public.spree_log_entries.id;


--
-- Name: spree_oauth_access_grants; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_oauth_access_grants (
    id bigint NOT NULL,
    resource_owner_id integer NOT NULL,
    application_id bigint NOT NULL,
    token character varying NOT NULL,
    expires_in integer NOT NULL,
    redirect_uri text NOT NULL,
    created_at timestamp without time zone NOT NULL,
    revoked_at timestamp without time zone,
    scopes character varying
);


ALTER TABLE public.spree_oauth_access_grants OWNER TO pguser;

--
-- Name: spree_oauth_access_grants_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_oauth_access_grants_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_oauth_access_grants_id_seq OWNER TO pguser;

--
-- Name: spree_oauth_access_grants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_oauth_access_grants_id_seq OWNED BY public.spree_oauth_access_grants.id;


--
-- Name: spree_oauth_access_tokens; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_oauth_access_tokens (
    id bigint NOT NULL,
    resource_owner_id integer,
    application_id bigint,
    token character varying NOT NULL,
    refresh_token character varying,
    expires_in integer,
    revoked_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    scopes character varying,
    previous_refresh_token character varying DEFAULT ''::character varying NOT NULL
);


ALTER TABLE public.spree_oauth_access_tokens OWNER TO pguser;

--
-- Name: spree_oauth_access_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_oauth_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_oauth_access_tokens_id_seq OWNER TO pguser;

--
-- Name: spree_oauth_access_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_oauth_access_tokens_id_seq OWNED BY public.spree_oauth_access_tokens.id;


--
-- Name: spree_oauth_applications; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_oauth_applications (
    id bigint NOT NULL,
    name character varying NOT NULL,
    uid character varying NOT NULL,
    secret character varying NOT NULL,
    redirect_uri text NOT NULL,
    scopes character varying DEFAULT ''::character varying NOT NULL,
    confidential boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.spree_oauth_applications OWNER TO pguser;

--
-- Name: spree_oauth_applications_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_oauth_applications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_oauth_applications_id_seq OWNER TO pguser;

--
-- Name: spree_oauth_applications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_oauth_applications_id_seq OWNED BY public.spree_oauth_applications.id;


--
-- Name: spree_option_type_prototypes; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_option_type_prototypes (
    prototype_id integer,
    option_type_id integer,
    id integer NOT NULL
);


ALTER TABLE public.spree_option_type_prototypes OWNER TO pguser;

--
-- Name: spree_option_type_prototypes_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_option_type_prototypes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_option_type_prototypes_id_seq OWNER TO pguser;

--
-- Name: spree_option_type_prototypes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_option_type_prototypes_id_seq OWNED BY public.spree_option_type_prototypes.id;


--
-- Name: spree_option_types; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_option_types (
    id integer NOT NULL,
    name character varying(100),
    presentation character varying(100),
    "position" integer DEFAULT 0 NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.spree_option_types OWNER TO pguser;

--
-- Name: spree_option_types_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_option_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_option_types_id_seq OWNER TO pguser;

--
-- Name: spree_option_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_option_types_id_seq OWNED BY public.spree_option_types.id;


--
-- Name: spree_option_value_variants; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_option_value_variants (
    variant_id integer,
    option_value_id integer,
    id integer NOT NULL
);


ALTER TABLE public.spree_option_value_variants OWNER TO pguser;

--
-- Name: spree_option_value_variants_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_option_value_variants_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_option_value_variants_id_seq OWNER TO pguser;

--
-- Name: spree_option_value_variants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_option_value_variants_id_seq OWNED BY public.spree_option_value_variants.id;


--
-- Name: spree_option_values; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_option_values (
    id integer NOT NULL,
    "position" integer,
    name character varying,
    presentation character varying,
    option_type_id integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.spree_option_values OWNER TO pguser;

--
-- Name: spree_option_values_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_option_values_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_option_values_id_seq OWNER TO pguser;

--
-- Name: spree_option_values_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_option_values_id_seq OWNED BY public.spree_option_values.id;


--
-- Name: spree_order_promotions; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_order_promotions (
    order_id integer,
    promotion_id integer,
    id integer NOT NULL
);


ALTER TABLE public.spree_order_promotions OWNER TO pguser;

--
-- Name: spree_order_promotions_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_order_promotions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_order_promotions_id_seq OWNER TO pguser;

--
-- Name: spree_order_promotions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_order_promotions_id_seq OWNED BY public.spree_order_promotions.id;


--
-- Name: spree_orders; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_orders (
    id integer NOT NULL,
    number character varying(32),
    item_total numeric(10,2) DEFAULT 0.0 NOT NULL,
    total numeric(10,2) DEFAULT 0.0 NOT NULL,
    state character varying,
    adjustment_total numeric(10,2) DEFAULT 0.0 NOT NULL,
    user_id integer,
    completed_at timestamp without time zone,
    bill_address_id integer,
    ship_address_id integer,
    payment_total numeric(10,2) DEFAULT 0.0,
    shipment_state character varying,
    payment_state character varying,
    email character varying,
    special_instructions text,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    currency character varying,
    last_ip_address character varying,
    created_by_id integer,
    shipment_total numeric(10,2) DEFAULT 0.0 NOT NULL,
    additional_tax_total numeric(10,2) DEFAULT 0.0,
    promo_total numeric(10,2) DEFAULT 0.0,
    channel character varying DEFAULT 'spree'::character varying,
    included_tax_total numeric(10,2) DEFAULT 0.0 NOT NULL,
    item_count integer DEFAULT 0,
    approver_id integer,
    approved_at timestamp without time zone,
    confirmation_delivered boolean DEFAULT false,
    considered_risky boolean DEFAULT false,
    token character varying,
    canceled_at timestamp without time zone,
    canceler_id integer,
    store_id integer,
    state_lock_version integer DEFAULT 0 NOT NULL,
    taxable_adjustment_total numeric(10,2) DEFAULT 0.0 NOT NULL,
    non_taxable_adjustment_total numeric(10,2) DEFAULT 0.0 NOT NULL
);


ALTER TABLE public.spree_orders OWNER TO pguser;

--
-- Name: spree_orders_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_orders_id_seq OWNER TO pguser;

--
-- Name: spree_orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_orders_id_seq OWNED BY public.spree_orders.id;


--
-- Name: spree_payment_capture_events; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_payment_capture_events (
    id integer NOT NULL,
    amount numeric(10,2) DEFAULT 0.0,
    payment_id integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.spree_payment_capture_events OWNER TO pguser;

--
-- Name: spree_payment_capture_events_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_payment_capture_events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_payment_capture_events_id_seq OWNER TO pguser;

--
-- Name: spree_payment_capture_events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_payment_capture_events_id_seq OWNED BY public.spree_payment_capture_events.id;


--
-- Name: spree_payment_methods; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_payment_methods (
    id integer NOT NULL,
    type character varying,
    name character varying,
    description text,
    active boolean DEFAULT true,
    deleted_at timestamp without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    display_on character varying DEFAULT 'both'::character varying,
    auto_capture boolean,
    preferences text,
    "position" integer DEFAULT 0,
    store_id bigint
);


ALTER TABLE public.spree_payment_methods OWNER TO pguser;

--
-- Name: spree_payment_methods_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_payment_methods_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_payment_methods_id_seq OWNER TO pguser;

--
-- Name: spree_payment_methods_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_payment_methods_id_seq OWNED BY public.spree_payment_methods.id;


--
-- Name: spree_payments; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_payments (
    id integer NOT NULL,
    amount numeric(10,2) DEFAULT 0.0 NOT NULL,
    order_id integer,
    source_type character varying,
    source_id integer,
    payment_method_id integer,
    state character varying,
    response_code character varying,
    avs_response character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    number character varying,
    cvv_response_code character varying,
    cvv_response_message character varying,
    intent_client_key character varying
);


ALTER TABLE public.spree_payments OWNER TO pguser;

--
-- Name: spree_payments_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_payments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_payments_id_seq OWNER TO pguser;

--
-- Name: spree_payments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_payments_id_seq OWNED BY public.spree_payments.id;


--
-- Name: spree_preferences; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_preferences (
    id integer NOT NULL,
    value text,
    key character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.spree_preferences OWNER TO pguser;

--
-- Name: spree_preferences_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_preferences_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_preferences_id_seq OWNER TO pguser;

--
-- Name: spree_preferences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_preferences_id_seq OWNED BY public.spree_preferences.id;


--
-- Name: spree_prices; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_prices (
    id integer NOT NULL,
    variant_id integer NOT NULL,
    amount numeric(10,2),
    currency character varying,
    deleted_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.spree_prices OWNER TO pguser;

--
-- Name: spree_prices_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_prices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_prices_id_seq OWNER TO pguser;

--
-- Name: spree_prices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_prices_id_seq OWNED BY public.spree_prices.id;


--
-- Name: spree_product_option_types; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_product_option_types (
    id integer NOT NULL,
    "position" integer,
    product_id integer,
    option_type_id integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.spree_product_option_types OWNER TO pguser;

--
-- Name: spree_product_option_types_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_product_option_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_product_option_types_id_seq OWNER TO pguser;

--
-- Name: spree_product_option_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_product_option_types_id_seq OWNED BY public.spree_product_option_types.id;


--
-- Name: spree_product_promotion_rules; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_product_promotion_rules (
    product_id integer,
    promotion_rule_id integer,
    id integer NOT NULL
);


ALTER TABLE public.spree_product_promotion_rules OWNER TO pguser;

--
-- Name: spree_product_promotion_rules_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_product_promotion_rules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_product_promotion_rules_id_seq OWNER TO pguser;

--
-- Name: spree_product_promotion_rules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_product_promotion_rules_id_seq OWNED BY public.spree_product_promotion_rules.id;


--
-- Name: spree_product_properties; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_product_properties (
    id integer NOT NULL,
    value character varying,
    product_id integer,
    property_id integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    "position" integer DEFAULT 0
);


ALTER TABLE public.spree_product_properties OWNER TO pguser;

--
-- Name: spree_product_properties_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_product_properties_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_product_properties_id_seq OWNER TO pguser;

--
-- Name: spree_product_properties_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_product_properties_id_seq OWNED BY public.spree_product_properties.id;


--
-- Name: spree_products; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_products (
    id integer NOT NULL,
    name character varying DEFAULT ''::character varying NOT NULL,
    description text,
    available_on timestamp without time zone,
    deleted_at timestamp without time zone,
    slug character varying,
    meta_description text,
    meta_keywords character varying,
    tax_category_id integer,
    shipping_category_id integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    promotionable boolean DEFAULT true,
    meta_title character varying,
    discontinue_on timestamp without time zone
);


ALTER TABLE public.spree_products OWNER TO pguser;

--
-- Name: spree_products_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_products_id_seq OWNER TO pguser;

--
-- Name: spree_products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_products_id_seq OWNED BY public.spree_products.id;


--
-- Name: spree_products_taxons; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_products_taxons (
    product_id integer,
    taxon_id integer,
    id integer NOT NULL,
    "position" integer
);


ALTER TABLE public.spree_products_taxons OWNER TO pguser;

--
-- Name: spree_products_taxons_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_products_taxons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_products_taxons_id_seq OWNER TO pguser;

--
-- Name: spree_products_taxons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_products_taxons_id_seq OWNED BY public.spree_products_taxons.id;


--
-- Name: spree_promotion_action_line_items; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_promotion_action_line_items (
    id integer NOT NULL,
    promotion_action_id integer,
    variant_id integer,
    quantity integer DEFAULT 1
);


ALTER TABLE public.spree_promotion_action_line_items OWNER TO pguser;

--
-- Name: spree_promotion_action_line_items_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_promotion_action_line_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_promotion_action_line_items_id_seq OWNER TO pguser;

--
-- Name: spree_promotion_action_line_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_promotion_action_line_items_id_seq OWNED BY public.spree_promotion_action_line_items.id;


--
-- Name: spree_promotion_actions; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_promotion_actions (
    id integer NOT NULL,
    promotion_id integer,
    "position" integer,
    type character varying,
    deleted_at timestamp without time zone
);


ALTER TABLE public.spree_promotion_actions OWNER TO pguser;

--
-- Name: spree_promotion_actions_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_promotion_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_promotion_actions_id_seq OWNER TO pguser;

--
-- Name: spree_promotion_actions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_promotion_actions_id_seq OWNED BY public.spree_promotion_actions.id;


--
-- Name: spree_promotion_categories; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_promotion_categories (
    id integer NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    code character varying
);


ALTER TABLE public.spree_promotion_categories OWNER TO pguser;

--
-- Name: spree_promotion_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_promotion_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_promotion_categories_id_seq OWNER TO pguser;

--
-- Name: spree_promotion_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_promotion_categories_id_seq OWNED BY public.spree_promotion_categories.id;


--
-- Name: spree_promotion_rule_taxons; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_promotion_rule_taxons (
    id integer NOT NULL,
    taxon_id integer,
    promotion_rule_id integer
);


ALTER TABLE public.spree_promotion_rule_taxons OWNER TO pguser;

--
-- Name: spree_promotion_rule_taxons_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_promotion_rule_taxons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_promotion_rule_taxons_id_seq OWNER TO pguser;

--
-- Name: spree_promotion_rule_taxons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_promotion_rule_taxons_id_seq OWNED BY public.spree_promotion_rule_taxons.id;


--
-- Name: spree_promotion_rule_users; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_promotion_rule_users (
    user_id integer,
    promotion_rule_id integer,
    id integer NOT NULL
);


ALTER TABLE public.spree_promotion_rule_users OWNER TO pguser;

--
-- Name: spree_promotion_rule_users_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_promotion_rule_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_promotion_rule_users_id_seq OWNER TO pguser;

--
-- Name: spree_promotion_rule_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_promotion_rule_users_id_seq OWNED BY public.spree_promotion_rule_users.id;


--
-- Name: spree_promotion_rules; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_promotion_rules (
    id integer NOT NULL,
    promotion_id integer,
    user_id integer,
    product_group_id integer,
    type character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    code character varying,
    preferences text
);


ALTER TABLE public.spree_promotion_rules OWNER TO pguser;

--
-- Name: spree_promotion_rules_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_promotion_rules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_promotion_rules_id_seq OWNER TO pguser;

--
-- Name: spree_promotion_rules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_promotion_rules_id_seq OWNED BY public.spree_promotion_rules.id;


--
-- Name: spree_promotions; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_promotions (
    id integer NOT NULL,
    description character varying,
    expires_at timestamp without time zone,
    starts_at timestamp without time zone,
    name character varying,
    type character varying,
    usage_limit integer,
    match_policy character varying DEFAULT 'all'::character varying,
    code character varying,
    advertise boolean DEFAULT false,
    path character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    promotion_category_id integer
);


ALTER TABLE public.spree_promotions OWNER TO pguser;

--
-- Name: spree_promotions_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_promotions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_promotions_id_seq OWNER TO pguser;

--
-- Name: spree_promotions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_promotions_id_seq OWNED BY public.spree_promotions.id;


--
-- Name: spree_properties; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_properties (
    id integer NOT NULL,
    name character varying,
    presentation character varying NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.spree_properties OWNER TO pguser;

--
-- Name: spree_properties_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_properties_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_properties_id_seq OWNER TO pguser;

--
-- Name: spree_properties_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_properties_id_seq OWNED BY public.spree_properties.id;


--
-- Name: spree_property_prototypes; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_property_prototypes (
    prototype_id integer,
    property_id integer,
    id integer NOT NULL
);


ALTER TABLE public.spree_property_prototypes OWNER TO pguser;

--
-- Name: spree_property_prototypes_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_property_prototypes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_property_prototypes_id_seq OWNER TO pguser;

--
-- Name: spree_property_prototypes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_property_prototypes_id_seq OWNED BY public.spree_property_prototypes.id;


--
-- Name: spree_prototype_taxons; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_prototype_taxons (
    id integer NOT NULL,
    taxon_id integer,
    prototype_id integer
);


ALTER TABLE public.spree_prototype_taxons OWNER TO pguser;

--
-- Name: spree_prototype_taxons_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_prototype_taxons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_prototype_taxons_id_seq OWNER TO pguser;

--
-- Name: spree_prototype_taxons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_prototype_taxons_id_seq OWNED BY public.spree_prototype_taxons.id;


--
-- Name: spree_prototypes; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_prototypes (
    id integer NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.spree_prototypes OWNER TO pguser;

--
-- Name: spree_prototypes_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_prototypes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_prototypes_id_seq OWNER TO pguser;

--
-- Name: spree_prototypes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_prototypes_id_seq OWNED BY public.spree_prototypes.id;


--
-- Name: spree_refund_reasons; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_refund_reasons (
    id integer NOT NULL,
    name character varying,
    active boolean DEFAULT true,
    mutable boolean DEFAULT true,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.spree_refund_reasons OWNER TO pguser;

--
-- Name: spree_refund_reasons_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_refund_reasons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_refund_reasons_id_seq OWNER TO pguser;

--
-- Name: spree_refund_reasons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_refund_reasons_id_seq OWNED BY public.spree_refund_reasons.id;


--
-- Name: spree_refunds; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_refunds (
    id integer NOT NULL,
    payment_id integer,
    amount numeric(10,2) DEFAULT 0.0 NOT NULL,
    transaction_id character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    refund_reason_id integer,
    reimbursement_id integer
);


ALTER TABLE public.spree_refunds OWNER TO pguser;

--
-- Name: spree_refunds_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_refunds_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_refunds_id_seq OWNER TO pguser;

--
-- Name: spree_refunds_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_refunds_id_seq OWNED BY public.spree_refunds.id;


--
-- Name: spree_reimbursement_credits; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_reimbursement_credits (
    id integer NOT NULL,
    amount numeric(10,2) DEFAULT 0.0 NOT NULL,
    reimbursement_id integer,
    creditable_id integer,
    creditable_type character varying
);


ALTER TABLE public.spree_reimbursement_credits OWNER TO pguser;

--
-- Name: spree_reimbursement_credits_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_reimbursement_credits_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_reimbursement_credits_id_seq OWNER TO pguser;

--
-- Name: spree_reimbursement_credits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_reimbursement_credits_id_seq OWNED BY public.spree_reimbursement_credits.id;


--
-- Name: spree_reimbursement_types; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_reimbursement_types (
    id integer NOT NULL,
    name character varying,
    active boolean DEFAULT true,
    mutable boolean DEFAULT true,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    type character varying
);


ALTER TABLE public.spree_reimbursement_types OWNER TO pguser;

--
-- Name: spree_reimbursement_types_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_reimbursement_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_reimbursement_types_id_seq OWNER TO pguser;

--
-- Name: spree_reimbursement_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_reimbursement_types_id_seq OWNED BY public.spree_reimbursement_types.id;


--
-- Name: spree_reimbursements; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_reimbursements (
    id integer NOT NULL,
    number character varying,
    reimbursement_status character varying,
    customer_return_id integer,
    order_id integer,
    total numeric(10,2),
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.spree_reimbursements OWNER TO pguser;

--
-- Name: spree_reimbursements_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_reimbursements_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_reimbursements_id_seq OWNER TO pguser;

--
-- Name: spree_reimbursements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_reimbursements_id_seq OWNED BY public.spree_reimbursements.id;


--
-- Name: spree_return_authorization_reasons; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_return_authorization_reasons (
    id integer NOT NULL,
    name character varying,
    active boolean DEFAULT true,
    mutable boolean DEFAULT true,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.spree_return_authorization_reasons OWNER TO pguser;

--
-- Name: spree_return_authorization_reasons_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_return_authorization_reasons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_return_authorization_reasons_id_seq OWNER TO pguser;

--
-- Name: spree_return_authorization_reasons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_return_authorization_reasons_id_seq OWNED BY public.spree_return_authorization_reasons.id;


--
-- Name: spree_return_authorizations; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_return_authorizations (
    id integer NOT NULL,
    number character varying,
    state character varying,
    order_id integer,
    memo text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    stock_location_id integer,
    return_authorization_reason_id integer
);


ALTER TABLE public.spree_return_authorizations OWNER TO pguser;

--
-- Name: spree_return_authorizations_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_return_authorizations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_return_authorizations_id_seq OWNER TO pguser;

--
-- Name: spree_return_authorizations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_return_authorizations_id_seq OWNED BY public.spree_return_authorizations.id;


--
-- Name: spree_return_items; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_return_items (
    id integer NOT NULL,
    return_authorization_id integer,
    inventory_unit_id integer,
    exchange_variant_id integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    pre_tax_amount numeric(12,4) DEFAULT 0.0 NOT NULL,
    included_tax_total numeric(12,4) DEFAULT 0.0 NOT NULL,
    additional_tax_total numeric(12,4) DEFAULT 0.0 NOT NULL,
    reception_status character varying,
    acceptance_status character varying,
    customer_return_id integer,
    reimbursement_id integer,
    acceptance_status_errors text,
    preferred_reimbursement_type_id integer,
    override_reimbursement_type_id integer,
    resellable boolean DEFAULT true NOT NULL
);


ALTER TABLE public.spree_return_items OWNER TO pguser;

--
-- Name: spree_return_items_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_return_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_return_items_id_seq OWNER TO pguser;

--
-- Name: spree_return_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_return_items_id_seq OWNED BY public.spree_return_items.id;


--
-- Name: spree_role_users; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_role_users (
    role_id integer,
    user_id integer,
    id integer NOT NULL
);


ALTER TABLE public.spree_role_users OWNER TO pguser;

--
-- Name: spree_role_users_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_role_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_role_users_id_seq OWNER TO pguser;

--
-- Name: spree_role_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_role_users_id_seq OWNED BY public.spree_role_users.id;


--
-- Name: spree_roles; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_roles (
    id integer NOT NULL,
    name character varying
);


ALTER TABLE public.spree_roles OWNER TO pguser;

--
-- Name: spree_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_roles_id_seq OWNER TO pguser;

--
-- Name: spree_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_roles_id_seq OWNED BY public.spree_roles.id;


--
-- Name: spree_shipments; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_shipments (
    id integer NOT NULL,
    tracking character varying,
    number character varying,
    cost numeric(10,2) DEFAULT 0.0,
    shipped_at timestamp without time zone,
    order_id integer,
    address_id integer,
    state character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    stock_location_id integer,
    adjustment_total numeric(10,2) DEFAULT 0.0,
    additional_tax_total numeric(10,2) DEFAULT 0.0,
    promo_total numeric(10,2) DEFAULT 0.0,
    included_tax_total numeric(10,2) DEFAULT 0.0 NOT NULL,
    pre_tax_amount numeric(12,4) DEFAULT 0.0 NOT NULL,
    taxable_adjustment_total numeric(10,2) DEFAULT 0.0 NOT NULL,
    non_taxable_adjustment_total numeric(10,2) DEFAULT 0.0 NOT NULL
);


ALTER TABLE public.spree_shipments OWNER TO pguser;

--
-- Name: spree_shipments_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_shipments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_shipments_id_seq OWNER TO pguser;

--
-- Name: spree_shipments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_shipments_id_seq OWNED BY public.spree_shipments.id;


--
-- Name: spree_shipping_categories; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_shipping_categories (
    id integer NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.spree_shipping_categories OWNER TO pguser;

--
-- Name: spree_shipping_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_shipping_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_shipping_categories_id_seq OWNER TO pguser;

--
-- Name: spree_shipping_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_shipping_categories_id_seq OWNED BY public.spree_shipping_categories.id;


--
-- Name: spree_shipping_method_categories; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_shipping_method_categories (
    id integer NOT NULL,
    shipping_method_id integer NOT NULL,
    shipping_category_id integer NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.spree_shipping_method_categories OWNER TO pguser;

--
-- Name: spree_shipping_method_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_shipping_method_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_shipping_method_categories_id_seq OWNER TO pguser;

--
-- Name: spree_shipping_method_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_shipping_method_categories_id_seq OWNED BY public.spree_shipping_method_categories.id;


--
-- Name: spree_shipping_method_zones; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_shipping_method_zones (
    shipping_method_id integer,
    zone_id integer,
    id integer NOT NULL
);


ALTER TABLE public.spree_shipping_method_zones OWNER TO pguser;

--
-- Name: spree_shipping_method_zones_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_shipping_method_zones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_shipping_method_zones_id_seq OWNER TO pguser;

--
-- Name: spree_shipping_method_zones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_shipping_method_zones_id_seq OWNED BY public.spree_shipping_method_zones.id;


--
-- Name: spree_shipping_methods; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_shipping_methods (
    id integer NOT NULL,
    name character varying,
    display_on character varying,
    deleted_at timestamp without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    tracking_url character varying,
    admin_name character varying,
    tax_category_id integer,
    code character varying
);


ALTER TABLE public.spree_shipping_methods OWNER TO pguser;

--
-- Name: spree_shipping_methods_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_shipping_methods_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_shipping_methods_id_seq OWNER TO pguser;

--
-- Name: spree_shipping_methods_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_shipping_methods_id_seq OWNED BY public.spree_shipping_methods.id;


--
-- Name: spree_shipping_rates; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_shipping_rates (
    id integer NOT NULL,
    shipment_id integer,
    shipping_method_id integer,
    selected boolean DEFAULT false,
    cost numeric(8,2) DEFAULT 0.0,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    tax_rate_id integer
);


ALTER TABLE public.spree_shipping_rates OWNER TO pguser;

--
-- Name: spree_shipping_rates_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_shipping_rates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_shipping_rates_id_seq OWNER TO pguser;

--
-- Name: spree_shipping_rates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_shipping_rates_id_seq OWNED BY public.spree_shipping_rates.id;


--
-- Name: spree_state_changes; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_state_changes (
    id integer NOT NULL,
    name character varying,
    previous_state character varying,
    stateful_id integer,
    user_id integer,
    stateful_type character varying,
    next_state character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.spree_state_changes OWNER TO pguser;

--
-- Name: spree_state_changes_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_state_changes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_state_changes_id_seq OWNER TO pguser;

--
-- Name: spree_state_changes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_state_changes_id_seq OWNED BY public.spree_state_changes.id;


--
-- Name: spree_states; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_states (
    id integer NOT NULL,
    name character varying,
    abbr character varying,
    country_id integer,
    updated_at timestamp without time zone
);


ALTER TABLE public.spree_states OWNER TO pguser;

--
-- Name: spree_states_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_states_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_states_id_seq OWNER TO pguser;

--
-- Name: spree_states_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_states_id_seq OWNED BY public.spree_states.id;


--
-- Name: spree_stock_items; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_stock_items (
    id integer NOT NULL,
    stock_location_id integer,
    variant_id integer,
    count_on_hand integer DEFAULT 0 NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    backorderable boolean DEFAULT false,
    deleted_at timestamp without time zone
);


ALTER TABLE public.spree_stock_items OWNER TO pguser;

--
-- Name: spree_stock_items_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_stock_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_stock_items_id_seq OWNER TO pguser;

--
-- Name: spree_stock_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_stock_items_id_seq OWNED BY public.spree_stock_items.id;


--
-- Name: spree_stock_locations; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_stock_locations (
    id integer NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    "default" boolean DEFAULT false NOT NULL,
    address1 character varying,
    address2 character varying,
    city character varying,
    state_id integer,
    state_name character varying,
    country_id integer,
    zipcode character varying,
    phone character varying,
    active boolean DEFAULT true,
    backorderable_default boolean DEFAULT false,
    propagate_all_variants boolean DEFAULT true,
    admin_name character varying
);


ALTER TABLE public.spree_stock_locations OWNER TO pguser;

--
-- Name: spree_stock_locations_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_stock_locations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_stock_locations_id_seq OWNER TO pguser;

--
-- Name: spree_stock_locations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_stock_locations_id_seq OWNED BY public.spree_stock_locations.id;


--
-- Name: spree_stock_movements; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_stock_movements (
    id integer NOT NULL,
    stock_item_id integer,
    quantity integer DEFAULT 0,
    action character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    originator_type character varying,
    originator_id integer
);


ALTER TABLE public.spree_stock_movements OWNER TO pguser;

--
-- Name: spree_stock_movements_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_stock_movements_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_stock_movements_id_seq OWNER TO pguser;

--
-- Name: spree_stock_movements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_stock_movements_id_seq OWNED BY public.spree_stock_movements.id;


--
-- Name: spree_stock_transfers; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_stock_transfers (
    id integer NOT NULL,
    type character varying,
    reference character varying,
    source_location_id integer,
    destination_location_id integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    number character varying
);


ALTER TABLE public.spree_stock_transfers OWNER TO pguser;

--
-- Name: spree_stock_transfers_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_stock_transfers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_stock_transfers_id_seq OWNER TO pguser;

--
-- Name: spree_stock_transfers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_stock_transfers_id_seq OWNED BY public.spree_stock_transfers.id;


--
-- Name: spree_store_credit_categories; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_store_credit_categories (
    id integer NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.spree_store_credit_categories OWNER TO pguser;

--
-- Name: spree_store_credit_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_store_credit_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_store_credit_categories_id_seq OWNER TO pguser;

--
-- Name: spree_store_credit_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_store_credit_categories_id_seq OWNED BY public.spree_store_credit_categories.id;


--
-- Name: spree_store_credit_events; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_store_credit_events (
    id integer NOT NULL,
    store_credit_id integer NOT NULL,
    action character varying NOT NULL,
    amount numeric(8,2),
    authorization_code character varying NOT NULL,
    user_total_amount numeric(8,2) DEFAULT 0.0 NOT NULL,
    originator_id integer,
    originator_type character varying,
    deleted_at timestamp without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.spree_store_credit_events OWNER TO pguser;

--
-- Name: spree_store_credit_events_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_store_credit_events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_store_credit_events_id_seq OWNER TO pguser;

--
-- Name: spree_store_credit_events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_store_credit_events_id_seq OWNED BY public.spree_store_credit_events.id;


--
-- Name: spree_store_credit_types; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_store_credit_types (
    id integer NOT NULL,
    name character varying,
    priority integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.spree_store_credit_types OWNER TO pguser;

--
-- Name: spree_store_credit_types_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_store_credit_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_store_credit_types_id_seq OWNER TO pguser;

--
-- Name: spree_store_credit_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_store_credit_types_id_seq OWNED BY public.spree_store_credit_types.id;


--
-- Name: spree_store_credits; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_store_credits (
    id integer NOT NULL,
    user_id integer,
    category_id integer,
    created_by_id integer,
    amount numeric(8,2) DEFAULT 0.0 NOT NULL,
    amount_used numeric(8,2) DEFAULT 0.0 NOT NULL,
    memo text,
    deleted_at timestamp without time zone,
    currency character varying,
    amount_authorized numeric(8,2) DEFAULT 0.0 NOT NULL,
    originator_id integer,
    originator_type character varying,
    type_id integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.spree_store_credits OWNER TO pguser;

--
-- Name: spree_store_credits_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_store_credits_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_store_credits_id_seq OWNER TO pguser;

--
-- Name: spree_store_credits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_store_credits_id_seq OWNED BY public.spree_store_credits.id;


--
-- Name: spree_stores; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_stores (
    id integer NOT NULL,
    name character varying,
    url character varying,
    meta_description text,
    meta_keywords text,
    seo_title character varying,
    mail_from_address character varying,
    default_currency character varying,
    code character varying,
    "default" boolean DEFAULT false NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    facebook character varying,
    twitter character varying,
    instagram character varying
);


ALTER TABLE public.spree_stores OWNER TO pguser;

--
-- Name: spree_stores_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_stores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_stores_id_seq OWNER TO pguser;

--
-- Name: spree_stores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_stores_id_seq OWNED BY public.spree_stores.id;


--
-- Name: spree_tax_categories; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_tax_categories (
    id integer NOT NULL,
    name character varying,
    description character varying,
    is_default boolean DEFAULT false,
    deleted_at timestamp without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    tax_code character varying
);


ALTER TABLE public.spree_tax_categories OWNER TO pguser;

--
-- Name: spree_tax_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_tax_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_tax_categories_id_seq OWNER TO pguser;

--
-- Name: spree_tax_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_tax_categories_id_seq OWNED BY public.spree_tax_categories.id;


--
-- Name: spree_tax_rates; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_tax_rates (
    id integer NOT NULL,
    amount numeric(8,5),
    zone_id integer,
    tax_category_id integer,
    included_in_price boolean DEFAULT false,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    name character varying,
    show_rate_in_label boolean DEFAULT true,
    deleted_at timestamp without time zone
);


ALTER TABLE public.spree_tax_rates OWNER TO pguser;

--
-- Name: spree_tax_rates_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_tax_rates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_tax_rates_id_seq OWNER TO pguser;

--
-- Name: spree_tax_rates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_tax_rates_id_seq OWNED BY public.spree_tax_rates.id;


--
-- Name: spree_taxonomies; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_taxonomies (
    id integer NOT NULL,
    name character varying NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    "position" integer DEFAULT 0
);


ALTER TABLE public.spree_taxonomies OWNER TO pguser;

--
-- Name: spree_taxonomies_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_taxonomies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_taxonomies_id_seq OWNER TO pguser;

--
-- Name: spree_taxonomies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_taxonomies_id_seq OWNED BY public.spree_taxonomies.id;


--
-- Name: spree_taxons; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_taxons (
    id integer NOT NULL,
    parent_id integer,
    "position" integer DEFAULT 0,
    name character varying NOT NULL,
    permalink character varying,
    taxonomy_id integer,
    lft integer,
    rgt integer,
    description text,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    meta_title character varying,
    meta_description character varying,
    meta_keywords character varying,
    depth integer,
    hide_from_nav boolean DEFAULT false
);


ALTER TABLE public.spree_taxons OWNER TO pguser;

--
-- Name: spree_taxons_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_taxons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_taxons_id_seq OWNER TO pguser;

--
-- Name: spree_taxons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_taxons_id_seq OWNED BY public.spree_taxons.id;


--
-- Name: spree_trackers; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_trackers (
    id integer NOT NULL,
    analytics_id character varying,
    active boolean DEFAULT true,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    engine integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.spree_trackers OWNER TO pguser;

--
-- Name: spree_trackers_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_trackers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_trackers_id_seq OWNER TO pguser;

--
-- Name: spree_trackers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_trackers_id_seq OWNED BY public.spree_trackers.id;


--
-- Name: spree_users; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_users (
    id integer NOT NULL,
    encrypted_password character varying(128),
    password_salt character varying(128),
    email character varying,
    remember_token character varying,
    persistence_token character varying,
    reset_password_token character varying,
    perishable_token character varying,
    sign_in_count integer DEFAULT 0 NOT NULL,
    failed_attempts integer DEFAULT 0 NOT NULL,
    last_request_at timestamp without time zone,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying,
    last_sign_in_ip character varying,
    login character varying,
    ship_address_id integer,
    bill_address_id integer,
    authentication_token character varying,
    unlock_token character varying,
    locked_at timestamp without time zone,
    reset_password_sent_at timestamp without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    spree_api_key character varying(48),
    remember_created_at timestamp without time zone,
    deleted_at timestamp without time zone,
    confirmation_token character varying,
    confirmed_at timestamp without time zone,
    confirmation_sent_at timestamp without time zone
);


ALTER TABLE public.spree_users OWNER TO pguser;

--
-- Name: spree_users_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_users_id_seq OWNER TO pguser;

--
-- Name: spree_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_users_id_seq OWNED BY public.spree_users.id;


--
-- Name: spree_variants; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_variants (
    id integer NOT NULL,
    sku character varying DEFAULT ''::character varying NOT NULL,
    weight numeric(8,2) DEFAULT 0.0,
    height numeric(8,2),
    width numeric(8,2),
    depth numeric(8,2),
    deleted_at timestamp without time zone,
    is_master boolean DEFAULT false,
    product_id integer,
    cost_price numeric(10,2),
    "position" integer,
    cost_currency character varying,
    track_inventory boolean DEFAULT true,
    tax_category_id integer,
    updated_at timestamp without time zone NOT NULL,
    discontinue_on timestamp without time zone,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.spree_variants OWNER TO pguser;

--
-- Name: spree_variants_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_variants_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_variants_id_seq OWNER TO pguser;

--
-- Name: spree_variants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_variants_id_seq OWNED BY public.spree_variants.id;


--
-- Name: spree_zone_members; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_zone_members (
    id integer NOT NULL,
    zoneable_type character varying,
    zoneable_id integer,
    zone_id integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.spree_zone_members OWNER TO pguser;

--
-- Name: spree_zone_members_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_zone_members_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_zone_members_id_seq OWNER TO pguser;

--
-- Name: spree_zone_members_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_zone_members_id_seq OWNED BY public.spree_zone_members.id;


--
-- Name: spree_zones; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.spree_zones (
    id integer NOT NULL,
    name character varying,
    description character varying,
    default_tax boolean DEFAULT false,
    zone_members_count integer DEFAULT 0,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    kind character varying
);


ALTER TABLE public.spree_zones OWNER TO pguser;

--
-- Name: spree_zones_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.spree_zones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spree_zones_id_seq OWNER TO pguser;

--
-- Name: spree_zones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.spree_zones_id_seq OWNED BY public.spree_zones.id;


--
-- Name: action_mailbox_inbound_emails id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.action_mailbox_inbound_emails ALTER COLUMN id SET DEFAULT nextval('public.action_mailbox_inbound_emails_id_seq'::regclass);


--
-- Name: action_text_rich_texts id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.action_text_rich_texts ALTER COLUMN id SET DEFAULT nextval('public.action_text_rich_texts_id_seq'::regclass);


--
-- Name: active_storage_attachments id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);


--
-- Name: active_storage_blobs id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);


--
-- Name: friendly_id_slugs id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.friendly_id_slugs ALTER COLUMN id SET DEFAULT nextval('public.friendly_id_slugs_id_seq'::regclass);


--
-- Name: spree_addresses id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_addresses ALTER COLUMN id SET DEFAULT nextval('public.spree_addresses_id_seq'::regclass);


--
-- Name: spree_adjustments id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_adjustments ALTER COLUMN id SET DEFAULT nextval('public.spree_adjustments_id_seq'::regclass);


--
-- Name: spree_assets id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_assets ALTER COLUMN id SET DEFAULT nextval('public.spree_assets_id_seq'::regclass);


--
-- Name: spree_calculators id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_calculators ALTER COLUMN id SET DEFAULT nextval('public.spree_calculators_id_seq'::regclass);


--
-- Name: spree_checks id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_checks ALTER COLUMN id SET DEFAULT nextval('public.spree_checks_id_seq'::regclass);


--
-- Name: spree_countries id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_countries ALTER COLUMN id SET DEFAULT nextval('public.spree_countries_id_seq'::regclass);


--
-- Name: spree_credit_cards id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_credit_cards ALTER COLUMN id SET DEFAULT nextval('public.spree_credit_cards_id_seq'::regclass);


--
-- Name: spree_customer_returns id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_customer_returns ALTER COLUMN id SET DEFAULT nextval('public.spree_customer_returns_id_seq'::regclass);


--
-- Name: spree_gateways id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_gateways ALTER COLUMN id SET DEFAULT nextval('public.spree_gateways_id_seq'::regclass);


--
-- Name: spree_inventory_units id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_inventory_units ALTER COLUMN id SET DEFAULT nextval('public.spree_inventory_units_id_seq'::regclass);


--
-- Name: spree_line_items id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_line_items ALTER COLUMN id SET DEFAULT nextval('public.spree_line_items_id_seq'::regclass);


--
-- Name: spree_log_entries id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_log_entries ALTER COLUMN id SET DEFAULT nextval('public.spree_log_entries_id_seq'::regclass);


--
-- Name: spree_oauth_access_grants id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_oauth_access_grants ALTER COLUMN id SET DEFAULT nextval('public.spree_oauth_access_grants_id_seq'::regclass);


--
-- Name: spree_oauth_access_tokens id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_oauth_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.spree_oauth_access_tokens_id_seq'::regclass);


--
-- Name: spree_oauth_applications id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_oauth_applications ALTER COLUMN id SET DEFAULT nextval('public.spree_oauth_applications_id_seq'::regclass);


--
-- Name: spree_option_type_prototypes id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_option_type_prototypes ALTER COLUMN id SET DEFAULT nextval('public.spree_option_type_prototypes_id_seq'::regclass);


--
-- Name: spree_option_types id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_option_types ALTER COLUMN id SET DEFAULT nextval('public.spree_option_types_id_seq'::regclass);


--
-- Name: spree_option_value_variants id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_option_value_variants ALTER COLUMN id SET DEFAULT nextval('public.spree_option_value_variants_id_seq'::regclass);


--
-- Name: spree_option_values id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_option_values ALTER COLUMN id SET DEFAULT nextval('public.spree_option_values_id_seq'::regclass);


--
-- Name: spree_order_promotions id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_order_promotions ALTER COLUMN id SET DEFAULT nextval('public.spree_order_promotions_id_seq'::regclass);


--
-- Name: spree_orders id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_orders ALTER COLUMN id SET DEFAULT nextval('public.spree_orders_id_seq'::regclass);


--
-- Name: spree_payment_capture_events id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_payment_capture_events ALTER COLUMN id SET DEFAULT nextval('public.spree_payment_capture_events_id_seq'::regclass);


--
-- Name: spree_payment_methods id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_payment_methods ALTER COLUMN id SET DEFAULT nextval('public.spree_payment_methods_id_seq'::regclass);


--
-- Name: spree_payments id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_payments ALTER COLUMN id SET DEFAULT nextval('public.spree_payments_id_seq'::regclass);


--
-- Name: spree_preferences id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_preferences ALTER COLUMN id SET DEFAULT nextval('public.spree_preferences_id_seq'::regclass);


--
-- Name: spree_prices id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_prices ALTER COLUMN id SET DEFAULT nextval('public.spree_prices_id_seq'::regclass);


--
-- Name: spree_product_option_types id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_product_option_types ALTER COLUMN id SET DEFAULT nextval('public.spree_product_option_types_id_seq'::regclass);


--
-- Name: spree_product_promotion_rules id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_product_promotion_rules ALTER COLUMN id SET DEFAULT nextval('public.spree_product_promotion_rules_id_seq'::regclass);


--
-- Name: spree_product_properties id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_product_properties ALTER COLUMN id SET DEFAULT nextval('public.spree_product_properties_id_seq'::regclass);


--
-- Name: spree_products id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_products ALTER COLUMN id SET DEFAULT nextval('public.spree_products_id_seq'::regclass);


--
-- Name: spree_products_taxons id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_products_taxons ALTER COLUMN id SET DEFAULT nextval('public.spree_products_taxons_id_seq'::regclass);


--
-- Name: spree_promotion_action_line_items id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_promotion_action_line_items ALTER COLUMN id SET DEFAULT nextval('public.spree_promotion_action_line_items_id_seq'::regclass);


--
-- Name: spree_promotion_actions id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_promotion_actions ALTER COLUMN id SET DEFAULT nextval('public.spree_promotion_actions_id_seq'::regclass);


--
-- Name: spree_promotion_categories id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_promotion_categories ALTER COLUMN id SET DEFAULT nextval('public.spree_promotion_categories_id_seq'::regclass);


--
-- Name: spree_promotion_rule_taxons id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_promotion_rule_taxons ALTER COLUMN id SET DEFAULT nextval('public.spree_promotion_rule_taxons_id_seq'::regclass);


--
-- Name: spree_promotion_rule_users id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_promotion_rule_users ALTER COLUMN id SET DEFAULT nextval('public.spree_promotion_rule_users_id_seq'::regclass);


--
-- Name: spree_promotion_rules id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_promotion_rules ALTER COLUMN id SET DEFAULT nextval('public.spree_promotion_rules_id_seq'::regclass);


--
-- Name: spree_promotions id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_promotions ALTER COLUMN id SET DEFAULT nextval('public.spree_promotions_id_seq'::regclass);


--
-- Name: spree_properties id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_properties ALTER COLUMN id SET DEFAULT nextval('public.spree_properties_id_seq'::regclass);


--
-- Name: spree_property_prototypes id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_property_prototypes ALTER COLUMN id SET DEFAULT nextval('public.spree_property_prototypes_id_seq'::regclass);


--
-- Name: spree_prototype_taxons id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_prototype_taxons ALTER COLUMN id SET DEFAULT nextval('public.spree_prototype_taxons_id_seq'::regclass);


--
-- Name: spree_prototypes id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_prototypes ALTER COLUMN id SET DEFAULT nextval('public.spree_prototypes_id_seq'::regclass);


--
-- Name: spree_refund_reasons id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_refund_reasons ALTER COLUMN id SET DEFAULT nextval('public.spree_refund_reasons_id_seq'::regclass);


--
-- Name: spree_refunds id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_refunds ALTER COLUMN id SET DEFAULT nextval('public.spree_refunds_id_seq'::regclass);


--
-- Name: spree_reimbursement_credits id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_reimbursement_credits ALTER COLUMN id SET DEFAULT nextval('public.spree_reimbursement_credits_id_seq'::regclass);


--
-- Name: spree_reimbursement_types id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_reimbursement_types ALTER COLUMN id SET DEFAULT nextval('public.spree_reimbursement_types_id_seq'::regclass);


--
-- Name: spree_reimbursements id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_reimbursements ALTER COLUMN id SET DEFAULT nextval('public.spree_reimbursements_id_seq'::regclass);


--
-- Name: spree_return_authorization_reasons id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_return_authorization_reasons ALTER COLUMN id SET DEFAULT nextval('public.spree_return_authorization_reasons_id_seq'::regclass);


--
-- Name: spree_return_authorizations id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_return_authorizations ALTER COLUMN id SET DEFAULT nextval('public.spree_return_authorizations_id_seq'::regclass);


--
-- Name: spree_return_items id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_return_items ALTER COLUMN id SET DEFAULT nextval('public.spree_return_items_id_seq'::regclass);


--
-- Name: spree_role_users id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_role_users ALTER COLUMN id SET DEFAULT nextval('public.spree_role_users_id_seq'::regclass);


--
-- Name: spree_roles id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_roles ALTER COLUMN id SET DEFAULT nextval('public.spree_roles_id_seq'::regclass);


--
-- Name: spree_shipments id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_shipments ALTER COLUMN id SET DEFAULT nextval('public.spree_shipments_id_seq'::regclass);


--
-- Name: spree_shipping_categories id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_shipping_categories ALTER COLUMN id SET DEFAULT nextval('public.spree_shipping_categories_id_seq'::regclass);


--
-- Name: spree_shipping_method_categories id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_shipping_method_categories ALTER COLUMN id SET DEFAULT nextval('public.spree_shipping_method_categories_id_seq'::regclass);


--
-- Name: spree_shipping_method_zones id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_shipping_method_zones ALTER COLUMN id SET DEFAULT nextval('public.spree_shipping_method_zones_id_seq'::regclass);


--
-- Name: spree_shipping_methods id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_shipping_methods ALTER COLUMN id SET DEFAULT nextval('public.spree_shipping_methods_id_seq'::regclass);


--
-- Name: spree_shipping_rates id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_shipping_rates ALTER COLUMN id SET DEFAULT nextval('public.spree_shipping_rates_id_seq'::regclass);


--
-- Name: spree_state_changes id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_state_changes ALTER COLUMN id SET DEFAULT nextval('public.spree_state_changes_id_seq'::regclass);


--
-- Name: spree_states id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_states ALTER COLUMN id SET DEFAULT nextval('public.spree_states_id_seq'::regclass);


--
-- Name: spree_stock_items id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_stock_items ALTER COLUMN id SET DEFAULT nextval('public.spree_stock_items_id_seq'::regclass);


--
-- Name: spree_stock_locations id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_stock_locations ALTER COLUMN id SET DEFAULT nextval('public.spree_stock_locations_id_seq'::regclass);


--
-- Name: spree_stock_movements id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_stock_movements ALTER COLUMN id SET DEFAULT nextval('public.spree_stock_movements_id_seq'::regclass);


--
-- Name: spree_stock_transfers id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_stock_transfers ALTER COLUMN id SET DEFAULT nextval('public.spree_stock_transfers_id_seq'::regclass);


--
-- Name: spree_store_credit_categories id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_store_credit_categories ALTER COLUMN id SET DEFAULT nextval('public.spree_store_credit_categories_id_seq'::regclass);


--
-- Name: spree_store_credit_events id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_store_credit_events ALTER COLUMN id SET DEFAULT nextval('public.spree_store_credit_events_id_seq'::regclass);


--
-- Name: spree_store_credit_types id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_store_credit_types ALTER COLUMN id SET DEFAULT nextval('public.spree_store_credit_types_id_seq'::regclass);


--
-- Name: spree_store_credits id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_store_credits ALTER COLUMN id SET DEFAULT nextval('public.spree_store_credits_id_seq'::regclass);


--
-- Name: spree_stores id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_stores ALTER COLUMN id SET DEFAULT nextval('public.spree_stores_id_seq'::regclass);


--
-- Name: spree_tax_categories id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_tax_categories ALTER COLUMN id SET DEFAULT nextval('public.spree_tax_categories_id_seq'::regclass);


--
-- Name: spree_tax_rates id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_tax_rates ALTER COLUMN id SET DEFAULT nextval('public.spree_tax_rates_id_seq'::regclass);


--
-- Name: spree_taxonomies id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_taxonomies ALTER COLUMN id SET DEFAULT nextval('public.spree_taxonomies_id_seq'::regclass);


--
-- Name: spree_taxons id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_taxons ALTER COLUMN id SET DEFAULT nextval('public.spree_taxons_id_seq'::regclass);


--
-- Name: spree_trackers id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_trackers ALTER COLUMN id SET DEFAULT nextval('public.spree_trackers_id_seq'::regclass);


--
-- Name: spree_users id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_users ALTER COLUMN id SET DEFAULT nextval('public.spree_users_id_seq'::regclass);


--
-- Name: spree_variants id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_variants ALTER COLUMN id SET DEFAULT nextval('public.spree_variants_id_seq'::regclass);


--
-- Name: spree_zone_members id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_zone_members ALTER COLUMN id SET DEFAULT nextval('public.spree_zone_members_id_seq'::regclass);


--
-- Name: spree_zones id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_zones ALTER COLUMN id SET DEFAULT nextval('public.spree_zones_id_seq'::regclass);


--
-- Data for Name: action_mailbox_inbound_emails; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.action_mailbox_inbound_emails (id, status, message_id, message_checksum, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: action_text_rich_texts; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.action_text_rich_texts (id, name, body, record_type, record_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: active_storage_attachments; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
6	attachment	Spree::Asset	6	6	2021-01-14 20:22:42.173769
8	attachment	Spree::Asset	8	8	2021-01-17 22:57:24.995776
9	attachment	Spree::Asset	9	9	2021-01-17 23:09:12.26129
10	attachment	Spree::Asset	10	10	2021-01-17 23:09:53.426813
11	attachment	Spree::Asset	11	11	2021-01-17 23:17:47.13496
12	attachment	Spree::Asset	12	12	2021-01-17 23:18:05.981279
13	attachment	Spree::Asset	7	13	2021-01-17 23:19:53.942756
15	attachment	Spree::Asset	14	15	2021-01-18 22:00:49.862955
16	attachment	Spree::Asset	15	16	2021-01-18 22:05:13.693454
17	attachment	Spree::Asset	16	17	2021-01-18 22:07:03.913485
18	attachment	Spree::Asset	17	18	2021-01-18 22:07:47.484279
19	attachment	Spree::Asset	18	19	2021-01-18 22:08:31.485335
\.


--
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.active_storage_blobs (id, key, filename, content_type, metadata, byte_size, checksum, created_at) FROM stdin;
6	q0abzeqgkxx07lhbyc5sxo28jwf7	NF_hoodie_white.jpg	image/jpeg	{"identified":true,"analyzed":true}	72609	Ve1QsyIT3T95t/4i9UJJPw==	2021-01-14 20:22:42.171133
8	73wh8adrrk6vnw9hl0skchpojbpg	NM_pants_grey.jpg	image/jpeg	{"identified":true,"analyzed":true}	80887	O3J9SRFj+hlgGQWws0LE3w==	2021-01-17 22:57:24.990305
9	snwlcwydhxs0lelluz4pozo7jzyy	NG_dress_pink.jpg	image/jpeg	{"identified":true,"analyzed":true}	61368	YAc5hXpuSt4oaJAQIdeFwg==	2021-01-17 23:09:12.246011
10	sw74g5hvovu10711ic57zxe9hdxr	NG_dress_black.jpg	image/jpeg	{"identified":true,"analyzed":true}	52301	OKY5lbg0/718ODYUdNEI4g==	2021-01-17 23:09:53.411769
11	o6xzx38b0mx3ya2xsk9668drd2gj	NF_dress_pink.jpg	image/jpeg	{"identified":true,"analyzed":true}	87072	R2qvcv37h1dFbqDAODs1hw==	2021-01-17 23:17:47.118942
12	mapwsg0cubxgn5xpr0pj9j92uzy1	NF_dress_black_650x870.jpg	image/jpeg	{"identified":true,"analyzed":true}	56093	Ax1HjqeLAUb3OZCBOhmPZg==	2021-01-17 23:18:05.97814
13	3lmce1uzdmx7ab9hs9nik9a2tk7k	NM_pants_grey.jpg	image/jpeg	{"identified":true,"analyzed":true}	80887	O3J9SRFj+hlgGQWws0LE3w==	2021-01-17 23:19:53.93837
15	qlab8r60q1oy115vge61xpbyyp0i	NF_hoodie_red.jpg	image/jpeg	{"identified":true,"width":650,"height":870,"analyzed":true}	66295	nPjNSfDOvhZyPhkU9KsMew==	2021-01-18 22:00:49.859945
16	7y4lwyllmer6bfn1ocq0yrs4uwoh	NF_hoodie_red.jpg	image/jpeg	{"identified":true,"width":650,"height":870,"analyzed":true}	66295	nPjNSfDOvhZyPhkU9KsMew==	2021-01-18 22:05:13.689468
17	1z1jskbnm03ireqpjjoilvg6gijm	NM_pants_black.jpg	image/jpeg	{"identified":true,"width":650,"height":870,"analyzed":true}	65311	9sfXnrTJsK46CrGubpvgpg==	2021-01-18 22:07:03.910974
18	7adv10r38t07e1453ffwu70zw7fs	NF_dress_pink.jpg	image/jpeg	{"identified":true,"width":650,"height":870,"analyzed":true}	87072	R2qvcv37h1dFbqDAODs1hw==	2021-01-18 22:07:47.481582
19	edji77cogmb83zr2cfekyv1ffxcs	NG_dress_black.jpg	image/jpeg	{"identified":true,"width":650,"height":870,"analyzed":true}	52301	OKY5lbg0/718ODYUdNEI4g==	2021-01-18 22:08:31.48279
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2021-01-13 22:59:14.687699	2021-01-13 22:59:14.687699
\.


--
-- Data for Name: friendly_id_slugs; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.friendly_id_slugs (id, slug, sluggable_id, sluggable_type, scope, created_at, deleted_at) FROM stdin;
1	categories	1	Spree::Taxon	\N	2021-01-13 23:19:25.16457	\N
2	categories/men	2	Spree::Taxon	\N	2021-01-13 23:19:26.116524	\N
3	men	2	Spree::Taxon	\N	2021-01-13 23:19:26.167709	\N
4	categories/women	3	Spree::Taxon	\N	2021-01-13 23:19:26.264414	\N
5	women	3	Spree::Taxon	\N	2021-01-13 23:19:26.310855	\N
6	categories/sportswear	4	Spree::Taxon	\N	2021-01-13 23:19:26.670413	\N
7	sportswear	4	Spree::Taxon	\N	2021-01-13 23:19:26.726119	\N
38	checked-slim-fit-shirt	8	Spree::Product	\N	2021-01-13 23:19:29.901211	2021-01-17 20:01:10.555685
9	men/t-shirts	6	Spree::Taxon	\N	2021-01-13 23:19:26.891552	\N
10	men/sweaters	7	Spree::Taxon	\N	2021-01-13 23:19:26.978846	\N
11	men/jackets-and-coats	8	Spree::Taxon	\N	2021-01-13 23:19:27.056659	\N
12	women/skirts	9	Spree::Taxon	\N	2021-01-13 23:19:27.157298	\N
13	women/dresses	10	Spree::Taxon	\N	2021-01-13 23:19:27.274839	\N
93	cotton-shirt	63	Spree::Product	\N	2021-01-13 23:19:40.517138	2021-01-17 20:01:15.806554
15	women/sweaters	12	Spree::Taxon	\N	2021-01-13 23:19:27.451458	\N
16	women/tops-and-t-shirts	13	Spree::Taxon	\N	2021-01-13 23:19:27.533939	\N
17	women/jackets-and-coats	14	Spree::Taxon	\N	2021-01-13 23:19:27.617033	\N
18	sportswear/tops	15	Spree::Taxon	\N	2021-01-13 23:19:27.693294	\N
19	sportswear/sweatshirts	16	Spree::Taxon	\N	2021-01-13 23:19:27.769448	\N
20	sportswear/pants	17	Spree::Taxon	\N	2021-01-13 23:19:27.846796	\N
33	covered-placket-shirt	3	Spree::Product	\N	2021-01-13 23:19:29.003999	2021-01-17 20:01:22.766826
61	denim-jacket	31	Spree::Product	\N	2021-01-13 23:19:34.277045	2021-01-17 20:01:28.219036
23	categories/bestsellers	19	Spree::Taxon	\N	2021-01-13 23:19:28.009766	\N
24	bestsellers	19	Spree::Taxon	\N	2021-01-13 23:19:28.055037	\N
25	categories/trending	20	Spree::Taxon	\N	2021-01-13 23:19:28.087481	\N
26	trending	20	Spree::Taxon	\N	2021-01-13 23:19:28.1469	\N
31	denim-shirt	1	Spree::Product	\N	2021-01-13 23:19:28.635709	2021-01-17 20:01:30.069003
39	dotted-shirt	9	Spree::Product	\N	2021-01-13 23:19:30.085369	2021-01-17 20:01:32.93348
29	categories/summer-sale	22	Spree::Taxon	\N	2021-01-13 23:19:28.261366	\N
30	summer-sale	22	Spree::Taxon	\N	2021-01-13 23:19:28.307206	\N
65	jacket-with-liner	35	Spree::Product	\N	2021-01-13 23:19:35.08085	2021-01-17 20:01:35.486437
84	dress-with-belt	54	Spree::Product	\N	2021-01-13 23:19:38.778256	2021-01-17 20:01:43.203294
98	v-neck-shirt	68	Spree::Product	\N	2021-01-13 23:19:41.449764	2021-01-17 22:45:34.310196
77	v-neck-floral-maxi-dress	47	Spree::Product	\N	2021-01-13 23:19:37.494763	2021-01-17 22:45:49.756424
69	a-line-suede-skirt	39	Spree::Product	\N	2021-01-13 23:19:35.899485	\N
60	anorak-with-hood	30	Spree::Product	\N	2021-01-13 23:19:34.075596	2021-01-14 21:18:50.784161
49	basic-t-shirt	19	Spree::Product	\N	2021-01-13 23:19:31.932522	2021-01-14 21:21:25.085691
94	blouse-with-wide-flounced-sleeve	64	Spree::Product	\N	2021-01-13 23:19:40.69757	2021-01-14 21:21:35.829909
32	checked-shirt	2	Spree::Product	\N	2021-01-13 23:19:28.823929	2021-01-14 21:21:43.873118
8	men/shirts	5	Spree::Taxon	\N	2021-01-13 23:19:26.80821	2021-01-14 22:53:58.459386
14	women/shirts-and-blouses	11	Spree::Taxon	\N	2021-01-13 23:19:27.376921	2021-01-14 22:54:43.684429
22	newest	18	Spree::Taxon	\N	2021-01-13 23:19:27.971019	2021-01-14 22:58:20.550415
28	streetstyle	21	Spree::Taxon	\N	2021-01-13 23:19:28.228397	2021-01-14 22:59:30.945012
27	categories/streetstyle	21	Spree::Taxon	\N	2021-01-13 23:19:28.180868	2021-01-14 22:59:31.05031
56	zipped-high-neck-sweater	26	Spree::Product	\N	2021-01-13 23:19:33.297936	2021-01-17 19:55:15.23829
62	wool-blend-short-coat	32	Spree::Product	\N	2021-01-13 23:19:34.477154	2021-01-17 19:55:19.50992
64	wool-blend-coat	34	Spree::Product	\N	2021-01-13 23:19:34.875964	2021-01-17 19:55:27.363567
90	v-neck-wide-shirt	60	Spree::Product	\N	2021-01-13 23:19:39.837359	2021-01-17 19:55:34.368924
47	v-neck-t-shirt	17	Spree::Product	\N	2021-01-13 23:19:31.526463	2021-01-17 19:56:11.514927
51	stripped-jumper	21	Spree::Product	\N	2021-01-13 23:19:32.374644	2021-01-17 19:56:17.56658
81	striped-shirt-dress	51	Spree::Product	\N	2021-01-13 23:19:38.237641	2021-01-17 19:56:21.185455
58	suede-biker-jacket	28	Spree::Product	\N	2021-01-13 23:19:33.712822	2021-01-17 19:56:29.11319
89	striped-shirt	59	Spree::Product	\N	2021-01-13 23:19:39.660578	2021-01-17 19:56:37.355439
48	tank-top	18	Spree::Product	\N	2021-01-13 23:19:31.728223	2021-01-17 19:56:49.769025
87	slit-maxi-dress	57	Spree::Product	\N	2021-01-13 23:19:39.308369	2021-01-17 19:57:08.076087
34	slim-fit-shirt	4	Spree::Product	\N	2021-01-13 23:19:29.180205	2021-01-17 19:57:11.417674
73	skater-short-skirt	43	Spree::Product	\N	2021-01-13 23:19:36.690895	2021-01-17 19:57:19.049088
72	skater-skirt	42	Spree::Product	\N	2021-01-13 23:19:36.498394	2021-01-17 19:57:23.415107
35	short-sleeve-shirt	5	Spree::Product	\N	2021-01-13 23:19:29.368252	2021-01-17 19:57:27.371443
88	semi-sheer-shirt-with-floral-cuffs	58	Spree::Product	\N	2021-01-13 23:19:39.485931	2021-01-17 19:57:43.343152
37	regular-shirt	7	Spree::Product	\N	2021-01-13 23:19:29.73153	2021-01-17 19:57:59.666642
46	raw-edge-t-shirt	16	Spree::Product	\N	2021-01-13 23:19:31.343028	2021-01-17 19:58:03.457377
91	printed-wrapped-blouse	61	Spree::Product	\N	2021-01-13 23:19:40.019968	2021-01-17 19:58:07.738579
83	printed-slit-sleeves-dress	53	Spree::Product	\N	2021-01-13 23:19:38.597006	2021-01-17 19:58:17.498401
36	printed-short-sleeve-shirt	6	Spree::Product	\N	2021-01-13 23:19:29.545223	2021-01-17 19:58:21.55124
99	printed-shirt	69	Spree::Product	\N	2021-01-13 23:19:41.640937	2021-01-17 19:58:27.19
82	printed-dress	52	Spree::Product	\N	2021-01-13 23:19:38.407988	2021-01-17 19:58:45.87405
42	polo-t-shirt	12	Spree::Product	\N	2021-01-13 23:19:30.623237	2021-01-17 19:58:49.852045
92	pleated-sleeve-v-neck-shirt	62	Spree::Product	\N	2021-01-13 23:19:40.211426	2021-01-17 19:58:52.368519
75	pleated-skirt-2	45	Spree::Product	\N	2021-01-13 23:19:37.078181	2021-01-17 19:58:55.960295
67	midi-skirt-with-bottoms	37	Spree::Product	\N	2021-01-13 23:19:35.517583	2021-01-17 19:59:10.602653
43	long-sleeve-t-shirt	13	Spree::Product	\N	2021-01-13 23:19:30.807935	2021-01-17 19:59:25.451378
54	long-sleeve-sweatshirt	24	Spree::Product	\N	2021-01-13 23:19:32.929569	2021-01-17 19:59:27.531498
52	long-sleeve-jumper-with-pocket	22	Spree::Product	\N	2021-01-13 23:19:32.57733	2021-01-17 19:59:31.949898
57	long-sleeve-jumper	27	Spree::Product	\N	2021-01-13 23:19:33.501242	2021-01-17 19:59:34.804094
40	linen-shirt	10	Spree::Product	\N	2021-01-13 23:19:30.265421	2021-01-17 19:59:39.550055
70	leather-skirt-with-lacing	40	Spree::Product	\N	2021-01-13 23:19:36.096839	2021-01-17 19:59:44.341779
53	jumper	23	Spree::Product	\N	2021-01-13 23:19:32.753783	2021-01-17 20:00:01.137334
55	hoodie	25	Spree::Product	\N	2021-01-13 23:19:33.117327	2021-01-17 20:00:05.709174
59	hooded-jacket	29	Spree::Product	\N	2021-01-13 23:19:33.89894	2021-01-17 20:00:09.354758
50	high-neck-sweater	20	Spree::Product	\N	2021-01-13 23:19:32.121358	2021-01-17 20:00:18.002069
86	flounced-dress	56	Spree::Product	\N	2021-01-13 23:19:39.136833	2021-01-17 20:00:20.35527
96	floral-shirt	66	Spree::Product	\N	2021-01-13 23:19:41.063831	2021-01-17 20:00:26.498196
74	floral-flared-skirt	44	Spree::Product	\N	2021-01-13 23:19:36.888353	2021-01-17 20:00:29.939981
71	flared-skirt	41	Spree::Product	\N	2021-01-13 23:19:36.296674	2021-01-17 20:00:33.163353
66	flared-midi-skirt	36	Spree::Product	\N	2021-01-13 23:19:35.314769	2021-01-17 20:00:36.129507
78	flared-dress	48	Spree::Product	\N	2021-01-13 23:19:37.682723	2021-01-17 20:00:38.817312
68	fitted-skirt	38	Spree::Product	\N	2021-01-13 23:19:35.717226	2021-01-17 20:00:41.322443
95	elegant-blouse-with-chocker	65	Spree::Product	\N	2021-01-13 23:19:40.883178	2021-01-17 20:00:47.494203
63	down-jacket-with-hood	33	Spree::Product	\N	2021-01-13 23:19:34.682259	2021-01-17 20:00:50.716752
115	coat-with-pockets	85	Spree::Product	\N	2021-01-13 23:19:45.897816	2021-01-17 20:01:13.527619
111	crop-top	81	Spree::Product	\N	2021-01-13 23:19:44.241628	2021-01-17 20:01:18.558407
106	crop-top-with-tie	76	Spree::Product	\N	2021-01-13 23:19:43.035313	2021-01-17 20:01:20.701687
105	cropped-fitted-sweater	75	Spree::Product	\N	2021-01-13 23:19:42.841163	2021-01-17 20:01:24.5291
125	denim-hooded-jacket	95	Spree::Product	\N	2021-01-13 23:19:49.491847	2021-01-17 20:01:26.408336
85	v-neck-floral-dress	55	Spree::Product	\N	2021-01-13 23:19:38.949476	2021-01-17 20:01:40.168535
148	vestido-de-tejido-fleece-para-mujer-nf_hoodie_dress	118	Spree::Product	\N	2021-01-14 16:50:46.786154	\N
149	nf_hoodie_dress	118	Spree::Product	\N	2021-01-14 19:10:38.232065	\N
147	vestido-de-tejido-fleece-para-mujer	117	Spree::Product	\N	2021-01-14 16:42:59.362928	2021-01-14 20:42:12.370216
44	3-4-sleeve-t-shirt	14	Spree::Product	\N	2021-01-13 23:19:30.976491	2021-01-14 21:18:28.108209
117	asymetric-coat	87	Spree::Product	\N	2021-01-13 23:19:46.389495	2021-01-14 21:21:12.816258
100	asymetric-sweater-with-wide-sleeves	70	Spree::Product	\N	2021-01-13 23:19:41.814759	2021-01-14 21:21:17.936624
114	basic-loose-t-shirt	84	Spree::Product	\N	2021-01-13 23:19:45.169929	2021-01-14 21:21:21.768666
126	bomber-jacket	96	Spree::Product	\N	2021-01-13 23:19:49.828635	2021-01-14 21:21:39.419651
150	men/calzado	23	Spree::Taxon	\N	2021-01-14 22:55:41.654827	\N
21	categories/newest	18	Spree::Taxon	\N	2021-01-13 23:19:27.923196	2021-01-14 22:58:20.568535
151	sportswear/calzado	24	Spree::Taxon	\N	2021-01-14 22:58:36.19635	\N
152	summer-sale/tendencias	25	Spree::Taxon	\N	2021-01-14 23:00:11.596768	\N
153	Hombres	2	Spree::Taxon	\N	2021-01-15 01:03:23.591715	\N
154	Hombres/t-shirts	6	Spree::Taxon	\N	2021-01-15 01:03:23.704922	\N
155	Hombres/sweaters	7	Spree::Taxon	\N	2021-01-15 01:03:23.800739	\N
156	Hombres/jackets-and-coats	8	Spree::Taxon	\N	2021-01-15 01:03:23.905327	\N
157	Hombres/calzado	23	Spree::Taxon	\N	2021-01-15 01:03:23.988886	\N
158	mujeres	3	Spree::Taxon	\N	2021-01-15 01:03:56.398832	\N
159	mujeres/skirts	9	Spree::Taxon	\N	2021-01-15 01:03:56.527908	\N
160	mujeres/dresses	10	Spree::Taxon	\N	2021-01-15 01:03:56.628	\N
161	mujeres/sweaters	12	Spree::Taxon	\N	2021-01-15 01:03:56.721809	\N
162	mujeres/tops-and-t-shirts	13	Spree::Taxon	\N	2021-01-15 01:03:56.839328	\N
163	mujeres/jackets-and-coats	14	Spree::Taxon	\N	2021-01-15 01:03:56.917603	\N
164	hombres	2	Spree::Taxon	\N	2021-01-15 01:04:09.400839	\N
165	hombres/t-shirts	6	Spree::Taxon	\N	2021-01-15 01:04:09.548531	\N
166	hombres/sweaters	7	Spree::Taxon	\N	2021-01-15 01:04:09.657562	\N
167	hombres/jackets-and-coats	8	Spree::Taxon	\N	2021-01-15 01:04:09.743731	\N
168	hombres/calzado	23	Spree::Taxon	\N	2021-01-15 01:04:09.844048	\N
169	infantil	4	Spree::Taxon	\N	2021-01-15 01:04:26.744388	\N
170	infantil/tops	15	Spree::Taxon	\N	2021-01-15 01:04:26.868594	\N
171	infantil/sweatshirts	16	Spree::Taxon	\N	2021-01-15 01:04:26.948993	\N
172	infantil/pants	17	Spree::Taxon	\N	2021-01-15 01:04:27.038418	\N
173	infantil/calzado	24	Spree::Taxon	\N	2021-01-15 01:04:27.134174	\N
174	newest	19	Spree::Taxon	\N	2021-01-15 01:05:06.039388	\N
175	liquidacion	20	Spree::Taxon	\N	2021-01-15 01:05:24.366028	\N
176	colecciones	22	Spree::Taxon	\N	2021-01-15 01:05:45.8273	\N
177	colecciones/tendencias	25	Spree::Taxon	\N	2021-01-15 01:05:45.923996	\N
178	hombres/poleras-m	6	Spree::Taxon	\N	2021-01-15 01:07:29.478296	\N
179	hombres/pantalones-deportivos	26	Spree::Taxon	\N	2021-01-16 17:01:11.625381	\N
180	hombres/pants-m	26	Spree::Taxon	\N	2021-01-16 17:01:31.916065	\N
181	infantil/desses-g	16	Spree::Taxon	\N	2021-01-16 17:04:43.40707	\N
182	infantil/pants-cc	17	Spree::Taxon	\N	2021-01-16 18:16:31.542632	\N
183	infantil/pants-c	17	Spree::Taxon	\N	2021-01-16 18:16:54.131128	\N
184	mujeres/calzado	27	Spree::Taxon	\N	2021-01-16 19:13:52.681471	\N
185	infantil/dresses-g	16	Spree::Taxon	\N	2021-01-16 19:19:48.942218	\N
120	zipped-jacket	90	Spree::Product	\N	2021-01-13 23:19:47.767352	2021-01-17 19:55:09.421371
124	wool-blend-coat-with-belt	94	Spree::Product	\N	2021-01-13 23:19:49.156427	2021-01-17 19:55:23.670042
45	t-shirt-with-holes	15	Spree::Product	\N	2021-01-13 23:19:31.159674	2021-01-17 19:56:33.200573
132	sports-bra-medium-support	102	Spree::Product	\N	2021-01-13 23:19:51.473735	2021-01-17 19:56:41.947585
127	sports-bra-low-support	97	Spree::Product	\N	2021-01-13 23:19:50.100064	2021-01-17 19:56:44.990693
133	sports-bra	103	Spree::Product	\N	2021-01-13 23:19:51.760692	2021-01-17 19:56:54.211609
138	sport-windproof-jacket	108	Spree::Product	\N	2021-01-13 23:19:53.135854	2021-01-17 19:56:57.643391
139	sport-waistcoat	109	Spree::Product	\N	2021-01-13 23:19:53.49501	2021-01-17 19:57:00.948249
134	sport-cropp-top	104	Spree::Product	\N	2021-01-13 23:19:52.046528	2021-01-17 19:57:04.328355
113	sleeveless-loose-top	83	Spree::Product	\N	2021-01-13 23:19:44.871324	2021-01-17 19:57:15.501213
141	short-pants	111	Spree::Product	\N	2021-01-13 23:19:54.235219	2021-01-17 19:57:31.811275
140	shined-pants	110	Spree::Product	\N	2021-01-13 23:19:53.860227	2021-01-17 19:57:35.915531
97	semi-sheer-shirt-with-pockets	67	Spree::Product	\N	2021-01-13 23:19:41.254326	2021-01-17 19:57:39.217925
135	running-sweatshirt	105	Spree::Product	\N	2021-01-13 23:19:52.336284	2021-01-17 19:57:48.343683
110	scrappy-crop-top-with-tie	80	Spree::Product	\N	2021-01-13 23:19:43.92272	2021-01-17 19:57:52.505926
108	scrappy-top	78	Spree::Product	\N	2021-01-13 23:19:43.413887	2021-01-17 19:57:56.433515
107	printed-t-shirt	77	Spree::Product	\N	2021-01-13 23:19:43.230601	2021-01-17 19:58:11.898538
41	regular-shirt-with-rolled-up-sleeves	11	Spree::Product	\N	2021-01-13 23:19:30.445016	2021-01-17 19:58:30.647547
142	printed-pants-with-holes	112	Spree::Product	\N	2021-01-13 23:19:54.626185	2021-01-17 19:58:33.812212
144	printed-pants	114	Spree::Product	\N	2021-01-13 23:19:55.299579	2021-01-17 19:58:37.633831
109	pleated-sleeve-t-shirt	79	Spree::Product	\N	2021-01-13 23:19:43.610949	2021-01-17 19:58:54.29153
143	pants	113	Spree::Product	\N	2021-01-13 23:19:54.965082	2021-01-17 19:58:58.609573
102	oversized-sweatshirt	72	Spree::Product	\N	2021-01-13 23:19:42.210769	2021-01-17 19:59:00.92539
101	oversized-knitted-sweater	71	Spree::Product	\N	2021-01-13 23:19:42.012089	2021-01-17 19:59:03.05069
129	oversize-t-shirt-wrapped-on-back	99	Spree::Product	\N	2021-01-13 23:19:50.682833	2021-01-17 19:59:05.035042
137	oversize-sweatshirt	107	Spree::Product	\N	2021-01-13 23:19:52.846127	2021-01-17 19:59:06.934302
112	loose-t-shirt-with-pocket-imitation	82	Spree::Product	\N	2021-01-13 23:19:44.539959	2021-01-17 19:59:13.728161
121	loose-fitted-jacket	91	Spree::Product	\N	2021-01-13 23:19:48.110865	2021-01-17 19:59:15.740558
116	long-wool-blend-coat-with-belt	86	Spree::Product	\N	2021-01-13 23:19:46.143561	2021-01-17 19:59:17.796901
128	long-sleeves-yoga-crop-top	98	Spree::Product	\N	2021-01-13 23:19:50.36561	2021-01-17 19:59:21.285458
130	long-sleeves-crop-top	100	Spree::Product	\N	2021-01-13 23:19:50.969702	2021-01-17 19:59:23.296237
80	long-sleeve-knitted-dress	50	Spree::Product	\N	2021-01-13 23:19:38.044313	2021-01-17 19:59:29.558445
123	leather-biker-jacket	93	Spree::Product	\N	2021-01-13 23:19:48.787579	2021-01-17 19:59:46.592114
131	laced-crop-top	101	Spree::Product	\N	2021-01-13 23:19:51.208154	2021-01-17 19:59:48.520352
104	knitted-v-neck-sweater	74	Spree::Product	\N	2021-01-13 23:19:42.645942	2021-01-17 19:59:50.401126
145	high-waist-pants-with-pockets	115	Spree::Product	\N	2021-01-13 23:19:55.683116	2021-01-17 20:00:12.170239
146	high-waist-pants	116	Spree::Product	\N	2021-01-13 23:19:56.05769	2021-01-17 20:00:15.461044
119	down-jacket	89	Spree::Product	\N	2021-01-13 23:19:47.058311	2021-01-17 20:00:53.275423
122	double-breasted-jacket	92	Spree::Product	\N	2021-01-13 23:19:48.430343	2021-01-17 20:00:58.012405
118	long-coat-with-belt	88	Spree::Product	\N	2021-01-13 23:19:46.645257	2021-01-17 19:59:37.357024
103	knitted-high-neck-sweater	73	Spree::Product	\N	2021-01-13 23:19:42.458822	2021-01-17 19:59:54.286052
76	floral-wrap-dress	46	Spree::Product	\N	2021-01-13 23:19:37.306041	2021-01-17 20:00:23.828035
79	elegant-flared-dress	49	Spree::Product	\N	2021-01-13 23:19:37.864482	2021-01-17 20:00:43.847486
136	leightweight-running-jacket	106	Spree::Product	\N	2021-01-13 23:19:52.615387	2021-01-17 20:01:46.113253
186	pantalones-semi-formales	119	Spree::Product	\N	2021-01-17 22:47:02.6102	\N
187	vestido-tipo-kimono	120	Spree::Product	\N	2021-01-17 23:05:13.862997	\N
188	vestido-deportivo	121	Spree::Product	\N	2021-01-17 23:12:21.79824	\N
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.schema_migrations (version) FROM stdin;
20210113225837
20210113225838
20210113225839
20210113225840
20210113225841
20210113225842
20210113225843
20210113225844
20210113225845
20210113225846
20210113225847
20210113225848
20210113225849
20210113225850
20210113225851
20210113225852
20210113225853
20210113225854
20210113225855
20210113225856
20210113225857
20210113225858
20210113225859
20210113225860
20210113225861
20210113225862
20210113225863
20210113225864
20210113225865
20210113225866
20210113225867
20210113225868
20210113225869
20210113225870
20210113225871
20210113225872
20210113225873
20210113225874
20210113225875
20210113225876
20210113225877
20210113225878
20210113225879
20210113225880
20210113225881
20210113225882
20210113225883
20210113225884
20210113225885
20210113225886
20210113225887
20210113225888
20210113225889
20210113225890
20210113225891
20210113225892
20210113225893
20210113225894
20210113225895
20210113225896
20210113225897
20210113225898
20210113225899
20210113225900
20210113225901
20210113225902
20210113225903
20210113225904
20210113225905
20210113225906
20210113225907
20210113225908
20210113225909
20210113225910
20210113225911
20210113225912
20210113225913
20210113225914
20210113225915
20210113225916
20210113225917
20210113225918
20210113225919
20210113225920
20210113225921
20210113225922
20210113225923
20210113225924
20210113225925
20210113225926
20210113225927
20210113225928
20210113225929
20210113225930
20210113225931
20210113225932
20210113225933
20210113225934
20210113225935
20210113225936
20210113225937
20210113225938
20210113225939
20210113225940
20210113225941
20210113225942
20210113225943
20210113225944
20210113225945
20210113225946
20210113225947
20210113225948
20210113225949
20210113225950
20210113225951
20210113225952
20210113225953
20210113225954
20210113225955
20210113225956
20210113225957
20210113225958
20210113225959
20210113225960
20210113225961
20210113225962
20210113225963
20210113225964
20210113225965
20210113225966
20210113225967
20210113225968
20210113225969
20210113225970
20210113225971
20210113225972
20210113225973
20210113225974
20210113225975
20210113225976
20210113225977
20210113225978
20210113225979
20210113225980
20210113225981
20210113225982
20210113225983
20210113225984
20210113225985
20210113225986
20210113225987
20210113225988
20210113225989
20210113225990
20210113225991
20210113225992
20210113225993
20210113225994
20210113225995
20210113225996
20210113225997
20210113225998
20210113225999
20210113226000
20210113226001
20210113226002
20210113226003
20210113226004
20210113226005
20210113226006
20210113226007
20210113226008
20210113226009
20210113226010
20210113226011
20210113226012
20210113226013
20210113226014
20210113226015
20210113226016
20210113226017
20210113226018
20210113226019
20210113226020
20210113226021
20210113226022
20210113226023
20210113226024
20210113226025
20210113226026
20210113226027
20210113226028
20210113226029
20210113226030
20210113226031
20210113226032
20210113226033
20210113226034
20210113226035
20210113226036
20210113226037
20210113226038
20210113226039
20210113226040
20210113226041
20210113226042
20210113226043
20210113226044
20210113226045
20210113226046
20210113226047
20210113226048
20210113226049
20210113226050
20210113226051
20210113226052
20210113226053
20210113226054
20210113226055
20210113226056
20210113226057
20210113226058
20210113226059
20210113226060
20210113226061
20210113226062
20210113226063
20210113226064
20210113226065
20210113226066
20210113226067
20210113226068
20210113226069
20210113226070
20210113226071
20210113226072
20210113226073
20210113226074
20210113226075
20210113226076
20210113226077
20210113226078
20210113226079
20210113226080
20210113226081
20210113226082
20210113226083
20210113226084
20210113226085
20210113226086
20210113226087
20210113226088
20210113226089
20210113226090
20210113226091
20210113226092
20210113226093
20210113226094
20210113226095
20210113226096
20210113226097
20210113226098
20210113226099
20210113226100
20210113226101
20210113226102
20210113226103
20210113226104
20210113226105
20210113226106
20210113226107
20210113226108
20210113226109
20210113226110
20210113226111
20210113226112
20210113226113
20210113226114
20210113226115
20210113226116
20210113226117
20210113226118
20210113226119
20210113226120
20210113226121
20210113226122
20210113226123
20210113226124
20210113226125
20210113226126
\.


--
-- Data for Name: spree_addresses; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_addresses (id, firstname, lastname, address1, address2, city, zipcode, phone, state_name, alternative_phone, company, state_id, country_id, created_at, updated_at, user_id, deleted_at) FROM stdin;
1	Tracy	Kemmer	43796 Dicki Fields	Suite 203	South Gudrun	16804	(884)959-7210 x40465	\N	\N	\N	2854	233	2021-01-13 23:19:24.419012	2021-01-13 23:19:24.419012	\N	\N
2	Debra	Nikolaus	4565 Roberts Key	Apt. 093	Champlinburgh	16804	(969)605-5928	\N	\N	\N	2854	233	2021-01-13 23:19:24.430972	2021-01-13 23:19:24.430972	\N	\N
3	panchi	vielma	hdo magallanes 1486	\N	santiago	7560789	988897176	\N	\N	\N	343	46	2021-01-14 02:01:24.028426	2021-01-14 02:01:25.157094	2	\N
4	Alejandra	vielma	apoquindo 7600	\N	stgo	7560789	98897176	\N	\N	\N	343	46	2021-01-14 21:45:55.855733	2021-01-14 21:45:56.464888	1	\N
\.


--
-- Data for Name: spree_adjustments; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_adjustments (id, source_type, source_id, adjustable_type, adjustable_id, amount, label, mandatory, eligible, created_at, updated_at, state, order_id, included) FROM stdin;
1	Spree::TaxRate	1	Spree::Order	1	8.80	Tax	t	t	2021-01-13 23:21:59.850984	2021-01-13 23:22:00.160501	open	1	f
2	Spree::TaxRate	1	Spree::Order	2	8.80	Tax	t	t	2021-01-13 23:21:59.922159	2021-01-13 23:22:00.41744	open	2	f
10	Spree::TaxRate	1	Spree::LineItem	6	9118.10	iva chile 19.0%	\N	t	2021-01-14 21:42:07.983801	2021-01-14 21:42:08.095403	open	3	f
35	Spree::TaxRate	1	Spree::LineItem	10	7662.27	iva chile (Included in Price)	\N	t	2021-01-17 22:24:24.620285	2021-01-17 22:24:36.83061	closed	5	t
24	Spree::TaxRate	1	Spree::LineItem	9	7662.27	iva chile (Included in Price)	\N	t	2021-01-14 21:58:05.356682	2021-01-14 21:58:22.762961	closed	4	t
26	Spree::TaxRate	1	Spree::Shipment	16	798.32	iva chile (Included in Price)	\N	t	2021-01-14 21:58:05.983378	2021-01-14 21:58:22.812802	closed	4	t
37	Spree::TaxRate	1	Spree::Shipment	19	798.32	iva chile (Included in Price)	\N	t	2021-01-17 22:24:25.311565	2021-01-17 22:24:36.87396	closed	5	t
\.


--
-- Data for Name: spree_assets; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_assets (id, viewable_type, viewable_id, attachment_width, attachment_height, attachment_file_size, "position", attachment_content_type, attachment_file_name, type, attachment_updated_at, alt, created_at, updated_at) FROM stdin;
6	Spree::Variant	236	\N	\N	\N	1	\N	\N	\N	\N		2021-01-14 20:22:42.12011	2021-01-14 20:22:42.177262
10	Spree::Variant	240	\N	\N	\N	1	\N	\N	\N	\N		2021-01-17 23:09:53.371023	2021-01-17 23:10:09.921808
9	Spree::Variant	241	\N	\N	\N	1	\N	\N	\N	\N		2021-01-17 23:09:12.196904	2021-01-17 23:10:51.163211
11	Spree::Variant	243	\N	\N	\N	1	\N	\N	\N	\N		2021-01-17 23:17:47.07886	2021-01-17 23:17:47.137744
12	Spree::Variant	244	\N	\N	\N	1	\N	\N	\N	\N		2021-01-17 23:18:05.938546	2021-01-17 23:18:05.983883
7	Spree::Variant	237	\N	\N	\N	1	\N	\N	\N	\N		2021-01-17 22:56:50.51338	2021-01-17 23:19:53.945119
14	Spree::Variant	234	\N	\N	\N	1	\N	\N	\N	\N		2021-01-18 22:00:49.82803	2021-01-18 22:00:49.865662
15	Spree::Variant	235	\N	\N	\N	1	\N	\N	\N	\N		2021-01-18 22:05:13.645822	2021-01-18 22:05:13.695688
8	Spree::Variant	238	\N	\N	\N	1	\N	\N	\N	\N		2021-01-17 22:57:24.953222	2021-01-18 22:06:34.610224
16	Spree::Variant	239	\N	\N	\N	1	\N	\N	\N	\N		2021-01-18 22:07:03.862178	2021-01-18 22:07:03.917009
17	Spree::Variant	245	\N	\N	\N	1	\N	\N	\N	\N		2021-01-18 22:07:47.436	2021-01-18 22:07:47.486713
18	Spree::Variant	242	\N	\N	\N	1	\N	\N	\N	\N		2021-01-18 22:08:31.450519	2021-01-18 22:08:31.48778
\.


--
-- Data for Name: spree_calculators; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_calculators (id, type, calculable_type, calculable_id, created_at, updated_at, preferences, deleted_at) FROM stdin;
1	Spree::Calculator::Shipping::FlatRate	Spree::ShippingMethod	1	2021-01-13 23:19:24.654878	2021-01-13 23:19:24.866051	---\n:amount: 5\n:currency: USD\n	\N
4	Spree::Calculator::Shipping::FlatRate	Spree::ShippingMethod	4	2021-01-13 23:19:24.793883	2021-01-13 23:19:24.882925	---\n:amount: 5\n:currency: USD\n	\N
3	Spree::Calculator::Shipping::FlatRate	Spree::ShippingMethod	3	2021-01-13 23:19:24.763578	2021-01-13 23:19:24.89962	---\n:amount: 15\n:currency: USD\n	\N
2	Spree::Calculator::Shipping::FlatRate	Spree::ShippingMethod	2	2021-01-13 23:19:24.733983	2021-01-13 23:19:24.917111	---\n:amount: 10\n:currency: USD\n	\N
5	Spree::Calculator::Shipping::FlatRate	Spree::ShippingMethod	5	2021-01-13 23:19:24.832034	2021-01-13 23:19:24.933813	---\n:amount: 8\n:currency: EUR\n	\N
6	Spree::Calculator::DefaultTax	Spree::TaxRate	1	2021-01-13 23:19:25.00126	2021-01-13 23:19:25.013693	\N	\N
8	Spree::Calculator::DefaultTax	Spree::TaxRate	2	2021-01-14 21:54:53.895783	2021-01-14 21:54:53.895783	\N	\N
7	Spree::Calculator::Shipping::FlatRate	Spree::ShippingMethod	6	2021-01-14 21:48:37.281114	2021-01-14 21:55:16.492484	---\n:amount: !ruby/object:BigDecimal 18:0.5e4\n:currency: CLP\n	\N
\.


--
-- Data for Name: spree_checks; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_checks (id, payment_method_id, user_id, account_holder_name, account_holder_type, routing_number, account_number, account_type, status, last_digits, gateway_customer_profile_id, gateway_payment_profile_id, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: spree_countries; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_countries (id, iso_name, iso, iso3, name, numcode, states_required, updated_at, zipcode_required) FROM stdin;
1	ANDORRA	AD	AND	Andorra	20	t	2021-01-13 22:59:28.556146	t
5	ANGUILLA	AI	AIA	Anguilla	660	f	2021-01-13 22:59:28.707871	t
6	ALBANIA	AL	ALB	Albania	8	t	2021-01-13 22:59:28.735156	t
7	ARMENIA	AM	ARM	Armenia	51	t	2021-01-13 22:59:28.768272	t
9	ANTARCTICA	AQ	ATA	Antarctica	10	f	2021-01-13 22:59:28.826304	t
10	ARGENTINA	AR	ARG	Argentina	32	t	2021-01-13 22:59:28.893232	t
11	AMERICAN SAMOA	AS	ASM	American Samoa	16	f	2021-01-13 22:59:28.919447	t
12	AUSTRIA	AT	AUT	Austria	40	t	2021-01-13 22:59:28.956461	t
13	AUSTRALIA	AU	AUS	Australia	36	t	2021-01-13 22:59:29.019156	t
15	ÅLAND ISLANDS	AX	ALA	Åland Islands	248	f	2021-01-13 22:59:29.06205	t
16	AZERBAIJAN	AZ	AZE	Azerbaijan	31	t	2021-01-13 22:59:29.092514	t
17	BOSNIA AND HERZEGOVINA	BA	BIH	Bosnia and Herzegovina	70	t	2021-01-13 22:59:29.135235	t
18	BARBADOS	BB	BRB	Barbados	52	t	2021-01-13 22:59:29.182779	t
19	BANGLADESH	BD	BGD	Bangladesh	50	t	2021-01-13 22:59:29.315294	t
20	BELGIUM	BE	BEL	Belgium	56	t	2021-01-13 22:59:29.35482	t
22	BULGARIA	BG	BGR	Bulgaria	100	t	2021-01-13 22:59:29.491984	t
23	BAHRAIN	BH	BHR	Bahrain	48	t	2021-01-13 22:59:29.523073	t
26	SAINT BARTHÉLEMY	BL	BLM	Saint Barthélemy	652	f	2021-01-13 22:59:29.612421	t
28	BRUNEI DARUSSALAM	BN	BRN	Brunei Darussalam	96	t	2021-01-13 22:59:29.710083	t
30	BONAIRE, SINT EUSTATIUS AND SABA	BQ	BES	Bonaire, Sint Eustatius and Saba	535	t	2021-01-13 22:59:29.825078	t
31	BRAZIL	BR	BRA	Brazil	76	t	2021-01-13 22:59:29.865428	t
33	BHUTAN	BT	BTN	Bhutan	64	t	2021-01-13 22:59:29.925337	t
34	BOUVET ISLAND	BV	BVT	Bouvet Island	74	f	2021-01-13 22:59:29.950621	t
36	BELARUS	BY	BLR	Belarus	112	t	2021-01-13 22:59:30.031044	t
38	CANADA	CA	CAN	Canada	124	t	2021-01-13 22:59:30.117321	t
39	COCOS (KEELING) ISLANDS	CC	CCK	Cocos (Keeling) Islands	166	f	2021-01-13 22:59:30.145609	t
43	SWITZERLAND	CH	CHE	Switzerland	756	t	2021-01-13 22:59:30.278147	t
46	CHILE	CL	CHL	Chile	152	t	2021-01-13 22:59:30.380353	t
48	CHINA	CN	CHN	China	156	t	2021-01-13 22:59:30.463052	t
49	COLOMBIA	CO	COL	Colombia	170	t	2021-01-13 22:59:30.518461	t
50	COSTA RICA	CR	CRI	Costa Rica	188	t	2021-01-13 22:59:30.553242	t
51	CUBA	CU	CUB	Cuba	192	t	2021-01-13 22:59:30.583656	t
52	CABO VERDE	CV	CPV	Cabo Verde	132	t	2021-01-13 22:59:30.611744	t
53	CURAÇAO	CW	CUW	Curaçao	531	f	2021-01-13 22:59:30.637936	t
54	CHRISTMAS ISLAND	CX	CXR	Christmas Island	162	f	2021-01-13 22:59:30.663324	t
55	CYPRUS	CY	CYP	Cyprus	196	t	2021-01-13 22:59:30.715809	t
56	CZECHIA	CZ	CZE	Czechia	203	t	2021-01-13 22:59:30.749618	t
57	GERMANY	DE	DEU	Germany	276	t	2021-01-13 22:59:30.783458	t
59	DENMARK	DK	DNK	Denmark	208	t	2021-01-13 22:59:30.852597	t
61	DOMINICAN REPUBLIC	DO	DOM	Dominican Republic	214	t	2021-01-13 22:59:30.936876	t
62	ALGERIA	DZ	DZA	Algeria	12	t	2021-01-13 22:59:30.979276	t
63	ECUADOR	EC	ECU	Ecuador	218	t	2021-01-13 22:59:31.024525	t
64	ESTONIA	EE	EST	Estonia	233	t	2021-01-13 22:59:31.066631	t
65	EGYPT	EG	EGY	Egypt	818	t	2021-01-13 22:59:31.117518	t
66	WESTERN SAHARA	EH	ESH	Western Sahara	732	f	2021-01-13 22:59:31.151755	t
68	SPAIN	ES	ESP	Spain	724	t	2021-01-13 22:59:31.232517	t
69	ETHIOPIA	ET	ETH	Ethiopia	231	t	2021-01-13 22:59:31.288355	t
70	FINLAND	FI	FIN	Finland	246	t	2021-01-13 22:59:31.328193	t
72	FALKLAND ISLANDS (MALVINAS)	FK	FLK	Falkland Islands (Malvinas)	238	f	2021-01-13 22:59:31.413451	t
73	MICRONESIA, FEDERATED STATES OF	FM	FSM	Micronesia, Federated States of	583	t	2021-01-13 22:59:31.462684	t
74	FAROE ISLANDS	FO	FRO	Faroe Islands	234	f	2021-01-13 22:59:31.504078	t
75	FRANCE	FR	FRA	France	250	t	2021-01-13 22:59:31.535897	t
76	GABON	GA	GAB	Gabon	266	t	2021-01-13 22:59:31.592562	t
77	UNITED KINGDOM	GB	GBR	United Kingdom	826	t	2021-01-13 22:59:31.63767	t
79	GEORGIA	GE	GEO	Georgia	268	t	2021-01-13 22:59:31.727972	t
80	FRENCH GUIANA	GF	GUF	French Guiana	254	f	2021-01-13 22:59:31.754141	t
81	GUERNSEY	GG	GGY	Guernsey	831	f	2021-01-13 22:59:31.788592	t
83	GIBRALTAR	GI	GIB	Gibraltar	292	f	2021-01-13 22:59:31.936321	t
84	GREENLAND	GL	GRL	Greenland	304	t	2021-01-13 22:59:32.008058	t
87	GUADELOUPE	GP	GLP	Guadeloupe	312	f	2021-01-13 22:59:32.236975	t
89	GREECE	GR	GRC	Greece	300	t	2021-01-13 22:59:32.330676	t
2	UNITED ARAB EMIRATES	AE	ARE	United Arab Emirates	784	t	2021-01-13 22:59:28.604329	f
90	SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS	GS	SGS	South Georgia and the South Sandwich Islands	239	f	2021-01-13 22:59:32.366211	t
91	GUATEMALA	GT	GTM	Guatemala	320	t	2021-01-13 22:59:32.435137	t
92	GUAM	GU	GUM	Guam	316	f	2021-01-13 22:59:32.47195	t
93	GUINEA-BISSAU	GW	GNB	Guinea-Bissau	624	t	2021-01-13 22:59:32.515536	t
96	HEARD ISLAND AND MCDONALD ISLANDS	HM	HMD	Heard Island and McDonald Islands	334	f	2021-01-13 22:59:32.632896	t
97	HONDURAS	HN	HND	Honduras	340	t	2021-01-13 22:59:32.668338	t
98	CROATIA	HR	HRV	Croatia	191	t	2021-01-13 22:59:32.714632	t
99	HAITI	HT	HTI	Haiti	332	t	2021-01-13 22:59:32.751032	t
100	HUNGARY	HU	HUN	Hungary	348	t	2021-01-13 22:59:32.79812	t
101	INDONESIA	ID	IDN	Indonesia	360	t	2021-01-13 22:59:32.835819	t
103	ISRAEL	IL	ISR	Israel	376	t	2021-01-13 22:59:32.949825	t
104	ISLE OF MAN	IM	IMN	Isle of Man	833	f	2021-01-13 22:59:32.981595	t
105	INDIA	IN	IND	India	356	t	2021-01-13 22:59:33.042144	t
106	BRITISH INDIAN OCEAN TERRITORY	IO	IOT	British Indian Ocean Territory	86	f	2021-01-13 22:59:33.07936	t
107	IRAQ	IQ	IRQ	Iraq	368	t	2021-01-13 22:59:33.123961	t
108	IRAN, ISLAMIC REPUBLIC OF	IR	IRN	Iran, Islamic Republic of	364	t	2021-01-13 22:59:33.163034	t
109	ICELAND	IS	ISL	Iceland	352	t	2021-01-13 22:59:33.197738	t
110	ITALY	IT	ITA	Italy	380	t	2021-01-13 22:59:33.229662	t
111	JERSEY	JE	JEY	Jersey	832	f	2021-01-13 22:59:33.256149	t
112	JAMAICA	JM	JAM	Jamaica	388	t	2021-01-13 22:59:33.362709	t
113	JORDAN	JO	JOR	Jordan	400	t	2021-01-13 22:59:33.390563	t
114	JAPAN	JP	JPN	Japan	392	t	2021-01-13 22:59:33.471708	t
115	KENYA	KE	KEN	Kenya	404	t	2021-01-13 22:59:33.560038	t
116	KYRGYZSTAN	KG	KGZ	Kyrgyzstan	417	t	2021-01-13 22:59:33.658571	t
117	CAMBODIA	KH	KHM	Cambodia	116	t	2021-01-13 22:59:33.700466	t
122	KOREA, REPUBLIC OF	KR	KOR	Korea, Republic of	410	t	2021-01-13 22:59:33.94095	t
123	KUWAIT	KW	KWT	Kuwait	414	t	2021-01-13 22:59:33.97325	t
124	CAYMAN ISLANDS	KY	CYM	Cayman Islands	136	f	2021-01-13 22:59:33.995908	t
125	KAZAKHSTAN	KZ	KAZ	Kazakhstan	398	t	2021-01-13 22:59:34.033929	t
126	LAO PEOPLE'S DEMOCRATIC REPUBLIC	LA	LAO	Lao People's Democratic Republic	418	t	2021-01-13 22:59:34.062699	t
127	LEBANON	LB	LBN	Lebanon	422	t	2021-01-13 22:59:34.095878	t
129	LIECHTENSTEIN	LI	LIE	Liechtenstein	438	t	2021-01-13 22:59:34.147463	t
130	SRI LANKA	LK	LKA	Sri Lanka	144	t	2021-01-13 22:59:34.17793	t
131	LIBERIA	LR	LBR	Liberia	430	t	2021-01-13 22:59:34.206946	t
132	LESOTHO	LS	LSO	Lesotho	426	t	2021-01-13 22:59:34.238825	t
133	LITHUANIA	LT	LTU	Lithuania	440	t	2021-01-13 22:59:34.280034	t
134	LUXEMBOURG	LU	LUX	Luxembourg	442	t	2021-01-13 22:59:34.310321	t
135	LATVIA	LV	LVA	Latvia	428	t	2021-01-13 22:59:34.346159	t
137	MOROCCO	MA	MAR	Morocco	504	t	2021-01-13 22:59:34.415877	t
138	MONACO	MC	MCO	Monaco	492	t	2021-01-13 22:59:34.441328	t
139	MOLDOVA, REPUBLIC OF	MD	MDA	Moldova, Republic of	498	t	2021-01-13 22:59:34.483757	t
140	MONTENEGRO	ME	MNE	Montenegro	499	t	2021-01-13 22:59:34.516918	t
141	SAINT MARTIN (FRENCH PART)	MF	MAF	Saint Martin (French part)	663	f	2021-01-13 22:59:34.548761	t
142	MADAGASCAR	MG	MDG	Madagascar	450	t	2021-01-13 22:59:34.579575	t
143	MARSHALL ISLANDS	MH	MHL	Marshall Islands	584	t	2021-01-13 22:59:34.617971	t
144	NORTH MACEDONIA	MK	MKD	North Macedonia	807	t	2021-01-13 22:59:34.680722	t
146	MYANMAR	MM	MMR	Myanmar	104	t	2021-01-13 22:59:34.744283	t
147	MONGOLIA	MN	MNG	Mongolia	496	t	2021-01-13 22:59:34.776629	t
149	NORTHERN MARIANA ISLANDS	MP	MNP	Northern Mariana Islands	580	f	2021-01-13 22:59:34.818282	t
150	MARTINIQUE	MQ	MTQ	Martinique	474	f	2021-01-13 22:59:34.848756	t
152	MONTSERRAT	MS	MSR	Montserrat	500	f	2021-01-13 22:59:34.907976	t
153	MALTA	MT	MLT	Malta	470	t	2021-01-13 22:59:34.94733	t
154	MAURITIUS	MU	MUS	Mauritius	480	t	2021-01-13 22:59:34.979004	t
155	MALDIVES	MV	MDV	Maldives	462	t	2021-01-13 22:59:35.013195	t
157	MEXICO	MX	MEX	Mexico	484	t	2021-01-13 22:59:35.079702	t
158	MALAYSIA	MY	MYS	Malaysia	458	t	2021-01-13 22:59:35.113586	t
159	MOZAMBIQUE	MZ	MOZ	Mozambique	508	t	2021-01-13 22:59:35.146156	t
160	NAMIBIA	NA	NAM	Namibia	516	t	2021-01-13 22:59:35.182736	t
161	NEW CALEDONIA	NC	NCL	New Caledonia	540	f	2021-01-13 22:59:35.20945	t
162	NIGER	NE	NER	Niger	562	t	2021-01-13 22:59:35.264826	t
163	NORFOLK ISLAND	NF	NFK	Norfolk Island	574	f	2021-01-13 22:59:35.289335	t
164	NIGERIA	NG	NGA	Nigeria	566	t	2021-01-13 22:59:35.336953	t
165	NICARAGUA	NI	NIC	Nicaragua	558	t	2021-01-13 22:59:35.404842	t
166	NETHERLANDS	NL	NLD	Netherlands	528	t	2021-01-13 22:59:35.443793	t
167	NORWAY	NO	NOR	Norway	578	t	2021-01-13 22:59:35.483594	t
168	NEPAL	NP	NPL	Nepal	524	t	2021-01-13 22:59:35.511791	t
171	NEW ZEALAND	NZ	NZL	New Zealand	554	t	2021-01-13 22:59:35.619066	t
172	OMAN	OM	OMN	Oman	512	t	2021-01-13 22:59:35.653113	t
174	PERU	PE	PER	Peru	604	t	2021-01-13 22:59:35.71613	t
175	FRENCH POLYNESIA	PF	PYF	French Polynesia	258	f	2021-01-13 22:59:35.740608	t
176	PAPUA NEW GUINEA	PG	PNG	Papua New Guinea	598	t	2021-01-13 22:59:35.771699	t
177	PHILIPPINES	PH	PHL	Philippines	608	t	2021-01-13 22:59:35.803052	t
178	PAKISTAN	PK	PAK	Pakistan	586	t	2021-01-13 22:59:35.834688	t
179	POLAND	PL	POL	Poland	616	t	2021-01-13 22:59:35.896726	t
180	SAINT PIERRE AND MIQUELON	PM	SPM	Saint Pierre and Miquelon	666	f	2021-01-13 22:59:35.921708	t
181	PITCAIRN	PN	PCN	Pitcairn	612	f	2021-01-13 22:59:35.948991	t
182	PUERTO RICO	PR	PRI	Puerto Rico	630	f	2021-01-13 22:59:35.972514	t
183	PALESTINE, STATE OF	PS	PSE	Palestine, State of	275	t	2021-01-13 22:59:36.034777	t
184	PORTUGAL	PT	PRT	Portugal	620	t	2021-01-13 22:59:36.065482	t
185	PALAU	PW	PLW	Palau	585	t	2021-01-13 22:59:36.095264	t
186	PARAGUAY	PY	PRY	Paraguay	600	t	2021-01-13 22:59:36.144308	t
188	RÉUNION	RE	REU	Réunion	638	f	2021-01-13 22:59:36.21568	t
189	ROMANIA	RO	ROU	Romania	642	t	2021-01-13 22:59:36.289129	t
190	SERBIA	RS	SRB	Serbia	688	t	2021-01-13 22:59:36.320975	t
191	RUSSIA	RU	RUS	Russia	643	t	2021-01-13 22:59:36.376615	t
193	SAUDI ARABIA	SA	SAU	Saudi Arabia	682	t	2021-01-13 22:59:36.465366	t
196	SUDAN	SD	SDN	Sudan	729	t	2021-01-13 22:59:36.563711	t
197	SWEDEN	SE	SWE	Sweden	752	t	2021-01-13 22:59:36.593192	t
198	SINGAPORE	SG	SGP	Singapore	702	t	2021-01-13 22:59:36.627844	t
199	SAINT HELENA, ASCENSION AND TRISTAN DA CUNHA	SH	SHN	Saint Helena, Ascension and Tristan da Cunha	654	t	2021-01-13 22:59:36.660154	t
200	SLOVENIA	SI	SVN	Slovenia	705	t	2021-01-13 22:59:36.697258	t
201	SVALBARD AND JAN MAYEN	SJ	SJM	Svalbard and Jan Mayen	744	f	2021-01-13 22:59:36.721527	t
202	SLOVAKIA	SK	SVK	Slovakia	703	t	2021-01-13 22:59:36.750633	t
204	SAN MARINO	SM	SMR	San Marino	674	t	2021-01-13 22:59:36.820394	t
205	SENEGAL	SN	SEN	Senegal	686	t	2021-01-13 22:59:36.848436	t
208	SOUTH SUDAN	SS	SSD	South Sudan	728	t	2021-01-13 22:59:36.981206	t
210	EL SALVADOR	SV	SLV	El Salvador	222	t	2021-01-13 22:59:37.098385	t
211	SINT MAARTEN (DUTCH PART)	SX	SXM	Sint Maarten (Dutch part)	534	f	2021-01-13 22:59:37.136587	t
213	ESWATINI	SZ	SWZ	Eswatini	748	t	2021-01-13 22:59:37.394763	t
214	TURKS AND CAICOS ISLANDS	TC	TCA	Turks and Caicos Islands	796	f	2021-01-13 22:59:37.422424	t
215	CHAD	TD	TCD	Chad	148	t	2021-01-13 22:59:37.535055	t
218	THAILAND	TH	THA	Thailand	764	t	2021-01-13 22:59:37.634065	t
219	TAJIKISTAN	TJ	TJK	Tajikistan	762	t	2021-01-13 22:59:37.665148	t
222	TURKMENISTAN	TM	TKM	Turkmenistan	795	t	2021-01-13 22:59:37.858183	t
223	TUNISIA	TN	TUN	Tunisia	788	t	2021-01-13 22:59:37.903634	t
225	TURKEY	TR	TUR	Turkey	792	t	2021-01-13 22:59:37.989167	t
226	TRINIDAD AND TOBAGO	TT	TTO	Trinidad and Tobago	780	t	2021-01-13 22:59:38.038284	t
228	TAIWAN	TW	TWN	Taiwan	158	t	2021-01-13 22:59:38.127434	t
230	UKRAINE	UA	UKR	Ukraine	804	t	2021-01-13 22:59:38.234388	t
232	UNITED STATES MINOR OUTLYING ISLANDS	UM	UMI	United States Minor Outlying Islands	581	t	2021-01-13 22:59:38.345051	t
233	UNITED STATES	US	USA	United States	840	t	2021-01-13 22:59:38.396888	t
234	URUGUAY	UY	URY	Uruguay	858	t	2021-01-13 22:59:38.448287	t
235	UZBEKISTAN	UZ	UZB	Uzbekistan	860	t	2021-01-13 22:59:38.487691	t
236	HOLY SEE (VATICAN CITY STATE)	VA	VAT	Holy See (Vatican City State)	336	f	2021-01-13 22:59:38.51789	t
237	SAINT VINCENT AND THE GRENADINES	VC	VCT	Saint Vincent and the Grenadines	670	t	2021-01-13 22:59:38.551973	t
238	VENEZUELA, BOLIVARIAN REPUBLIC OF	VE	VEN	Venezuela, Bolivarian Republic of	862	t	2021-01-13 22:59:38.584736	t
239	VIRGIN ISLANDS, BRITISH	VG	VGB	Virgin Islands, British	92	f	2021-01-13 22:59:38.615278	t
240	VIRGIN ISLANDS, U.S.	VI	VIR	Virgin Islands, U.S.	850	f	2021-01-13 22:59:38.638716	t
241	VIETNAM	VN	VNM	Vietnam	704	t	2021-01-13 22:59:38.6963	t
243	WALLIS AND FUTUNA	WF	WLF	Wallis and Futuna	876	f	2021-01-13 22:59:38.763202	t
244	SAMOA	WS	WSM	Samoa	882	t	2021-01-13 22:59:38.815369	t
246	MAYOTTE	YT	MYT	Mayotte	175	f	2021-01-13 22:59:38.923679	t
247	SOUTH AFRICA	ZA	ZAF	South Africa	710	t	2021-01-13 22:59:38.962777	t
248	ZAMBIA	ZM	ZMB	Zambia	894	t	2021-01-13 22:59:39.000727	t
4	ANTIGUA AND BARBUDA	AG	ATG	Antigua and Barbuda	28	t	2021-01-13 22:59:28.686453	f
8	ANGOLA	AO	AGO	Angola	24	t	2021-01-13 22:59:28.799498	f
14	ARUBA	AW	ABW	Aruba	533	f	2021-01-13 22:59:29.04078	f
21	BURKINA FASO	BF	BFA	Burkina Faso	854	t	2021-01-13 22:59:29.452137	f
24	BURUNDI	BI	BDI	Burundi	108	t	2021-01-13 22:59:29.553674	f
25	BENIN	BJ	BEN	Benin	204	t	2021-01-13 22:59:29.587186	f
27	BERMUDA	BM	BMU	Bermuda	60	t	2021-01-13 22:59:29.635077	f
29	BOLIVIA, PLURINATIONAL STATE OF	BO	BOL	Bolivia, Plurinational State of	68	t	2021-01-13 22:59:29.770742	f
32	BAHAMAS	BS	BHS	Bahamas	44	t	2021-01-13 22:59:29.896501	f
35	BOTSWANA	BW	BWA	Botswana	72	t	2021-01-13 22:59:29.975735	f
37	BELIZE	BZ	BLZ	Belize	84	t	2021-01-13 22:59:30.08226	f
40	CONGO, THE DEMOCRATIC REPUBLIC OF THE	CD	COD	Congo, The Democratic Republic of the	180	t	2021-01-13 22:59:30.182203	f
41	CENTRAL AFRICAN REPUBLIC	CF	CAF	Central African Republic	140	t	2021-01-13 22:59:30.214085	f
42	CONGO	CG	COG	Congo	178	t	2021-01-13 22:59:30.246097	f
44	CÔTE D'IVOIRE	CI	CIV	Côte d'Ivoire	384	t	2021-01-13 22:59:30.318779	f
45	COOK ISLANDS	CK	COK	Cook Islands	184	f	2021-01-13 22:59:30.349049	f
187	QATAR	QA	QAT	Qatar	634	t	2021-01-13 22:59:36.183207	f
47	CAMEROON	CM	CMR	Cameroon	120	t	2021-01-13 22:59:30.43387	f
58	DJIBOUTI	DJ	DJI	Djibouti	262	t	2021-01-13 22:59:30.812898	f
60	DOMINICA	DM	DMA	Dominica	212	t	2021-01-13 22:59:30.887629	f
67	ERITREA	ER	ERI	Eritrea	232	t	2021-01-13 22:59:31.188152	f
71	FIJI	FJ	FJI	Fiji	242	t	2021-01-13 22:59:31.378143	f
78	GRENADA	GD	GRD	Grenada	308	t	2021-01-13 22:59:31.685526	f
82	GHANA	GH	GHA	Ghana	288	t	2021-01-13 22:59:31.861292	f
85	GAMBIA	GM	GMB	Gambia	270	t	2021-01-13 22:59:32.122492	f
86	GUINEA	GN	GIN	Guinea	324	t	2021-01-13 22:59:32.201501	f
88	EQUATORIAL GUINEA	GQ	GNQ	Equatorial Guinea	226	t	2021-01-13 22:59:32.290179	f
94	GUYANA	GY	GUY	Guyana	328	t	2021-01-13 22:59:32.56671	f
95	HONG KONG	HK	HKG	Hong Kong	344	f	2021-01-13 22:59:32.601945	f
102	IRELAND	IE	IRL	Ireland	372	t	2021-01-13 22:59:32.879279	f
118	KIRIBATI	KI	KIR	Kiribati	296	t	2021-01-13 22:59:33.8075	f
119	COMOROS	KM	COM	Comoros	174	t	2021-01-13 22:59:33.840036	f
120	SAINT KITTS AND NEVIS	KN	KNA	Saint Kitts and Nevis	659	t	2021-01-13 22:59:33.873113	f
121	KOREA, DEMOCRATIC PEOPLE'S REPUBLIC OF	KP	PRK	Korea, Democratic People's Republic of	408	t	2021-01-13 22:59:33.906516	f
128	SAINT LUCIA	LC	LCA	Saint Lucia	662	f	2021-01-13 22:59:34.117311	f
136	LIBYA	LY	LBY	Libya	434	t	2021-01-13 22:59:34.381936	f
145	MALI	ML	MLI	Mali	466	t	2021-01-13 22:59:34.712779	f
148	MACAO	MO	MAC	Macao	446	f	2021-01-13 22:59:34.797067	f
151	MAURITANIA	MR	MRT	Mauritania	478	t	2021-01-13 22:59:34.880222	f
156	MALAWI	MW	MWI	Malawi	454	t	2021-01-13 22:59:35.044245	f
169	NAURU	NR	NRU	Nauru	520	t	2021-01-13 22:59:35.546893	f
170	NIUE	NU	NIU	Niue	570	f	2021-01-13 22:59:35.570556	f
173	PANAMA	PA	PAN	Panama	591	t	2021-01-13 22:59:35.683635	f
192	RWANDA	RW	RWA	Rwanda	646	t	2021-01-13 22:59:36.406209	f
194	SOLOMON ISLANDS	SB	SLB	Solomon Islands	90	t	2021-01-13 22:59:36.494863	f
195	SEYCHELLES	SC	SYC	Seychelles	690	t	2021-01-13 22:59:36.528465	f
203	SIERRA LEONE	SL	SLE	Sierra Leone	694	t	2021-01-13 22:59:36.785391	f
206	SOMALIA	SO	SOM	Somalia	706	t	2021-01-13 22:59:36.881835	f
207	SURINAME	SR	SUR	Suriname	740	t	2021-01-13 22:59:36.912221	f
209	SAO TOME AND PRINCIPE	ST	STP	Sao Tome and Principe	678	t	2021-01-13 22:59:37.065671	f
212	SYRIAN ARAB REPUBLIC	SY	SYR	Syrian Arab Republic	760	t	2021-01-13 22:59:37.263667	f
216	FRENCH SOUTHERN TERRITORIES	TF	ATF	French Southern Territories	260	f	2021-01-13 22:59:37.566634	f
217	TOGO	TG	TGO	Togo	768	t	2021-01-13 22:59:37.60029	f
220	TOKELAU	TK	TKL	Tokelau	772	f	2021-01-13 22:59:37.684416	f
221	TIMOR-LESTE	TL	TLS	Timor-Leste	626	t	2021-01-13 22:59:37.803625	f
224	TONGA	TO	TON	Tonga	776	t	2021-01-13 22:59:37.946881	f
227	TUVALU	TV	TUV	Tuvalu	798	t	2021-01-13 22:59:38.076481	f
229	TANZANIA, UNITED REPUBLIC OF	TZ	TZA	Tanzania, United Republic of	834	t	2021-01-13 22:59:38.183944	f
231	UGANDA	UG	UGA	Uganda	800	t	2021-01-13 22:59:38.29173	f
242	VANUATU	VU	VUT	Vanuatu	548	t	2021-01-13 22:59:38.733653	f
245	YEMEN	YE	YEM	Yemen	887	t	2021-01-13 22:59:38.891262	f
249	ZIMBABWE	ZW	ZWE	Zimbabwe	716	t	2021-01-13 22:59:39.037063	f
\.


--
-- Data for Name: spree_credit_cards; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_credit_cards (id, month, year, cc_type, last_digits, address_id, gateway_customer_profile_id, gateway_payment_profile_id, created_at, updated_at, name, user_id, payment_method_id, "default", deleted_at) FROM stdin;
1	12	2023	visa	1111	\N	BGS-1234	\N	2021-01-13 23:22:00.043601	2021-01-13 23:22:00.043601	Sean Schofield	\N	\N	f	\N
\.


--
-- Data for Name: spree_customer_returns; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_customer_returns (id, number, stock_location_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_gateways; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_gateways (id, type, name, description, active, environment, server, test_mode, created_at, updated_at, preferences) FROM stdin;
\.


--
-- Data for Name: spree_inventory_units; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_inventory_units (id, state, variant_id, order_id, shipment_id, created_at, updated_at, pending, line_item_id, quantity, original_return_item_id) FROM stdin;
1	on_hand	1	1	1	2021-01-13 23:21:59.535396	2021-01-13 23:21:59.535396	t	1	1	\N
2	on_hand	2	2	2	2021-01-13 23:21:59.747333	2021-01-13 23:21:59.747333	t	2	1	\N
16	on_hand	235	4	16	2021-01-14 21:57:57.880565	2021-01-14 21:58:22.908095	f	9	1	\N
19	on_hand	235	5	19	2021-01-17 22:24:17.298932	2021-01-17 22:24:37.097409	f	10	1	\N
\.


--
-- Data for Name: spree_line_items; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_line_items (id, variant_id, order_id, quantity, price, created_at, updated_at, currency, cost_price, tax_category_id, adjustment_total, additional_tax_total, promo_total, included_tax_total, pre_tax_amount, taxable_adjustment_total, non_taxable_adjustment_total) FROM stdin;
1	1	1	1	87.99	2021-01-13 23:21:59.197932	2021-01-13 23:21:59.252365	USD	\N	1	0.00	0.00	0.00	0.00	87.9900	0.00	0.00
2	2	2	1	87.99	2021-01-13 23:21:59.289016	2021-01-13 23:21:59.32777	USD	\N	1	0.00	0.00	0.00	0.00	87.9900	0.00	0.00
10	235	5	1	47990.00	2021-01-17 20:26:48.359717	2021-01-17 22:24:36.833456	CLP	\N	1	0.00	0.00	0.00	7662.27	40327.7311	0.00	0.00
6	235	3	1	47990.00	2021-01-14 21:41:45.799056	2021-01-14 21:42:08.009825	USD	\N	1	9118.10	9118.10	0.00	0.00	47990.0000	0.00	0.00
9	235	4	1	47990.00	2021-01-14 21:57:39.757503	2021-01-14 21:58:22.777666	CLP	\N	1	0.00	0.00	0.00	7662.27	40327.7311	0.00	0.00
\.


--
-- Data for Name: spree_log_entries; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_log_entries (id, source_type, source_id, details, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_oauth_access_grants; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_oauth_access_grants (id, resource_owner_id, application_id, token, expires_in, redirect_uri, created_at, revoked_at, scopes) FROM stdin;
\.


--
-- Data for Name: spree_oauth_access_tokens; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_oauth_access_tokens (id, resource_owner_id, application_id, token, refresh_token, expires_in, revoked_at, created_at, scopes, previous_refresh_token) FROM stdin;
1	2	\N	GAiNhor9vDQz1hXQcczAhy03_hsHHfIpef-IBjN8SX4	\N	\N	\N	2021-01-14 01:58:46.244585	\N	
2	1	\N	20R1dLgz97wI-G54yBqsa7sZ84T6j4MGaAbxDAKeKtE	\N	\N	\N	2021-01-14 15:40:42.719812	\N	
\.


--
-- Data for Name: spree_oauth_applications; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_oauth_applications (id, name, uid, secret, redirect_uri, scopes, confidential, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_option_type_prototypes; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_option_type_prototypes (prototype_id, option_type_id, id) FROM stdin;
\.


--
-- Data for Name: spree_option_types; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_option_types (id, name, presentation, "position", created_at, updated_at) FROM stdin;
1	color	Color	1	2021-01-13 23:19:25.253754	2021-01-13 23:19:25.769056
3	talla	Talla	2	2021-01-13 23:19:25.282672	2021-01-14 16:46:32.860716
\.


--
-- Data for Name: spree_option_value_variants; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_option_value_variants (variant_id, option_value_id, id) FROM stdin;
117	12	1
117	23	2
118	3	3
118	23	4
119	13	5
119	23	6
120	13	7
120	23	8
121	9	9
121	23	10
122	5	11
122	23	12
123	12	13
123	23	14
124	4	15
124	23	16
125	1	17
125	23	18
126	16	19
126	23	20
127	16	21
127	23	22
128	16	23
128	23	24
129	7	25
129	23	26
130	1	27
130	23	28
131	7	29
131	23	30
132	5	31
132	23	32
133	7	33
133	23	34
134	17	35
134	23	36
135	7	37
135	23	38
136	4	39
136	23	40
137	5	41
137	23	42
138	19	43
138	23	44
139	7	45
139	23	46
140	11	47
140	23	48
141	7	49
141	23	50
142	6	51
142	23	52
143	13	53
143	23	54
144	5	55
144	23	56
145	10	57
145	23	58
146	15	59
146	23	60
147	16	61
147	23	62
148	5	63
148	23	64
149	13	65
149	23	66
150	10	67
150	23	68
151	4	69
151	23	70
152	9	71
152	20	72
152	23	73
153	6	74
153	20	75
153	23	76
154	8	77
154	20	78
154	23	79
155	13	80
155	20	81
155	23	82
156	4	83
156	20	84
156	23	85
157	8	86
157	20	87
157	23	88
158	5	89
158	20	90
158	23	91
159	1	92
159	20	93
159	23	94
160	16	95
160	20	96
160	23	97
161	6	98
161	20	99
161	23	100
162	4	101
162	20	102
162	23	103
163	17	104
163	20	105
163	23	106
164	3	107
164	20	108
164	23	109
165	4	110
165	20	111
165	23	112
166	7	113
166	20	114
166	23	115
167	16	116
167	20	117
167	23	118
168	16	119
168	20	120
168	23	121
169	16	122
169	20	123
169	23	124
170	3	125
170	20	126
170	23	127
171	16	128
171	20	129
171	23	130
172	10	131
172	20	132
172	23	133
173	3	134
173	20	135
173	23	136
174	5	137
174	23	138
175	12	139
175	23	140
176	13	141
176	23	142
177	1	143
177	23	144
178	8	145
178	23	146
179	16	147
179	23	148
180	17	149
180	23	150
181	11	151
181	23	152
182	17	153
182	23	154
183	1	155
183	23	156
184	17	157
184	23	158
185	6	159
185	23	160
186	12	161
186	23	162
187	3	163
187	23	164
188	5	165
188	23	166
189	12	167
189	23	168
190	12	169
190	23	170
191	3	171
191	23	172
192	3	173
192	23	174
193	1	175
193	23	176
194	4	177
194	23	178
195	10	179
195	23	180
196	7	181
196	23	182
197	4	183
197	23	184
198	1	185
198	23	186
199	1	187
199	23	188
200	6	189
200	23	190
201	17	191
201	23	192
202	13	193
202	23	194
203	1	195
203	23	196
204	10	197
204	23	198
205	1	199
205	23	200
206	12	201
206	23	202
207	16	203
207	23	204
208	1	205
208	23	206
209	4	207
209	23	208
210	9	209
210	23	210
211	12	211
211	23	212
212	14	213
212	23	214
213	7	215
213	23	216
214	11	217
214	23	218
215	17	219
215	23	220
216	4	221
216	23	222
217	4	223
217	23	224
218	4	225
218	23	226
219	6	227
219	23	228
220	9	229
220	23	230
221	16	231
221	23	232
222	7	233
222	23	234
223	17	235
223	23	236
224	12	237
224	23	238
225	2	239
225	23	240
226	16	241
226	23	242
227	4	243
227	23	244
228	4	245
228	23	246
229	4	247
229	23	248
230	7	249
230	23	250
231	17	251
231	23	252
232	12	253
232	23	254
235	3	255
236	1	256
238	7	257
238	25	258
239	4	259
239	25	260
241	17	261
241	25	262
242	4	263
242	25	264
244	4	265
244	26	266
245	17	267
245	26	268
\.


--
-- Data for Name: spree_option_values; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_option_values (id, "position", name, presentation, option_type_id, created_at, updated_at) FROM stdin;
1	1	white	#FFFFFF	1	2021-01-13 23:19:25.327154	2021-01-13 23:19:25.327154
2	2	purple	#800080	1	2021-01-13 23:19:25.418707	2021-01-13 23:19:25.418707
3	3	red	#FF0000	1	2021-01-13 23:19:25.452674	2021-01-13 23:19:25.452674
4	4	black	#000000	1	2021-01-13 23:19:25.483047	2021-01-13 23:19:25.483047
5	5	brown	#8B4513	1	2021-01-13 23:19:25.501425	2021-01-13 23:19:25.501425
6	6	green	#228C22	1	2021-01-13 23:19:25.521613	2021-01-13 23:19:25.521613
7	7	grey	#808080	1	2021-01-13 23:19:25.539062	2021-01-13 23:19:25.539062
8	8	orange	#FF8800	1	2021-01-13 23:19:25.556635	2021-01-13 23:19:25.556635
9	9	burgundy	#A8003B	1	2021-01-13 23:19:25.573412	2021-01-13 23:19:25.573412
10	10	beige	#E1C699	1	2021-01-13 23:19:25.59062	2021-01-13 23:19:25.59062
11	11	mint	#AAF0D1	1	2021-01-13 23:19:25.607549	2021-01-13 23:19:25.607549
12	12	blue	#0000FF	1	2021-01-13 23:19:25.625153	2021-01-13 23:19:25.625153
13	13	dark_blue	#00008b	1	2021-01-13 23:19:25.641561	2021-01-13 23:19:25.641561
14	14	khaki	#BDB76B	1	2021-01-13 23:19:25.658078	2021-01-13 23:19:25.658078
15	15	yellow	#FFFF00	1	2021-01-13 23:19:25.675821	2021-01-13 23:19:25.675821
16	16	light_blue	#add8e6	1	2021-01-13 23:19:25.701172	2021-01-13 23:19:25.701172
17	17	pink	#FFA6C9	1	2021-01-13 23:19:25.720344	2021-01-13 23:19:25.720344
18	18	lila	#cf9de6	1	2021-01-13 23:19:25.746622	2021-01-13 23:19:25.746622
19	19	ecru	#F4F2D6	1	2021-01-13 23:19:25.764928	2021-01-13 23:19:25.764928
23	1	xs	XS	3	2021-01-13 23:19:25.834336	2021-01-13 23:19:25.834336
24	2	s	S	3	2021-01-13 23:19:25.851599	2021-01-13 23:19:25.851599
25	3	m	M	3	2021-01-13 23:19:25.867823	2021-01-13 23:19:25.867823
26	4	l	L	3	2021-01-13 23:19:25.884257	2021-01-13 23:19:25.884257
27	5	xl	XL	3	2021-01-13 23:19:25.902545	2021-01-13 23:19:25.902545
\.


--
-- Data for Name: spree_order_promotions; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_order_promotions (order_id, promotion_id, id) FROM stdin;
\.


--
-- Data for Name: spree_orders; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_orders (id, number, item_total, total, state, adjustment_total, user_id, completed_at, bill_address_id, ship_address_id, payment_total, shipment_state, payment_state, email, special_instructions, created_at, updated_at, currency, last_ip_address, created_by_id, shipment_total, additional_tax_total, promo_total, channel, included_tax_total, item_count, approver_id, approved_at, confirmation_delivered, considered_risky, token, canceled_at, canceler_id, store_id, state_lock_version, taxable_adjustment_total, non_taxable_adjustment_total) FROM stdin;
3	R615382515	0.00	0.00	address	0.00	2	\N	3	3	0.00	\N	\N	francisca.vielma@gmail.com	\N	2021-01-14 01:59:06.268699	2021-01-14 21:42:08.564719	USD	127.0.0.1	2	0.00	0.00	0.00	spree	0.00	1	1	2021-01-14 21:33:41.617697	f	f	Oi6ido1T1KFFBR1LIrmvSg1610581242777	\N	\N	1	10	0.00	0.00
1	R123456789	87.99	96.79	complete	8.80	\N	2021-01-12 23:21:59.776057	\N	\N	0.00	pending	balance_due	spree@example.com	\N	2021-01-13 23:21:59.109997	2021-01-13 23:22:00.343863	USD	\N	\N	0.00	0.00	0.00	spree	0.00	1	\N	\N	f	f	5u39BhTBSSKTliJbx6ypGA1610580119110	\N	\N	1	0	0.00	0.00
2	R987654321	87.99	101.79	complete	8.80	\N	2021-01-12 23:21:59.793342	2	1	0.00	pending	balance_due	spree@example.com	\N	2021-01-13 23:21:59.142389	2021-01-13 23:22:00.752585	USD	\N	\N	5.00	0.00	0.00	spree	0.00	1	\N	\N	f	f	YAqy0lUSK2pKKxHq_82UuQ1610580119142	\N	\N	1	0	0.00	0.00
4	R148207395	47990.00	52990.00	complete	0.00	1	2021-01-14 21:58:23.152278	4	4	0.00	pending	balance_due	spree@example.com	\N	2021-01-14 21:43:34.907548	2021-01-14 21:58:23.152278	CLP	127.0.0.1	1	5000.00	0.00	0.00	spree	8460.59	1	\N	\N	t	f	lgionrNtt6alPMY1S-UC6A1610660559824	\N	\N	1	6	0.00	0.00
5	R067066220	47990.00	52990.00	complete	0.00	1	2021-01-17 22:24:37.37274	4	4	0.00	pending	balance_due	spree@example.com	\N	2021-01-17 20:26:47.824269	2021-01-17 22:24:37.37274	CLP	::1	1	5000.00	0.00	0.00	spree	8460.59	1	\N	\N	t	f	nsAPFK09hXLDLKwEB_Qglw1610854606815	\N	\N	1	5	0.00	0.00
\.


--
-- Data for Name: spree_payment_capture_events; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_payment_capture_events (id, amount, payment_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_payment_methods; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_payment_methods (id, type, name, description, active, deleted_at, created_at, updated_at, display_on, auto_capture, preferences, "position", store_id) FROM stdin;
1	Spree::PaymentMethod::StoreCredit	Store Credit	Store Credit	t	\N	2021-01-13 22:59:11.031663	2021-01-13 22:59:11.031663	back_end	\N	\N	1	\N
2	Spree::Gateway::Bogus	Credit Card	Bogus payment gateway.	t	\N	2021-01-13 23:19:24.540257	2021-01-13 23:19:24.540257	both	\N	---\n:server: test\n:test_mode: true\n	2	\N
3	Spree::PaymentMethod::Check	Check	Pay by check.	t	\N	2021-01-13 23:19:24.572974	2021-01-13 23:19:24.572974	both	\N	\N	3	\N
\.


--
-- Data for Name: spree_payments; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_payments (id, amount, order_id, source_type, source_id, payment_method_id, state, response_code, avs_response, created_at, updated_at, number, cvv_response_code, cvv_response_message, intent_client_key) FROM stdin;
1	96.79	1	Spree::CreditCard	1	2	pending	12345	\N	2021-01-13 23:22:00.340333	2021-01-13 23:22:00.340333	P8KOOGLZ	\N	\N	\N
2	101.79	2	Spree::CreditCard	1	2	pending	12345	\N	2021-01-13 23:22:00.748596	2021-01-13 23:22:00.748596	PS0TO8SE	\N	\N	\N
3	52990.00	4	\N	\N	3	checkout	\N	\N	2021-01-14 21:58:22.412417	2021-01-14 21:58:22.412417	PKEWP2LA	\N	\N	\N
4	52990.00	5	\N	\N	3	checkout	\N	\N	2021-01-17 22:24:36.350922	2021-01-17 22:24:36.350922	PEBIADBD	\N	\N	\N
\.


--
-- Data for Name: spree_preferences; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_preferences (id, value, key, created_at, updated_at) FROM stdin;
1	--- 233\n	spree/app_configuration/default_country_id	2021-01-13 22:59:39.067541	2021-01-13 22:59:39.067541
2	--- CLP\n	spree/app_configuration/currency	2021-01-13 23:19:28.33523	2021-01-14 15:17:12.73733
3	--- logo_nike.png\n	spree/app_configuration/logo	2021-01-15 15:06:44.169358	2021-01-16 16:51:58.414958
\.


--
-- Data for Name: spree_prices; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_prices (id, variant_id, amount, currency, deleted_at, created_at, updated_at) FROM stdin;
1	1	87.99	USD	\N	2021-01-13 23:19:28.571743	2021-01-13 23:19:28.571743
2	2	21.99	USD	\N	2021-01-13 23:19:28.794229	2021-01-13 23:19:28.794229
68	68	63.99	USD	2021-01-17 22:45:34.530258	2021-01-13 23:19:41.423523	2021-01-17 22:45:34.53027
99	99	26.99	USD	2021-01-17 19:59:05.233087	2021-01-13 23:19:50.652033	2021-01-17 19:59:05.233099
107	107	26.99	USD	2021-01-17 19:59:07.100161	2021-01-13 23:19:52.802995	2021-01-17 19:59:07.100196
37	37	42.99	USD	2021-01-17 19:59:10.742068	2021-01-13 23:19:35.486377	2021-01-17 19:59:10.742086
82	82	51.99	USD	2021-01-17 19:59:13.861076	2021-01-13 23:19:44.482882	2021-01-17 19:59:13.861085
47	47	14.99	USD	2021-01-17 22:45:49.927245	2021-01-13 23:19:37.467535	2021-01-17 22:45:49.927254
91	91	53.99	USD	2021-01-17 19:59:15.886996	2021-01-13 23:19:48.06144	2021-01-17 19:59:15.887006
86	86	66.99	USD	2021-01-17 19:59:18.020048	2021-01-13 23:19:46.097376	2021-01-17 19:59:18.02006
98	98	84.99	USD	2021-01-17 19:59:21.432988	2021-01-13 23:19:50.334658	2021-01-17 19:59:21.432997
100	100	20.99	USD	2021-01-17 19:59:23.458072	2021-01-13 23:19:50.934539	2021-01-17 19:59:23.458081
24	24	66.99	USD	2021-01-17 19:59:27.718683	2021-01-13 23:19:32.903397	2021-01-17 19:59:27.718701
50	50	32.99	USD	2021-01-17 19:59:29.747391	2021-01-13 23:19:38.016697	2021-01-17 19:59:29.747401
22	22	25.99	USD	2021-01-17 19:59:32.087002	2021-01-13 23:19:32.551484	2021-01-17 19:59:32.087011
27	27	71.99	USD	2021-01-17 19:59:35.120492	2021-01-13 23:19:33.474659	2021-01-17 19:59:35.120503
88	88	47.99	USD	2021-01-17 19:59:37.519876	2021-01-13 23:19:46.602172	2021-01-17 19:59:37.519914
10	10	75.99	USD	2021-01-17 19:59:39.758477	2021-01-13 23:19:30.239514	2021-01-17 19:59:39.758488
40	40	22.99	USD	2021-01-17 19:59:44.515603	2021-01-13 23:19:36.069096	2021-01-17 19:59:44.515613
93	93	52.99	USD	2021-01-17 19:59:46.744409	2021-01-13 23:19:48.741689	2021-01-17 19:59:46.744419
74	74	50.99	USD	2021-01-17 19:59:50.583039	2021-01-13 23:19:42.618556	2021-01-17 19:59:50.583052
73	73	71.99	USD	2021-01-17 19:59:54.43359	2021-01-13 23:19:42.430534	2021-01-17 19:59:54.4336
39	39	13.99	USD	\N	2021-01-13 23:19:35.869806	2021-01-13 23:19:35.869806
23	23	26.99	USD	2021-01-17 20:00:01.285803	2021-01-13 23:19:32.72719	2021-01-17 20:00:01.285812
25	25	21.99	USD	2021-01-17 20:00:05.867577	2021-01-13 23:19:33.081829	2021-01-17 20:00:05.867587
29	29	30.99	USD	2021-01-17 20:00:09.560234	2021-01-13 23:19:33.872472	2021-01-17 20:00:09.560246
115	115	71.99	USD	2021-01-17 20:00:12.330539	2021-01-13 23:19:55.630241	2021-01-17 20:00:12.330548
116	116	57.99	USD	2021-01-17 20:00:15.621427	2021-01-13 23:19:55.996829	2021-01-17 20:00:15.621437
20	20	89.99	USD	2021-01-17 20:00:18.171904	2021-01-13 23:19:32.08495	2021-01-17 20:00:18.171914
46	46	54.99	USD	2021-01-17 20:00:23.989139	2021-01-13 23:19:37.278896	2021-01-17 20:00:23.989149
66	66	60.99	USD	2021-01-17 20:00:26.649993	2021-01-13 23:19:41.035734	2021-01-17 20:00:26.650002
44	44	46.99	USD	2021-01-17 20:00:30.082104	2021-01-13 23:19:36.858494	2021-01-17 20:00:30.082113
41	41	20.99	USD	2021-01-17 20:00:33.305983	2021-01-13 23:19:36.269233	2021-01-17 20:00:33.305993
36	36	63.99	USD	2021-01-17 20:00:36.310688	2021-01-13 23:19:35.286405	2021-01-17 20:00:36.310698
48	48	38.99	USD	2021-01-17 20:00:38.971021	2021-01-13 23:19:37.648463	2021-01-17 20:00:38.971031
38	38	58.99	USD	2021-01-17 20:00:41.473172	2021-01-13 23:19:35.685309	2021-01-17 20:00:41.473184
49	49	87.99	USD	2021-01-17 20:00:44.047014	2021-01-13 23:19:37.837822	2021-01-17 20:00:44.047037
33	33	80.99	USD	2021-01-17 20:00:50.930797	2021-01-13 23:19:34.651576	2021-01-17 20:00:50.930809
89	89	64.99	USD	2021-01-17 20:00:53.416633	2021-01-13 23:19:46.986706	2021-01-17 20:00:53.416642
92	92	74.99	USD	2021-01-17 20:00:58.165377	2021-01-13 23:19:48.37797	2021-01-17 20:00:58.165391
8	8	42.99	USD	2021-01-17 20:01:10.698356	2021-01-13 23:19:29.874863	2021-01-17 20:01:10.698366
85	85	15.99	USD	2021-01-17 20:01:13.693332	2021-01-13 23:19:45.853223	2021-01-17 20:01:13.693341
63	63	81.99	USD	2021-01-17 20:01:15.969245	2021-01-13 23:19:40.48276	2021-01-17 20:01:15.969254
81	81	31.99	USD	2021-01-17 20:01:18.849269	2021-01-13 23:19:44.202811	2021-01-17 20:01:18.84931
76	76	82.99	USD	2021-01-17 20:01:20.897636	2021-01-13 23:19:43.007116	2021-01-17 20:01:20.897646
75	75	39.99	USD	2021-01-17 20:01:24.676597	2021-01-13 23:19:42.809456	2021-01-17 20:01:24.676606
95	95	92.99	USD	2021-01-17 20:01:26.575164	2021-01-13 23:19:49.444951	2021-01-17 20:01:26.575175
31	31	84.99	USD	2021-01-17 20:01:28.366591	2021-01-13 23:19:34.249343	2021-01-17 20:01:28.366601
9	9	53.99	USD	2021-01-17 20:01:33.137563	2021-01-13 23:19:30.059877	2021-01-17 20:01:33.137574
35	35	12.99	USD	2021-01-17 20:01:35.635228	2021-01-13 23:19:35.054472	2021-01-17 20:01:35.635241
55	55	32.99	USD	2021-01-17 20:01:40.321385	2021-01-13 23:19:38.92384	2021-01-17 20:01:40.321395
54	54	58.99	USD	2021-01-17 20:01:43.35968	2021-01-13 23:19:38.743661	2021-01-17 20:01:43.35969
106	106	33.99	USD	2021-01-17 20:01:46.299293	2021-01-13 23:19:52.571332	2021-01-17 20:01:46.299303
117	117	87.99	USD	\N	2021-01-13 23:21:24.487778	2021-01-13 23:21:24.487778
118	118	21.99	USD	\N	2021-01-13 23:21:24.685999	2021-01-13 23:21:24.685999
87	87	97.99	USD	2021-01-14 21:21:13.877784	2021-01-13 23:19:46.348859	2021-01-14 21:21:13.877806
70	70	92.99	USD	2021-01-14 21:21:18.077067	2021-01-13 23:19:41.785024	2021-01-14 21:21:18.077077
84	84	88.99	USD	2021-01-14 21:21:21.964107	2021-01-13 23:19:45.112311	2021-01-14 21:21:21.964118
19	19	36.99	USD	2021-01-14 21:21:25.382488	2021-01-13 23:19:31.906426	2021-01-14 21:21:25.3825
64	64	77.99	USD	2021-01-14 21:21:36.184719	2021-01-13 23:19:40.670906	2021-01-14 21:21:36.184734
96	96	18.99	USD	2021-01-14 21:21:39.585128	2021-01-13 23:19:49.779585	2021-01-14 21:21:39.585138
26	26	74.99	USD	2021-01-17 19:55:15.501411	2021-01-13 23:19:33.268558	2021-01-17 19:55:15.501421
32	32	52.99	USD	2021-01-17 19:55:19.793968	2021-01-13 23:19:34.448855	2021-01-17 19:55:19.793979
94	94	38.99	USD	2021-01-17 19:55:23.809586	2021-01-13 23:19:49.087527	2021-01-17 19:55:23.809597
34	34	17.99	USD	2021-01-17 19:55:27.496742	2021-01-13 23:19:34.845705	2021-01-17 19:55:27.496752
60	60	74.99	USD	2021-01-17 19:55:34.596627	2021-01-13 23:19:39.809279	2021-01-17 19:55:34.596638
21	21	92.99	USD	2021-01-17 19:56:17.836554	2021-01-13 23:19:32.328928	2021-01-17 19:56:17.836565
51	51	82.99	USD	2021-01-17 19:56:21.363494	2021-01-13 23:19:38.204332	2021-01-17 19:56:21.363511
28	28	44.99	USD	2021-01-17 19:56:29.244705	2021-01-13 23:19:33.68354	2021-01-17 19:56:29.244715
15	15	94.99	USD	2021-01-17 19:56:33.463974	2021-01-13 23:19:31.133469	2021-01-17 19:56:33.463984
59	59	85.99	USD	2021-01-17 19:56:37.494146	2021-01-13 23:19:39.632944	2021-01-17 19:56:37.494167
97	97	75.99	USD	2021-01-17 19:56:45.168036	2021-01-13 23:19:50.067155	2021-01-17 19:56:45.168103
18	18	77.99	USD	2021-01-17 19:56:49.929097	2021-01-13 23:19:31.702859	2021-01-17 19:56:49.929106
103	103	66.99	USD	2021-01-17 19:56:54.3626	2021-01-13 23:19:51.723976	2021-01-17 19:56:54.36261
108	108	33.99	USD	2021-01-17 19:56:57.785777	2021-01-13 23:19:53.072837	2021-01-17 19:56:57.785787
109	109	33.99	USD	2021-01-17 19:57:01.083542	2021-01-13 23:19:53.441426	2021-01-17 19:57:01.083553
104	104	34.99	USD	2021-01-17 19:57:04.46293	2021-01-13 23:19:51.999983	2021-01-17 19:57:04.462939
4	4	85.99	USD	2021-01-17 19:57:11.568835	2021-01-13 23:19:29.153862	2021-01-17 19:57:11.568844
83	83	85.99	USD	2021-01-17 19:57:15.656641	2021-01-13 23:19:44.819135	2021-01-17 19:57:15.656651
43	43	20.99	USD	2021-01-17 19:57:19.205113	2021-01-13 23:19:36.661338	2021-01-17 19:57:19.205123
42	42	60.99	USD	2021-01-17 19:57:23.564554	2021-01-13 23:19:36.471212	2021-01-17 19:57:23.564563
5	5	45.99	USD	2021-01-17 19:57:27.514027	2021-01-13 23:19:29.341475	2021-01-17 19:57:27.514036
111	111	37.99	USD	2021-01-17 19:57:31.952512	2021-01-13 23:19:54.174574	2021-01-17 19:57:31.952521
110	110	57.99	USD	2021-01-17 19:57:36.049433	2021-01-13 23:19:53.804646	2021-01-17 19:57:36.04945
67	67	64.99	USD	2021-01-17 19:57:39.361221	2021-01-13 23:19:41.227703	2021-01-17 19:57:39.361231
58	58	41.99	USD	2021-01-17 19:57:43.493645	2021-01-13 23:19:39.459781	2021-01-17 19:57:43.493655
105	105	39.99	USD	2021-01-17 19:57:48.500403	2021-01-13 23:19:52.29206	2021-01-17 19:57:48.500412
78	78	31.99	USD	2021-01-17 19:57:56.583687	2021-01-13 23:19:43.384009	2021-01-17 19:57:56.583697
7	7	33.99	USD	2021-01-17 19:57:59.817896	2021-01-13 23:19:29.705561	2021-01-17 19:57:59.817907
16	16	63.99	USD	2021-01-17 19:58:03.628194	2021-01-13 23:19:31.310207	2021-01-17 19:58:03.628203
61	61	12.99	USD	2021-01-17 19:58:07.875711	2021-01-13 23:19:39.993947	2021-01-17 19:58:07.875722
77	77	23.99	USD	2021-01-17 19:58:12.08616	2021-01-13 23:19:43.202259	2021-01-17 19:58:12.086169
53	53	61.99	USD	2021-01-17 19:58:17.700123	2021-01-13 23:19:38.570705	2021-01-17 19:58:17.700133
69	69	90.99	USD	2021-01-17 19:58:27.328068	2021-01-13 23:19:41.606231	2021-01-17 19:58:27.328077
11	11	84.99	USD	2021-01-17 19:58:30.809953	2021-01-13 23:19:30.416268	2021-01-17 19:58:30.809962
112	112	50.99	USD	2021-01-17 19:58:34.121576	2021-01-13 23:19:54.563577	2021-01-17 19:58:34.121585
114	114	27.99	USD	2021-01-17 19:58:37.78898	2021-01-13 23:19:55.247457	2021-01-17 19:58:37.78899
52	52	45.99	USD	2021-01-17 19:58:46.047093	2021-01-13 23:19:38.381498	2021-01-17 19:58:46.047103
62	62	98.99	USD	2021-01-17 19:58:52.498281	2021-01-13 23:19:40.180934	2021-01-17 19:58:52.49829
79	79	66.99	USD	2021-01-17 19:58:54.426408	2021-01-13 23:19:43.577298	2021-01-17 19:58:54.426418
45	45	65.99	USD	2021-01-17 19:58:56.101532	2021-01-13 23:19:37.049209	2021-01-17 19:58:56.101542
113	113	45.99	USD	2021-01-17 19:58:58.808343	2021-01-13 23:19:54.914297	2021-01-17 19:58:58.808356
72	72	75.99	USD	2021-01-17 19:59:01.057967	2021-01-13 23:19:42.179223	2021-01-17 19:59:01.057976
71	71	12.99	USD	2021-01-17 19:59:03.200896	2021-01-13 23:19:41.986213	2021-01-17 19:59:03.200907
215	215	26.99	USD	2021-01-17 19:59:05.330058	2021-01-13 23:21:43.711127	2021-01-17 19:59:05.330095
223	223	26.99	USD	2021-01-17 19:59:07.172658	2021-01-13 23:21:45.231437	2021-01-17 19:59:07.172667
163	163	14.99	USD	2021-01-17 22:45:50.022653	2021-01-13 23:21:32.682934	2021-01-17 22:45:50.022662
239	238	30999.00	CLP	\N	2021-01-17 22:55:27.826058	2021-01-17 22:55:27.826058
153	153	42.99	USD	2021-01-17 19:59:10.806417	2021-01-13 23:21:30.281345	2021-01-17 19:59:10.806426
198	198	51.99	USD	2021-01-17 19:59:13.931814	2021-01-13 23:21:41.069066	2021-01-17 19:59:13.931823
207	207	53.99	USD	2021-01-17 19:59:15.963063	2021-01-13 23:21:42.565073	2021-01-17 19:59:15.963073
202	202	66.99	USD	2021-01-17 19:59:18.096242	2021-01-13 23:21:41.844383	2021-01-17 19:59:18.096262
214	214	84.99	USD	2021-01-17 19:59:21.491114	2021-01-13 23:21:43.528	2021-01-17 19:59:21.491124
129	129	61.99	USD	2021-01-17 19:59:25.670173	2021-01-13 23:21:26.863406	2021-01-17 19:59:25.670181
140	140	66.99	USD	2021-01-17 19:59:27.8242	2021-01-13 23:21:28.384398	2021-01-17 19:59:27.824213
166	166	32.99	USD	2021-01-17 19:59:29.804585	2021-01-13 23:21:34.559753	2021-01-17 19:59:29.804594
138	138	25.99	USD	2021-01-17 19:59:32.167723	2021-01-13 23:21:28.137212	2021-01-17 19:59:32.167732
143	143	71.99	USD	2021-01-17 19:59:35.174433	2021-01-13 23:21:28.769842	2021-01-17 19:59:35.174444
204	204	47.99	USD	2021-01-17 19:59:37.600557	2021-01-13 23:21:42.132039	2021-01-17 19:59:37.600565
126	126	75.99	USD	2021-01-17 19:59:39.850922	2021-01-13 23:21:26.43035	2021-01-17 19:59:39.850932
156	156	22.99	USD	2021-01-17 19:59:44.574461	2021-01-13 23:21:30.993054	2021-01-17 19:59:44.57447
217	217	83.99	USD	2021-01-17 19:59:48.752343	2021-01-13 23:21:44.012586	2021-01-17 19:59:48.752352
155	155	13.99	USD	\N	2021-01-13 23:21:30.763255	2021-01-13 23:21:30.763255
190	190	50.99	USD	2021-01-17 19:59:50.675259	2021-01-13 23:21:39.920319	2021-01-17 19:59:50.675321
189	189	71.99	USD	2021-01-17 19:59:54.499253	2021-01-13 23:21:39.738925	2021-01-17 19:59:54.499262
139	139	26.99	USD	2021-01-17 20:00:01.354907	2021-01-13 23:21:28.249653	2021-01-17 20:00:01.354915
141	141	21.99	USD	2021-01-17 20:00:05.94058	2021-01-13 23:21:28.544033	2021-01-17 20:00:05.940588
145	145	30.99	USD	2021-01-17 20:00:09.64199	2021-01-13 23:21:29.080732	2021-01-17 20:00:09.642
231	231	71.99	USD	2021-01-17 20:00:12.417709	2021-01-13 23:21:47.001155	2021-01-17 20:00:12.417718
232	232	57.99	USD	2021-01-17 20:00:15.708898	2021-01-13 23:21:47.25402	2021-01-17 20:00:15.708907
172	172	65.99	USD	2021-01-17 20:00:20.588327	2021-01-13 23:21:36.256232	2021-01-17 20:00:20.588336
162	162	54.99	USD	2021-01-17 20:00:24.063459	2021-01-13 23:21:32.510366	2021-01-17 20:00:24.063468
182	182	60.99	USD	2021-01-17 20:00:26.718457	2021-01-13 23:21:38.112855	2021-01-17 20:00:26.718464
160	160	46.99	USD	2021-01-17 20:00:30.154001	2021-01-13 23:21:31.819235	2021-01-17 20:00:30.154018
157	157	20.99	USD	2021-01-17 20:00:33.374415	2021-01-13 23:21:31.211511	2021-01-17 20:00:33.374424
152	152	63.99	USD	2021-01-17 20:00:36.366619	2021-01-13 23:21:30.087831	2021-01-17 20:00:36.366638
164	164	38.99	USD	2021-01-17 20:00:39.04204	2021-01-13 23:21:34.084319	2021-01-17 20:00:39.042049
154	154	58.99	USD	2021-01-17 20:00:41.537489	2021-01-13 23:21:30.564397	2021-01-17 20:00:41.537498
181	181	25.99	USD	2021-01-17 20:00:47.736129	2021-01-13 23:21:37.825923	2021-01-17 20:00:47.736139
149	149	80.99	USD	2021-01-17 20:00:51.02153	2021-01-13 23:21:29.604834	2021-01-17 20:00:51.02154
205	205	64.99	USD	2021-01-17 20:00:53.480685	2021-01-13 23:21:42.315134	2021-01-17 20:00:53.480694
208	208	74.99	USD	2021-01-17 20:00:58.231055	2021-01-13 23:21:42.688413	2021-01-17 20:00:58.231064
124	124	42.99	USD	2021-01-17 20:01:10.77461	2021-01-13 23:21:26.013556	2021-01-17 20:01:10.774619
201	201	15.99	USD	2021-01-17 20:01:13.758935	2021-01-13 23:21:41.643248	2021-01-17 20:01:13.758943
179	179	81.99	USD	2021-01-17 20:01:16.034732	2021-01-13 23:21:37.44465	2021-01-17 20:01:16.034741
197	197	31.99	USD	2021-01-17 20:01:18.966672	2021-01-13 23:21:40.9412	2021-01-17 20:01:18.966682
191	191	39.99	USD	2021-01-17 20:01:24.74089	2021-01-13 23:21:40.119372	2021-01-17 20:01:24.740899
211	211	92.99	USD	2021-01-17 20:01:26.669493	2021-01-13 23:21:43.10322	2021-01-17 20:01:26.669501
147	147	84.99	USD	2021-01-17 20:01:28.431023	2021-01-13 23:21:29.362342	2021-01-17 20:01:28.431031
125	125	53.99	USD	2021-01-17 20:01:33.230106	2021-01-13 23:21:26.232665	2021-01-17 20:01:33.230115
151	151	12.99	USD	2021-01-17 20:01:35.699497	2021-01-13 23:21:29.939328	2021-01-17 20:01:35.699506
171	171	32.99	USD	2021-01-17 20:01:40.389998	2021-01-13 23:21:36.014114	2021-01-17 20:01:40.390006
170	170	58.99	USD	2021-01-17 20:01:43.421957	2021-01-13 23:21:35.82277	2021-01-17 20:01:43.421966
222	222	33.99	USD	2021-01-17 20:01:46.38284	2021-01-13 23:21:44.921936	2021-01-17 20:01:46.382849
234	234	47990.00	CLP	\N	2021-01-14 16:50:46.523044	2021-01-14 16:50:46.523044
235	235	47990.00	CLP	\N	2021-01-14 16:53:12.109601	2021-01-14 16:53:12.109601
236	236	47990.00	CLP	\N	2021-01-14 20:02:40.201584	2021-01-14 20:02:40.201584
237	39	13990.00	CLP	\N	2021-01-14 20:34:51.664449	2021-01-14 20:34:51.664449
233	233	47990.00	CLP	2021-01-14 20:42:12.619859	2021-01-14 16:42:57.880968	2021-01-14 20:42:12.619869
14	14	44.99	USD	2021-01-14 21:18:28.516306	2021-01-13 23:19:30.950237	2021-01-14 21:18:28.516323
130	130	44.99	USD	2021-01-14 21:18:28.573831	2021-01-13 23:21:26.979356	2021-01-14 21:18:28.57384
30	30	93.99	USD	2021-01-14 21:18:51.01536	2021-01-13 23:19:34.048131	2021-01-14 21:18:51.015371
203	203	97.99	USD	2021-01-14 21:21:13.968329	2021-01-13 23:21:41.99423	2021-01-14 21:21:13.96834
186	186	92.99	USD	2021-01-14 21:21:18.180172	2021-01-13 23:21:39.131323	2021-01-14 21:21:18.180181
200	200	88.99	USD	2021-01-14 21:21:22.034082	2021-01-13 23:21:41.379121	2021-01-14 21:21:22.034091
180	180	77.99	USD	2021-01-14 21:21:36.238644	2021-01-13 23:21:37.596465	2021-01-14 21:21:36.238653
212	212	18.99	USD	2021-01-14 21:21:39.664293	2021-01-13 23:21:43.256766	2021-01-14 21:21:39.664302
206	206	73.99	USD	2021-01-17 19:55:10.387951	2021-01-13 23:21:42.443482	2021-01-17 19:55:10.38796
142	142	74.99	USD	2021-01-17 19:55:15.572157	2021-01-13 23:21:28.662163	2021-01-17 19:55:15.572165
148	148	52.99	USD	2021-01-17 19:55:19.869469	2021-01-13 23:21:29.481409	2021-01-17 19:55:19.869477
150	150	17.99	USD	2021-01-17 19:55:27.585868	2021-01-13 23:21:29.798364	2021-01-17 19:55:27.585876
176	176	74.99	USD	2021-01-17 19:55:34.681147	2021-01-13 23:21:36.878032	2021-01-17 19:55:34.681156
133	133	20.99	USD	2021-01-17 19:56:11.873163	2021-01-13 23:21:27.481895	2021-01-17 19:56:11.873171
137	137	92.99	USD	2021-01-17 19:56:17.913349	2021-01-13 23:21:28.012898	2021-01-17 19:56:17.913369
167	167	82.99	USD	2021-01-17 19:56:21.413598	2021-01-13 23:21:34.780235	2021-01-17 19:56:21.413607
131	131	94.99	USD	2021-01-17 19:56:33.547999	2021-01-13 23:21:27.1033	2021-01-17 19:56:33.548007
175	175	85.99	USD	2021-01-17 19:56:37.571435	2021-01-13 23:21:36.691118	2021-01-17 19:56:37.571443
218	218	99.99	USD	2021-01-17 19:56:42.1729	2021-01-13 23:21:44.173028	2021-01-17 19:56:42.172909
213	213	75.99	USD	2021-01-17 19:56:45.249187	2021-01-13 23:21:43.36936	2021-01-17 19:56:45.249197
134	134	77.99	USD	2021-01-17 19:56:49.995843	2021-01-13 23:21:27.627309	2021-01-17 19:56:49.995852
219	219	66.99	USD	2021-01-17 19:56:54.424973	2021-01-13 23:21:44.352443	2021-01-17 19:56:54.425015
225	225	33.99	USD	2021-01-17 19:57:01.128932	2021-01-13 23:21:45.698021	2021-01-17 19:57:01.12894
220	220	34.99	USD	2021-01-17 19:57:04.526976	2021-01-13 23:21:44.561876	2021-01-17 19:57:04.526984
173	173	79.99	USD	2021-01-17 19:57:08.313465	2021-01-13 23:21:36.400443	2021-01-17 19:57:08.313474
199	199	85.99	USD	2021-01-17 19:57:15.73502	2021-01-13 23:21:41.217562	2021-01-17 19:57:15.735029
159	159	20.99	USD	2021-01-17 19:57:19.283124	2021-01-13 23:21:31.622994	2021-01-17 19:57:19.283133
121	121	45.99	USD	2021-01-17 19:57:27.602219	2021-01-13 23:21:25.494316	2021-01-17 19:57:27.602226
227	227	37.99	USD	2021-01-17 19:57:32.02517	2021-01-13 23:21:46.053762	2021-01-17 19:57:32.025178
226	226	57.99	USD	2021-01-17 19:57:36.114615	2021-01-13 23:21:45.850508	2021-01-17 19:57:36.114625
183	183	64.99	USD	2021-01-17 19:57:39.443608	2021-01-13 23:21:38.368519	2021-01-17 19:57:39.443616
174	174	41.99	USD	2021-01-17 19:57:43.544429	2021-01-13 23:21:36.539003	2021-01-17 19:57:43.544437
196	196	85.99	USD	2021-01-17 19:57:52.758696	2021-01-13 23:21:40.807159	2021-01-17 19:57:52.758704
194	194	31.99	USD	2021-01-17 19:57:56.651803	2021-01-13 23:21:40.523601	2021-01-17 19:57:56.651811
123	123	33.99	USD	2021-01-17 19:57:59.860043	2021-01-13 23:21:25.854221	2021-01-17 19:57:59.860051
132	132	63.99	USD	2021-01-17 19:58:03.692339	2021-01-13 23:21:27.371253	2021-01-17 19:58:03.692348
177	177	12.99	USD	2021-01-17 19:58:07.944042	2021-01-13 23:21:37.095256	2021-01-17 19:58:07.944059
193	193	23.99	USD	2021-01-17 19:58:12.185835	2021-01-13 23:21:40.392215	2021-01-17 19:58:12.185844
122	122	57.99	USD	2021-01-17 19:58:21.761849	2021-01-13 23:21:25.669548	2021-01-17 19:58:21.761858
185	185	90.99	USD	2021-01-17 19:58:27.393884	2021-01-13 23:21:38.983538	2021-01-17 19:58:27.393925
127	127	84.99	USD	2021-01-17 19:58:30.883562	2021-01-13 23:21:26.590851	2021-01-17 19:58:30.88357
228	228	50.99	USD	2021-01-17 19:58:34.477117	2021-01-13 23:21:46.246324	2021-01-17 19:58:34.477126
230	230	27.99	USD	2021-01-17 19:58:37.857267	2021-01-13 23:21:46.628809	2021-01-17 19:58:37.857275
128	128	50.99	USD	2021-01-17 19:58:50.130621	2021-01-13 23:21:26.704434	2021-01-17 19:58:50.130633
178	178	98.99	USD	2021-01-17 19:58:52.567956	2021-01-13 23:21:37.282264	2021-01-17 19:58:52.567964
195	195	66.99	USD	2021-01-17 19:58:54.484377	2021-01-13 23:21:40.658362	2021-01-17 19:58:54.484386
161	161	65.99	USD	2021-01-17 19:58:56.160736	2021-01-13 23:21:32.080984	2021-01-17 19:58:56.160744
229	229	45.99	USD	2021-01-17 19:58:58.91871	2021-01-13 23:21:46.393421	2021-01-17 19:58:58.91872
146	146	93.99	USD	2021-01-14 21:18:51.116299	2021-01-13 23:21:29.209874	2021-01-14 21:18:51.11631
135	135	36.99	USD	2021-01-14 21:21:25.454765	2021-01-13 23:21:27.748244	2021-01-14 21:21:25.454774
90	90	73.99	USD	2021-01-17 19:55:10.244973	2021-01-13 23:19:47.695998	2021-01-17 19:55:10.244987
210	210	38.99	USD	2021-01-17 19:55:23.874944	2021-01-13 23:21:42.92457	2021-01-17 19:55:23.874953
17	17	20.99	USD	2021-01-17 19:56:11.79308	2021-01-13 23:19:31.491559	2021-01-17 19:56:11.793089
144	144	44.99	USD	2021-01-17 19:56:29.303638	2021-01-13 23:21:28.960427	2021-01-17 19:56:29.303646
102	102	99.99	USD	2021-01-17 19:56:42.092391	2021-01-13 23:19:51.425518	2021-01-17 19:56:42.0924
224	224	33.99	USD	2021-01-17 19:56:57.846821	2021-01-13 23:21:45.524079	2021-01-17 19:56:57.84683
57	57	79.99	USD	2021-01-17 19:57:08.243433	2021-01-13 23:19:39.281497	2021-01-17 19:57:08.243443
120	120	85.99	USD	2021-01-17 19:57:11.629377	2021-01-13 23:21:25.175103	2021-01-17 19:57:11.629386
158	158	60.99	USD	2021-01-17 19:57:23.620233	2021-01-13 23:21:31.43817	2021-01-17 19:57:23.620242
221	221	39.99	USD	2021-01-17 19:57:48.557362	2021-01-13 23:21:44.740148	2021-01-17 19:57:48.55737
80	80	85.99	USD	2021-01-17 19:57:52.682912	2021-01-13 23:19:43.791638	2021-01-17 19:57:52.682956
169	169	61.99	USD	2021-01-17 19:58:17.785395	2021-01-13 23:21:35.434487	2021-01-17 19:58:17.785404
6	6	57.99	USD	2021-01-17 19:58:21.69492	2021-01-13 23:19:29.516952	2021-01-17 19:58:21.694931
168	168	45.99	USD	2021-01-17 19:58:46.217458	2021-01-13 23:21:35.036396	2021-01-17 19:58:46.217467
12	12	50.99	USD	2021-01-17 19:58:50.048516	2021-01-13 23:19:30.597961	2021-01-17 19:58:50.048529
188	188	75.99	USD	2021-01-17 19:59:01.119242	2021-01-13 23:21:39.531622	2021-01-17 19:59:01.119251
187	187	12.99	USD	2021-01-17 19:59:03.265183	2021-01-13 23:21:39.361381	2021-01-17 19:59:03.265195
216	216	20.99	USD	2021-01-17 19:59:23.530629	2021-01-13 23:21:43.860241	2021-01-17 19:59:23.530636
13	13	61.99	USD	2021-01-17 19:59:25.623044	2021-01-13 23:19:30.781245	2021-01-17 19:59:25.623053
209	209	52.99	USD	2021-01-17 19:59:46.828706	2021-01-13 23:21:42.808319	2021-01-17 19:59:46.828714
101	101	83.99	USD	2021-01-17 19:59:48.685822	2021-01-13 23:19:51.177714	2021-01-17 19:59:48.685833
136	136	89.99	USD	2021-01-17 20:00:18.237893	2021-01-13 23:21:27.910075	2021-01-17 20:00:18.237902
56	56	65.99	USD	2021-01-17 20:00:20.505421	2021-01-13 23:19:39.108621	2021-01-17 20:00:20.50543
165	165	87.99	USD	2021-01-17 20:00:44.126448	2021-01-13 23:21:34.318043	2021-01-17 20:00:44.126458
65	65	25.99	USD	2021-01-17 20:00:47.666877	2021-01-13 23:19:40.856146	2021-01-17 20:00:47.666887
192	192	82.99	USD	2021-01-17 20:01:20.96975	2021-01-13 23:21:40.255377	2021-01-17 20:01:20.969759
3	3	57.99	USD	2021-01-17 20:01:22.914801	2021-01-13 23:19:28.975397	2021-01-17 20:01:22.914811
119	119	57.99	USD	2021-01-17 20:01:22.981001	2021-01-13 23:21:24.914014	2021-01-17 20:01:22.981009
184	184	63.99	USD	2021-01-17 22:45:34.751193	2021-01-13 23:21:38.639257	2021-01-17 22:45:34.751202
238	237	30999.00	CLP	\N	2021-01-17 22:47:02.333926	2021-01-17 22:47:02.333926
240	239	30999.00	CLP	\N	2021-01-17 22:56:11.076702	2021-01-17 22:56:11.076702
241	240	35090.00	CLP	\N	2021-01-17 23:05:13.420089	2021-01-17 23:05:13.420089
242	241	35090.00	CLP	\N	2021-01-17 23:08:18.675759	2021-01-17 23:08:18.675759
243	242	35090.00	CLP	\N	2021-01-17 23:08:39.072236	2021-01-17 23:08:39.072236
244	243	38990.00	CLP	\N	2021-01-17 23:12:21.463772	2021-01-17 23:12:21.463772
245	244	38990.00	CLP	\N	2021-01-17 23:16:57.008864	2021-01-17 23:16:57.008864
246	245	38990.00	CLP	\N	2021-01-17 23:17:24.439547	2021-01-17 23:17:24.439547
\.


--
-- Data for Name: spree_product_option_types; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_product_option_types (id, "position", product_id, option_type_id, created_at, updated_at) FROM stdin;
1	1	1	1	2021-01-13 23:19:28.527546	2021-01-13 23:19:28.527546
2	2	1	3	2021-01-13 23:19:28.534674	2021-01-13 23:19:28.534674
3	1	2	1	2021-01-13 23:19:28.757636	2021-01-13 23:19:28.757636
4	2	2	3	2021-01-13 23:19:28.764468	2021-01-13 23:19:28.764468
235	1	119	1	2021-01-17 22:54:48.321858	2021-01-17 22:54:48.321858
236	2	119	3	2021-01-17 22:54:48.370146	2021-01-17 22:54:48.370146
237	1	120	1	2021-01-17 23:06:21.019817	2021-01-17 23:06:21.019817
238	2	120	3	2021-01-17 23:06:21.051123	2021-01-17 23:06:21.051123
77	1	39	1	2021-01-13 23:19:35.832599	2021-01-13 23:19:35.832599
78	2	39	3	2021-01-13 23:19:35.839845	2021-01-13 23:19:35.839845
239	1	121	1	2021-01-17 23:15:15.170896	2021-01-17 23:15:15.170896
240	2	121	3	2021-01-17 23:15:15.192451	2021-01-17 23:15:15.192451
233	1	118	3	2021-01-14 16:51:55.629875	2021-01-14 16:51:55.629875
234	2	118	1	2021-01-14 16:51:55.740725	2021-01-14 16:51:55.740725
\.


--
-- Data for Name: spree_product_promotion_rules; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_product_promotion_rules (product_id, promotion_rule_id, id) FROM stdin;
\.


--
-- Data for Name: spree_product_properties; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_product_properties (id, value, product_id, property_id, created_at, updated_at, "position") FROM stdin;
978	gris	119	15	2021-01-17 22:47:02.434259	2021-01-17 22:50:06.415551	1
979	semiformal	119	18	2021-01-17 22:47:02.466549	2021-01-17 22:50:06.431595	2
982	algodón	119	6	2021-01-17 22:51:39.615792	2021-01-17 22:51:50.136589	3
988	vestido	120	18	2021-01-17 23:05:13.62205	2021-01-17 23:07:34.916168	1
991	nylon	121	6	2021-01-17 23:12:21.565055	2021-01-17 23:14:02.5243	1
137	Men	1	9	2021-01-13 23:20:17.478498	2021-01-13 23:20:17.478498	1
138	Men	1	10	2021-01-13 23:20:17.552222	2021-01-13 23:20:17.552222	2
141	10% Cotton 90% Elastan	1	6	2021-01-13 23:20:17.702306	2021-01-13 23:20:17.702306	5
142	Form	1	7	2021-01-13 23:20:17.761176	2021-01-13 23:20:17.761176	6
144	Shirts_denimshirt_87.99	1	3	2021-01-13 23:20:17.900164	2021-01-13 23:20:17.900164	8
341	Women	39	9	2021-01-13 23:20:36.864411	2021-01-13 23:20:36.864411	1
342	Women	39	10	2021-01-13 23:20:36.98715	2021-01-13 23:20:36.98715	2
345	50% Cotton 50% Elastan	39	6	2021-01-13 23:20:37.206561	2021-01-13 23:20:37.206561	5
346	Lose	39	7	2021-01-13 23:20:37.271019	2021-01-13 23:20:37.271019	6
348	Skirts_a-linesuedeskirt_13.99	39	3	2021-01-13 23:20:37.410465	2021-01-13 23:20:37.410465	8
789	Men	2	9	2021-01-13 23:21:10.659644	2021-01-13 23:21:10.659644	1
790	Men	2	10	2021-01-13 23:21:10.728942	2021-01-13 23:21:10.728942	2
793	10% Cotton 90% Elastan	2	6	2021-01-13 23:21:10.891768	2021-01-13 23:21:10.891768	5
794	Lose	2	7	2021-01-13 23:21:10.938952	2021-01-13 23:21:10.938952	6
796	Shirts_checkedshirt_21.99	2	3	2021-01-13 23:21:11.049499	2021-01-13 23:21:11.049499	8
974	algodón	118	6	2021-01-14 16:50:46.670047	2021-01-14 16:54:20.899047	1
976	mujer	118	17	2021-01-14 16:50:46.706304	2021-01-14 20:30:28.156431	2
\.


--
-- Data for Name: spree_products; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_products (id, name, description, available_on, deleted_at, slug, meta_description, meta_keywords, tax_category_id, shipping_category_id, created_at, updated_at, promotionable, meta_title, discontinue_on) FROM stdin;
14	3 4 Sleeve T Shirt	Iure blanditiis aut voluptas porro voluptatem. Est voluptates nobis et voluptas fugit vitae. Incidunt error minus explicabo enim blanditiis. Consectetur asperiores harum natus totam rerum ullam illo. Consequatur laboriosam qui accusantium labore et dolorum aut.	2021-01-13 23:19:30.868838	2021-01-14 21:18:28.589348	1610659108_3-4-sleeve-t-shirt	\N	\N	1	1	2021-01-13 23:19:30.910112	2021-01-14 21:18:28.589069	t	\N	\N
118	Vestido de tejido Fleece para mujer	El vestido de tejido Fleece Nike Sportswear revitaliza tu sudadera con capucha favorita con un dobladillo largo para ofrecer un look familiar y fresco y una protección cómoda desde el día hasta la noche.	2021-01-13 00:00:00	\N	nf_hoodie_dress			1	1	2021-01-14 16:50:46.405601	2021-01-18 22:05:13.714816	t		\N
120	vestido tipo kimono		2021-01-16 00:00:00	\N	vestido-tipo-kimono			\N	1	2021-01-17 23:05:13.371504	2021-01-18 22:08:31.50607	t		\N
1	Denim Shirt	Et possimus ut sequi praesentium voluptas atque veniam. Est quia quod provident ducimus. Vitae autem omnis non deserunt omnis.	2021-01-13 23:19:28.443626	\N	denim-shirt	\N	\N	1	1	2021-01-13 23:19:28.522332	2021-01-13 23:21:48.33893	t	\N	\N
18	Tank Top	Illum laudantium error quisquam quis. Rerum qui et est corrupti. Cum quae autem nostrum ut est accusantium. Sed provident consequatur enim iure facere. Eum aut eum est numquam.	2021-01-13 23:19:31.614745	2021-01-17 19:56:50.006626	1610913410_tank-top	\N	\N	1	1	2021-01-13 23:19:31.658744	2021-01-17 19:56:50.006365	t	\N	\N
16	Raw Edge T Shirt	Ea commodi temporibus eligendi in in magnam. Omnis totam quisquam ex facilis molestiae ipsam doloribus. Qui laudantium et id quia necessitatibus ex deleniti.	2021-01-13 23:19:31.229673	2021-01-17 19:58:03.702498	1610913483_raw-edge-t-shirt	\N	\N	1	1	2021-01-13 23:19:31.271231	2021-01-17 19:58:03.702261	t	\N	\N
5	Short Sleeve Shirt	Totam impedit dolor labore sed harum. Laudantium totam sequi cum eveniet. Aut cupiditate cumque saepe qui architecto consequatur.	2021-01-13 23:19:29.243966	2021-01-17 19:57:27.610458	1610913447_short-sleeve-shirt	\N	\N	1	1	2021-01-13 23:19:29.291243	2021-01-17 19:57:27.610003	t	\N	\N
20	High Neck Sweater	Est numquam amet deserunt impedit porro tempore dolorum. Incidunt nostrum qui qui beatae quidem libero. Corporis illum laboriosam a eum similique quam rem qui. Sed impedit officiis doloremque deserunt asperiores quia nisi. Accusantium sapiente fuga eius quae ipsa.	2021-01-13 23:19:32.002997	2021-01-17 20:00:18.2478	1610913618_high-neck-sweater	\N	\N	1	1	2021-01-13 23:19:32.045119	2021-01-17 20:00:18.24753	t	\N	\N
6	Printed Short Sleeve Shirt	Est neque nisi nihil animi deserunt commodi laboriosam qui. Praesentium et dolorem assumenda enim est voluptatum beatae deleniti. Culpa sed ut nostrum voluptas quisquam quidem et impedit. Quisquam voluptas totam aliquam et.	2021-01-13 23:19:29.428001	2021-01-17 19:58:21.783628	1610913501_printed-short-sleeve-shirt	\N	\N	1	1	2021-01-13 23:19:29.474928	2021-01-17 19:58:21.783313	t	\N	\N
8	Checked Slim Fit Shirt	Officiis non amet ipsa nulla libero. Repudiandae et qui in aliquam quia velit culpa suscipit. Accusantium alias beatae non maiores nihil quas.	2021-01-13 23:19:29.792795	2021-01-17 20:01:10.795778	1610913670_checked-slim-fit-shirt	\N	\N	1	1	2021-01-13 23:19:29.834844	2021-01-17 20:01:10.795521	t	\N	\N
119	Pantalones semi formales		2021-01-14 00:00:00	\N	pantalones-semi-formales			\N	1	2021-01-17 22:47:02.268446	2021-01-18 22:07:03.922108	t		\N
11	Regular Shirt With Rolled Up Sleeves	Voluptas dolor ut fugit qui. Odio omnis alias doloribus similique. Dolor cupiditate eum animi ipsa libero. Sed voluptatem rem voluptas sapiente dignissimos.	2021-01-13 23:19:30.325902	2021-01-17 19:58:30.89476	1610913510_regular-shirt-with-rolled-up-sleeves	\N	\N	1	1	2021-01-13 23:19:30.370084	2021-01-17 19:58:30.894505	t	\N	\N
12	Polo T Shirt	Quia impedit nam sed aut sint necessitatibus. Quis itaque occaecati delectus culpa sequi. Veniam ut non et qui adipisci.	2021-01-13 23:19:30.513993	2021-01-17 19:58:50.150178	1610913530_polo-t-shirt	\N	\N	1	1	2021-01-13 23:19:30.558634	2021-01-17 19:58:50.149721	t	\N	\N
13	Long Sleeve T Shirt	Recusandae nostrum vitae nihil officia maiores cupiditate fuga. Ea laborum est ad fugiat aliquid. Nesciunt similique est labore debitis ex beatae. Quidem omnis totam magni maiores consequatur nesciunt. Ea molestias eaque accusamus doloremque voluptatem et.	2021-01-13 23:19:30.686701	2021-01-17 19:59:25.695899	1610913565_long-sleeve-t-shirt	\N	\N	1	1	2021-01-13 23:19:30.729663	2021-01-17 19:59:25.695642	t	\N	\N
24	Long Sleeve Sweatshirt	Sunt quia libero necessitatibus provident vitae hic ut vero. Corrupti temporibus mollitia ut eos maxime. Rerum nihil et itaque non quam non est. Commodi et iste aperiam voluptas aut unde. Sit quia dignissimos qui consequatur.	2021-01-13 23:19:32.815789	2021-01-17 19:59:27.830788	1610913567_long-sleeve-sweatshirt	\N	\N	1	1	2021-01-13 23:19:32.862928	2021-01-17 19:59:27.830487	t	\N	\N
117	Vestido de tejido Fleece para mujer	\N	2021-01-30 00:00:00	2021-01-14 20:42:13.586434	1610656933_vestido-de-tejido-fleece-para-mujer	\N	\N	\N	1	2021-01-14 16:42:57.594916	2021-01-14 20:42:13.58597	t	\N	\N
22	Long Sleeve Jumper With Pocket	Modi aut magnam est adipisci quo. Nulla veniam saepe rerum facere. Dolor adipisci minima nulla et aperiam consequatur est dicta.	2021-01-13 23:19:32.462934	2021-01-17 19:59:32.177504	1610913572_long-sleeve-jumper-with-pocket	\N	\N	1	1	2021-01-13 23:19:32.508477	2021-01-17 19:59:32.177197	t	\N	\N
17	V Neck T Shirt	Nihil eveniet nisi nesciunt ut. Natus distinctio sint molestiae delectus sapiente quia ut minima. Blanditiis asperiores qui eum quod. Et vel incidunt velit non aut magni quidem tempore. Eligendi dolorem quia laborum in.	2021-01-13 23:19:31.403911	2021-01-17 19:56:11.89672	1610913371_v-neck-t-shirt	\N	\N	1	1	2021-01-13 23:19:31.44614	2021-01-17 19:56:11.896463	t	\N	\N
21	Stripped Jumper	Aut in eum sunt et aut odit et. Iusto laboriosam rem modi et qui molestias officia. Eaque nihil natus voluptatem soluta.	2021-01-13 23:19:32.211207	2021-01-17 19:56:17.918435	1610913377_stripped-jumper	\N	\N	1	1	2021-01-13 23:19:32.255874	2021-01-17 19:56:17.918167	t	\N	\N
10	Linen Shirt	In dolorem non praesentium et. In quia sunt enim suscipit maiores veritatis ratione. Fugiat fuga ut laudantium id libero rerum aperiam at. Eveniet quia voluptate consequatur et.	2021-01-13 23:19:30.156137	2021-01-17 19:59:39.881253	1610913579_linen-shirt	\N	\N	1	1	2021-01-13 23:19:30.198523	2021-01-17 19:59:39.880887	t	\N	\N
4	Slim Fit Shirt	Fuga doloribus quod sed possimus. Harum atque consequatur et quia ratione. Tempore molestias ex in voluptatem.	2021-01-13 23:19:29.063476	2021-01-17 19:57:11.651918	1610913431_slim-fit-shirt	\N	\N	1	1	2021-01-13 23:19:29.11393	2021-01-17 19:57:11.651637	t	\N	\N
23	Jumper	Animi error sapiente fuga vel excepturi doloribus. Libero ab quod labore nobis ea voluptates unde. Asperiores dolor quo aliquam earum cum totam quia. Sint voluptatem atque aut repellendus recusandae quisquam.	2021-01-13 23:19:32.637798	2021-01-17 20:00:01.375972	1610913601_jumper	\N	\N	1	1	2021-01-13 23:19:32.681852	2021-01-17 20:00:01.375699	t	\N	\N
30	Anorak With Hood	Adipisci et id non velit. Aut temporibus est dolores iusto. Dolor qui ut explicabo illum. Voluptate harum est dolor saepe pariatur officiis et.	2021-01-13 23:19:33.963989	2021-01-14 21:18:51.151616	1610659131_anorak-with-hood	\N	\N	1	1	2021-01-13 23:19:34.007503	2021-01-14 21:18:51.151345	t	\N	\N
47	V Neck Floral Maxi Dress	Perspiciatis corporis quia magnam dolor voluptatum. Quia dolores in omnis a consequatur est cumque quo. Esse provident quidem dolor voluptates aut ducimus. Dolor possimus voluptas dolores ratione soluta perspiciatis.	2021-01-13 23:19:37.372768	2021-01-17 22:45:50.046406	1610923550_v-neck-floral-maxi-dress	\N	\N	1	1	2021-01-13 23:19:37.416368	2021-01-17 22:45:50.046141	t	\N	\N
45	Pleated Skirt 2	Facere quo ea maiores et corrupti ab exercitationem. Enim esse alias praesentium aspernatur fugiat adipisci facilis. Quam voluptate quidem est sequi velit est.	2021-01-13 23:19:36.953652	2021-01-17 19:58:56.210537	1610913536_pleated-skirt-2	\N	\N	1	1	2021-01-13 23:19:37.004147	2021-01-17 19:58:56.210304	t	\N	\N
29	Hooded Jacket	Et consequatur mollitia earum et. Impedit enim asperiores libero laudantium illo. Fuga dolore in est sunt laboriosam sunt debitis. Assumenda laboriosam non doloremque nobis non facilis.	2021-01-13 23:19:33.775725	2021-01-17 20:00:09.65081	1610913609_hooded-jacket	\N	\N	1	1	2021-01-13 23:19:33.827414	2021-01-17 20:00:09.650541	t	\N	\N
37	Midi Skirt With Bottoms	Deserunt aspernatur asperiores laudantium aliquid voluptatem eum aut sed. Quae sit impedit placeat provident. Tempore temporibus sequi ea dignissimos qui. Corrupti id est mollitia excepturi quo eos.	2021-01-13 23:19:35.393869	2021-01-17 19:59:10.811625	1610913550_midi-skirt-with-bottoms	\N	\N	1	1	2021-01-13 23:19:35.444434	2021-01-17 19:59:10.811385	t	\N	\N
39	A Line Suede Skirt	Quidem culpa ut vel distinctio. Modi molestiae veritatis consequuntur harum ut non maxime. Esse nihil qui aperiam consequatur tempore.	2021-01-13 00:00:00	\N	a-line-suede-skirt			1	1	2021-01-13 23:19:35.82807	2021-01-14 20:34:51.695193	t		\N
46	Floral Wrap Dress	Laudantium quia reprehenderit quod quos maxime assumenda. Officiis et corrupti modi fugiat. Voluptatem sequi et aliquam doloremque fuga.	2021-01-13 23:19:37.187324	2021-01-17 20:00:24.068298	1610913624_floral-wrap-dress	\N	\N	1	1	2021-01-13 23:19:37.236992	2021-01-17 20:00:24.068077	t	\N	\N
121	Vestido deportivo		2021-01-16 00:00:00	\N	vestido-deportivo			\N	1	2021-01-17 23:12:21.41882	2021-01-18 22:07:47.505292	t		\N
26	Zipped High Neck Sweater	Cumque quia impedit eum dolore esse. Delectus odio libero iusto ipsum. Corporis qui enim dolores et itaque rerum vel non. Ut itaque dicta unde rerum rerum. Suscipit libero incidunt porro quam distinctio.	2021-01-13 23:19:33.182671	2021-01-17 19:55:15.590718	1610913315_zipped-high-neck-sweater	\N	\N	1	1	2021-01-13 23:19:33.227225	2021-01-17 19:55:15.590433	t	\N	\N
41	Flared Skirt	Ut officiis in et aut quas ratione incidunt. Qui sunt quod id saepe neque omnis eius deserunt. Iure expedita accusamus quos quas. Est unde omnis enim non optio quos.	2021-01-13 23:19:36.178176	2021-01-17 20:00:33.395927	1610913633_flared-skirt	\N	\N	1	1	2021-01-13 23:19:36.226034	2021-01-17 20:00:33.395625	t	\N	\N
34	Wool Blend Coat	Possimus dicta velit vel incidunt enim voluptatem. Repellat voluptatem asperiores sunt totam laboriosam aut. Nobis culpa et voluptatem totam. Ea nihil eos sint rerum illum qui nostrum veritatis. Quibusdam veniam perspiciatis et ab non nemo soluta autem.	2021-01-13 23:19:34.758042	2021-01-17 19:55:27.590666	1610913327_wool-blend-coat	\N	\N	1	1	2021-01-13 23:19:34.802692	2021-01-17 19:55:27.590425	t	\N	\N
36	Flared Midi Skirt	Sunt aut dolore et perspiciatis omnis minus aut. Quo odio perferendis consectetur quas eos aut vel nihil. Blanditiis aut perspiciatis voluptatum facilis sunt tempora architecto. Magnam nobis quia explicabo quod saepe modi. Dolorum porro ut laborum nulla.	2021-01-13 23:19:35.186016	2021-01-17 20:00:36.433963	1610913636_flared-midi-skirt	\N	\N	1	1	2021-01-13 23:19:35.234125	2021-01-17 20:00:36.433586	t	\N	\N
48	Flared Dress	Fugit modi et velit harum pariatur. Rerum est at aut quo. Velit vitae aliquam corrupti nesciunt sit qui suscipit est. Doloremque eaque iste ea saepe aliquid at enim. Mollitia sunt quibusdam qui accusantium fugiat et porro.	2021-01-13 23:19:37.567368	2021-01-17 20:00:39.052311	1610913639_flared-dress	\N	\N	1	1	2021-01-13 23:19:37.609026	2021-01-17 20:00:39.052	t	\N	\N
32	Wool Blend Short Coat	Eos ut cum eveniet ea veniam. Cum natus odit fugiat optio. Ad ab omnis accusantium laborum minima.	2021-01-13 23:19:34.350742	2021-01-17 19:55:19.919855	1610913319_wool-blend-short-coat	\N	\N	1	1	2021-01-13 23:19:34.399896	2021-01-17 19:55:19.919583	t	\N	\N
38	Fitted Skirt	Nobis provident qui occaecati sit laudantium natus. Placeat sit sunt debitis asperiores nesciunt sint in. Praesentium ut enim pariatur fugit minima voluptatum molestiae quae. Consequatur inventore aut corrupti sed sed doloribus. Laborum est fugit ipsum nihil dolorum dicta.	2021-01-13 23:19:35.592215	2021-01-17 20:00:41.547814	1610913641_fitted-skirt	\N	\N	1	1	2021-01-13 23:19:35.644436	2021-01-17 20:00:41.547548	t	\N	\N
43	Skater Short Skirt	Rem eaque voluptate voluptas consectetur at laboriosam dolores. At et dignissimos provident corrupti perferendis deserunt. Ut nulla recusandae est vero. Aliquid doloribus tenetur aut et.	2021-01-13 23:19:36.573718	2021-01-17 19:57:19.289032	1610913439_skater-short-skirt	\N	\N	1	1	2021-01-13 23:19:36.620573	2021-01-17 19:57:19.288769	t	\N	\N
42	Skater Skirt	Voluptate ad ipsum quam et distinctio odit corporis. Impedit quod possimus magnam fugit. Quia nihil dolores ut molestiae in vel et.	2021-01-13 23:19:36.371002	2021-01-17 19:57:23.640036	1610913443_skater-skirt	\N	\N	1	1	2021-01-13 23:19:36.416394	2021-01-17 19:57:23.639756	t	\N	\N
33	Down Jacket With Hood	Iste rerum officia eum dolorem enim. Laborum sed veniam quia sequi qui. Cumque quidem est repellendus fugit ducimus voluptatem.	2021-01-13 23:19:34.550602	2021-01-17 20:00:51.029718	1610913651_down-jacket-with-hood	\N	\N	1	1	2021-01-13 23:19:34.60417	2021-01-17 20:00:51.029451	t	\N	\N
31	Denim Jacket	Voluptatem quidem autem iure inventore qui voluptatem omnis. Aut ut non perferendis eaque molestias aspernatur aliquam. Vel sunt eum vel beatae in.	2021-01-13 23:19:34.149021	2021-01-17 20:01:28.435956	1610913688_denim-jacket	\N	\N	1	1	2021-01-13 23:19:34.20654	2021-01-17 20:01:28.435702	t	\N	\N
35	Jacket With Liner	Autem magni fugit omnis quia delectus sit saepe modi. Occaecati maxime dolorem cumque quam et amet ea. Ducimus sit fugit quibusdam accusamus. Quidem labore possimus porro inventore voluptatem non vero. Aut in sunt dolor consequuntur consectetur totam illo sed.	2021-01-13 23:19:34.968844	2021-01-17 20:01:35.70478	1610913695_jacket-with-liner	\N	\N	1	1	2021-01-13 23:19:35.013187	2021-01-17 20:01:35.70452	t	\N	\N
66	Floral Shirt	Perspiciatis aut sint facere adipisci. Asperiores et labore nesciunt expedita quisquam. Sit aut ratione sit minus exercitationem aut ut placeat.	2021-01-13 23:19:40.943344	2021-01-17 20:00:26.730183	1610913626_floral-shirt	\N	\N	1	1	2021-01-13 23:19:40.988437	2021-01-17 20:00:26.729939	t	\N	\N
68	V Neck Shirt	Aliquid dolores sed adipisci earum. Vel odio perspiciatis cupiditate voluptatum ut accusamus rem assumenda. Ratione aut ea et sunt vel est sed tempore. Aut saepe quia ut et. Voluptate ea consequuntur qui ut veniam voluptatem adipisci.	2021-01-13 23:19:41.330445	2021-01-17 22:45:34.757415	1610923534_v-neck-shirt	\N	\N	1	1	2021-01-13 23:19:41.375277	2021-01-17 22:45:34.757157	t	\N	\N
61	Printed Wrapped Blouse	Nesciunt ea repellat natus maxime ea porro. Deserunt explicabo ad et provident facilis aliquid repellendus voluptas. Sed voluptatem expedita soluta ad enim. Consequatur dolorum ea consequuntur in assumenda repellendus. Sequi et minus et non eveniet dolores veritatis.	2021-01-13 23:19:39.901005	2021-01-17 19:58:07.964466	1610913487_printed-wrapped-blouse	\N	\N	1	1	2021-01-13 23:19:39.946831	2021-01-17 19:58:07.964219	t	\N	\N
51	Striped Shirt Dress	Omnis qui nesciunt iure qui earum. Omnis fugit officia corporis iusto. Dolorum aliquid praesentium facilis omnis impedit quas consequatur. Quia excepturi sapiente consequuntur illum maxime. Architecto maxime ut sit delectus explicabo consectetur dolor similique.	2021-01-13 23:19:38.116884	2021-01-17 19:56:21.442003	1610913381_striped-shirt-dress	\N	\N	1	1	2021-01-13 23:19:38.163924	2021-01-17 19:56:21.441689	t	\N	\N
63	Cotton Shirt	Et pariatur quos repudiandae dolores nam aspernatur. Quidem consequuntur quam eaque ut velit hic et dolorem. Sunt officiis et nam est. Dolorem odio aut sed qui aut voluptates.	2021-01-13 23:19:40.37927	2021-01-17 20:01:16.05841	1610913676_cotton-shirt	\N	\N	1	1	2021-01-13 23:19:40.433692	2021-01-17 20:01:16.058138	t	\N	\N
53	Printed Slit Sleeves Dress	Eos hic dicta voluptatem suscipit. Fugiat ut ut doloremque dolorem voluptatum minus saepe. Eos aut dolorem excepturi nisi eum porro. Dignissimos id reiciendis maxime rem. At et ratione et eum accusantium quaerat qui.	2021-01-13 23:19:38.482803	2021-01-17 19:58:17.819593	1610913497_printed-slit-sleeves-dress	\N	\N	1	1	2021-01-13 23:19:38.529035	2021-01-17 19:58:17.819343	t	\N	\N
55	V Neck Floral Dress	Aut necessitatibus corrupti quia facilis facere. Mollitia tempore reiciendis quasi dolores et sint quo laudantium. Aperiam ea fugiat occaecati rerum possimus molestias voluptatibus numquam. Dicta ipsam officiis nihil aliquam voluptas. Aut eum vitae eveniet exercitationem iusto quas sint.	2021-01-13 23:19:38.840262	2021-01-17 20:01:40.399493	1610913700_v-neck-floral-dress	\N	\N	1	1	2021-01-13 23:19:38.883585	2021-01-17 20:01:40.39924	t	\N	\N
54	Dress With Belt	Consectetur dolorem nisi distinctio fugiat. Ut doloremque necessitatibus nostrum et. Qui molestiae distinctio reiciendis non. Et aut quia sit facilis blanditiis est eos dolorem. Consectetur consequuntur exercitationem sed unde doloribus inventore.	2021-01-13 23:19:38.659836	2021-01-17 20:01:43.427325	1610913703_dress-with-belt	\N	\N	1	1	2021-01-13 23:19:38.702927	2021-01-17 20:01:43.427046	t	\N	\N
69	Printed Shirt	Unde facere dolor officiis libero consequatur alias voluptatum. Quae modi possimus iusto sint tempora voluptatem vel vero. Minima tempore fugit nobis voluptas molestias provident. Perferendis et atque excepturi accusantium.	2021-01-13 23:19:41.513621	2021-01-17 19:58:27.417558	1610913507_printed-shirt	\N	\N	1	1	2021-01-13 23:19:41.564728	2021-01-17 19:58:27.417236	t	\N	\N
57	Slit Maxi Dress	Voluptas omnis incidunt earum eum veniam. Assumenda consequuntur aliquid quasi iusto pariatur tempore vero. Praesentium perferendis qui corrupti voluptatem quis quia culpa. Vitae et vero esse assumenda similique. Fugit commodi maxime soluta qui cupiditate iure et dolor.	2021-01-13 23:19:39.196668	2021-01-17 19:57:08.333423	1610913428_slit-maxi-dress	\N	\N	1	1	2021-01-13 23:19:39.241482	2021-01-17 19:57:08.333172	t	\N	\N
52	Printed Dress	Quia nesciunt aut qui deleniti. Aut impedit enim sit ducimus porro. Vitae aspernatur et fuga odit suscipit delectus ipsum. Tempora accusamus commodi dolores aut molestias. Placeat aliquam earum consequatur enim facilis.	2021-01-13 23:19:38.298731	2021-01-17 19:58:46.236141	1610913526_printed-dress	\N	\N	1	1	2021-01-13 23:19:38.341779	2021-01-17 19:58:46.235801	t	\N	\N
64	Blouse With Wide Flounced Sleeve	Qui facilis quis recusandae est esse. Sed voluptas repellendus placeat mollitia enim non veniam. Voluptates nobis consequatur dignissimos maiores nam.	2021-01-13 23:19:40.583134	2021-01-14 21:21:36.25651	1610659296_blouse-with-wide-flounced-sleeve	\N	\N	1	1	2021-01-13 23:19:40.627665	2021-01-14 21:21:36.256231	t	\N	\N
59	Striped Shirt	Qui veritatis fuga sed quibusdam et aliquid qui. Sunt ut ut et excepturi mollitia tempora quam cupiditate. Sequi at hic ut suscipit.	2021-01-13 23:19:39.550406	2021-01-17 19:56:37.591793	1610913397_striped-shirt	\N	\N	1	1	2021-01-13 23:19:39.59201	2021-01-17 19:56:37.591485	t	\N	\N
62	Pleated Sleeve V Neck Shirt	Veritatis animi sit est inventore dolorum dignissimos deleniti. Atque commodi enim incidunt et quae culpa eligendi. Omnis sint harum non quia. Eaque nesciunt sapiente corrupti voluptas alias placeat est omnis.	2021-01-13 23:19:40.082923	2021-01-17 19:58:52.592305	1610913532_pleated-sleeve-v-neck-shirt	\N	\N	1	1	2021-01-13 23:19:40.140303	2021-01-17 19:58:52.592044	t	\N	\N
67	Semi Sheer Shirt With Pockets	Laudantium laborum et et quibusdam reprehenderit maxime. Dolore quod cupiditate qui doloremque laborum sunt est fuga. Sequi voluptatem laboriosam ut dicta numquam.	2021-01-13 23:19:41.139561	2021-01-17 19:57:39.44933	1610913459_semi-sheer-shirt-with-pockets	\N	\N	1	1	2021-01-13 23:19:41.18372	2021-01-17 19:57:39.449041	t	\N	\N
50	Long Sleeve Knitted Dress	Ea dignissimos enim itaque sunt ipsam eos. Aut consectetur non sit quod dolor. Et provident et assumenda minus voluptas. Non corrupti voluptatibus totam assumenda ipsa officia veniam. Optio nihil ratione qui doloremque id.	2021-01-13 23:19:37.926573	2021-01-17 19:59:29.832271	1610913569_long-sleeve-knitted-dress	\N	\N	1	1	2021-01-13 23:19:37.968855	2021-01-17 19:59:29.832017	t	\N	\N
58	Semi Sheer Shirt With Floral Cuffs	Laboriosam porro facilis nam et dolores odio sit. Voluptates veritatis voluptatum dolor accusantium quos. Dolore voluptates et ipsa in quae totam.	2021-01-13 23:19:39.370913	2021-01-17 19:57:43.573748	1610913463_semi-sheer-shirt-with-floral-cuffs	\N	\N	1	1	2021-01-13 23:19:39.418345	2021-01-17 19:57:43.573489	t	\N	\N
89	Down Jacket	Molestiae tempore accusamus voluptas ducimus assumenda. Est voluptatibus velit nobis sequi ut. Pariatur exercitationem fuga omnis sint sed voluptas et. Ipsum quo occaecati nihil voluptatem eum ut nam.	2021-01-13 23:19:46.777572	2021-01-17 20:00:53.502181	1610913653_down-jacket	\N	\N	1	1	2021-01-13 23:19:46.879636	2021-01-17 20:00:53.501924	t	\N	\N
85	Coat With Pockets	Labore sed ab molestias qui nemo. Sed animi reiciendis autem dolorum ut est explicabo tenetur. Ipsum harum provident quia saepe voluptate et aut sed.	2021-01-13 23:19:45.733962	2021-01-17 20:01:13.769042	1610913673_coat-with-pockets	\N	\N	1	1	2021-01-13 23:19:45.789999	2021-01-17 20:01:13.768755	t	\N	\N
77	Printed T Shirt	Sint odio qui quam ex rem aut. Vero suscipit qui perferendis ut unde fugiat. Reprehenderit ab eius numquam nemo doloremque ut.	2021-01-13 23:19:43.110878	2021-01-17 19:58:12.191327	1610913492_printed-t-shirt	\N	\N	1	1	2021-01-13 23:19:43.155076	2021-01-17 19:58:12.191069	t	\N	\N
86	Long Wool Blend Coat With Belt	Quia labore placeat sed aperiam et ut. Excepturi molestias at ea velit autem fugit facilis. Dolor non non dicta quos laudantium debitis nam. Sint sunt ut veritatis ullam quae amet. Est sit quam animi sunt quia.	2021-01-13 23:19:45.977696	2021-01-17 19:59:18.103559	1610913558_long-wool-blend-coat-with-belt	\N	\N	1	1	2021-01-13 23:19:46.042636	2021-01-17 19:59:18.103288	t	\N	\N
84	Basic Loose T Shirt	Ipsum illo deleniti dolorem non. Dolorum voluptatem sequi quidem dicta aspernatur. Qui sapiente et sunt dolor sed a fuga. Est ut laborum neque earum iure. Nobis doloremque quibusdam consectetur et odio.	2021-01-13 23:19:44.9617	2021-01-14 21:21:22.05106	1610659282_basic-loose-t-shirt	\N	\N	1	1	2021-01-13 23:19:45.042271	2021-01-14 21:21:22.050765	t	\N	\N
81	Crop Top	Molestias voluptatem rerum aliquam consequatur. Sit ut aut reprehenderit qui dolorem. Consequatur doloremque tempore error hic quo. Id quia non ipsum et iste.	2021-01-13 23:19:44.045371	2021-01-17 20:01:18.987076	1610913678_crop-top	\N	\N	1	1	2021-01-13 23:19:44.142999	2021-01-17 20:01:18.986777	t	\N	\N
79	Pleated Sleeve T Shirt	Aut praesentium voluptatem qui omnis similique assumenda quisquam veritatis. Ea rem architecto voluptate ipsam aut. Eos velit qui architecto veniam. Cupiditate consectetur voluptatem perspiciatis consequatur maxime saepe quia.	2021-01-13 23:19:43.484121	2021-01-17 19:58:54.509808	1610913534_pleated-sleeve-t-shirt	\N	\N	1	1	2021-01-13 23:19:43.534596	2021-01-17 19:58:54.50953	t	\N	\N
76	Crop Top With Tie	Quis veritatis id ex aut sint molestias rerum. Blanditiis beatae ex ut voluptas omnis et ipsam. Numquam dolore suscipit rerum nobis.	2021-01-13 23:19:42.919501	2021-01-17 20:01:20.974461	1610913680_crop-top-with-tie	\N	\N	1	1	2021-01-13 23:19:42.963932	2021-01-17 20:01:20.974193	t	\N	\N
71	Oversized Knitted Sweater	Corrupti dolorem sit rerum a quisquam natus. Est corporis rem qui nesciunt quisquam. Inventore rerum atque ut cumque et occaecati. Atque saepe ut et est suscipit maiores. Qui eum quidem ut voluptate ut harum quibusdam eligendi.	2021-01-13 23:19:41.88597	2021-01-17 19:59:03.272013	1610913543_oversized-knitted-sweater	\N	\N	1	1	2021-01-13 23:19:41.93426	2021-01-17 19:59:03.271688	t	\N	\N
87	Asymetric Coat	Nesciunt neque eos vitae excepturi et asperiores deserunt aut. Qui ullam sint cum temporibus est. Sed quia et labore deserunt nihil dolor quaerat quae.	2021-01-13 23:19:46.230144	2021-01-14 21:21:13.978577	1610659274_asymetric-coat	\N	\N	1	1	2021-01-13 23:19:46.288755	2021-01-14 21:21:13.97815	t	\N	\N
90	Zipped Jacket	Minus perspiciatis quo odio rem. Aut vero tempore id aut aut asperiores. Aliquam vel doloribus est et veritatis repellendus. Molestiae repellat minima maxime dolorem. Et doloremque et nobis dolorem.	2021-01-13 23:19:47.436588	2021-01-17 19:55:10.408194	1610913310_zipped-jacket	\N	\N	1	1	2021-01-13 23:19:47.57401	2021-01-17 19:55:10.407927	t	\N	\N
83	Sleeveless Loose Top	Maxime consequatur voluptatem sunt incidunt occaecati est pariatur. Maxime corporis magnam ipsam eum ducimus laboriosam. Repellat voluptas quia nostrum nesciunt numquam dolores.	2021-01-13 23:19:44.680904	2021-01-17 19:57:15.740066	1610913435_sleeveless-loose-top	\N	\N	1	1	2021-01-13 23:19:44.750669	2021-01-17 19:57:15.739831	t	\N	\N
88	Long Coat With Belt	Dignissimos aut praesentium et quae aut totam eaque. Ut modi officia molestiae totam exercitationem accusamus ut. Recusandae natus porro est velit et id iste aliquid.	2021-01-13 23:19:46.477422	2021-01-17 19:59:37.621292	1610913577_long-coat-with-belt	\N	\N	1	1	2021-01-13 23:19:46.533414	2021-01-17 19:59:37.621025	t	\N	\N
80	Scrappy Crop Top With Tie	Rerum rem est quia expedita magnam harum. In consequatur et nihil sit dolores totam voluptatem est. Ea assumenda ipsam eaque quae id eum et corrupti. Unde repudiandae non perferendis consectetur. Temporibus quasi consectetur porro ea.	2021-01-13 23:19:43.673667	2021-01-17 19:57:52.785625	1610913472_scrappy-crop-top-with-tie	\N	\N	1	1	2021-01-13 23:19:43.72528	2021-01-17 19:57:52.785286	t	\N	\N
93	Leather Biker Jacket	Qui illum quam et tempore ipsum voluptatibus officiis. Optio hic id est id earum suscipit eius sequi. Autem eum nulla molestias omnis numquam officia.	2021-01-13 23:19:48.549772	2021-01-17 19:59:46.844717	1610913586_leather-biker-jacket	\N	\N	1	1	2021-01-13 23:19:48.64138	2021-01-17 19:59:46.844446	t	\N	\N
74	Knitted V Neck Sweater	Nisi maxime dicta dolorem placeat consequatur. Doloribus excepturi officiis illo reiciendis aliquam fugiat quis. Tempore aperiam pariatur quasi et. Nesciunt natus laborum quidem sunt aut.	2021-01-13 23:19:42.526971	2021-01-17 19:59:50.693027	1610913590_knitted-v-neck-sweater	\N	\N	1	1	2021-01-13 23:19:42.577463	2021-01-17 19:59:50.692674	t	\N	\N
73	Knitted High Neck Sweater	Alias molestias qui quidem nesciunt in. Tenetur non voluptates nam sed accusantium incidunt. Molestiae quasi magni qui saepe.	2021-01-13 23:19:42.328285	2021-01-17 19:59:54.503922	1610913594_knitted-high-neck-sweater	\N	\N	1	1	2021-01-13 23:19:42.378716	2021-01-17 19:59:54.503649	t	\N	\N
96	Bomber Jacket	Nostrum dignissimos adipisci laudantium quibusdam id dicta vel. Amet hic quibusdam impedit quis. Voluptas autem rem omnis sunt quis doloribus error inventore. Et ut omnis enim omnis.	2021-01-13 23:19:49.613696	2021-01-14 21:21:39.690403	1610659299_bomber-jacket	\N	\N	1	1	2021-01-13 23:19:49.70138	2021-01-14 21:21:39.690102	t	\N	\N
116	High Waist Pants	Est magnam consectetur dolore rerum. Velit tempore alias est sed in voluptatem. Praesentium voluptatem pariatur modi aliquam. Est aut nostrum qui reiciendis eum consequatur.	2021-01-13 23:19:55.800076	2021-01-17 20:00:15.718105	1610913615_high-waist-pants	\N	\N	1	1	2021-01-13 23:19:55.896845	2021-01-17 20:00:15.717852	t	\N	\N
56	Flounced Dress	Animi odit eaque ut cupiditate iste quia. Commodi dolorem ut et quis et. Totam laboriosam id laborum quo veritatis amet est voluptatem. Labore omnis est ipsum ut.	2021-01-13 23:19:39.011036	2021-01-17 20:00:20.598009	1610913620_flounced-dress	\N	\N	1	1	2021-01-13 23:19:39.055384	2021-01-17 20:00:20.597785	t	\N	\N
99	Oversize T Shirt Wrapped On Back	Commodi nemo deleniti ab suscipit aut. Ullam sit occaecati omnis veniam. Possimus et quisquam in sed et aliquam rerum beatae. Consequuntur ipsam dolor ex blanditiis dolores mollitia. Assumenda ducimus dolore iure a voluptatem.	2021-01-13 23:19:50.534207	2021-01-17 19:59:05.352265	1610913545_oversize-t-shirt-wrapped-on-back	\N	\N	1	1	2021-01-13 23:19:50.59594	2021-01-17 19:59:05.351924	t	\N	\N
75	Cropped Fitted Sweater	Esse et minima unde nobis commodi expedita ipsum. Voluptatum voluptatem sit molestias laborum qui. Eos repellat quae sed animi id fugiat non. Autem aut veniam voluptatem ut.	2021-01-13 23:19:42.717602	2021-01-17 20:01:24.763039	1610913684_cropped-fitted-sweater	\N	\N	1	1	2021-01-13 23:19:42.763929	2021-01-17 20:01:24.762777	t	\N	\N
112	Printed Pants With Holes	Et quaerat assumenda molestias maiores voluptas est est voluptas. Debitis dolores animi rerum qui qui atque. Omnis est dolorum reprehenderit sit eveniet ut. Corporis id quia eos et praesentium sed. Dignissimos sapiente neque nihil ea tempora.	2021-01-13 23:19:54.370393	2021-01-17 19:58:34.482852	1610913514_printed-pants-with-holes	\N	\N	1	1	2021-01-13 23:19:54.456496	2021-01-17 19:58:34.482527	t	\N	\N
113	Pants	Nisi quidem tempora nihil enim facilis. Qui reiciendis mollitia perspiciatis ut et. Autem natus et libero non ex.	2021-01-13 23:19:54.75516	2021-01-17 19:58:58.937635	1610913538_pants	\N	\N	1	1	2021-01-13 23:19:54.824683	2021-01-17 19:58:58.937349	t	\N	\N
103	Sports Bra 	Temporibus soluta qui iure recusandae maiores dolorum ullam. Dolores ipsa dignissimos voluptate nihil corrupti. Non voluptatem sint impedit natus ipsa laboriosam id exercitationem. Asperiores eligendi at dignissimos quisquam dolorem.	2021-01-13 23:19:51.580928	2021-01-17 19:56:54.430666	1610913414_sports-bra	\N	\N	1	1	2021-01-13 23:19:51.648901	2021-01-17 19:56:54.430422	t	\N	\N
109	Sport Waistcoat	Cupiditate et voluptas temporibus et sed autem omnis. Hic iste qui sint aut. Deserunt minima ut rem qui voluptatem reprehenderit. Dolor voluptatibus in unde ut omnis ut eligendi. Est id esse est aut temporibus autem nostrum.	2021-01-13 23:19:53.26101	2021-01-17 19:57:01.150715	1610913421_sport-waistcoat	\N	\N	1	1	2021-01-13 23:19:53.346619	2021-01-17 19:57:01.150484	t	\N	\N
19	Basic T Shirt	Ad ut tempore id sed. Et perspiciatis provident neque tempora unde. Assumenda vitae in earum id libero quod. Rem qui eligendi culpa repellendus itaque nihil.	2021-01-13 23:19:31.812302	2021-01-14 21:21:25.459571	1610659285_basic-t-shirt	\N	\N	1	1	2021-01-13 23:19:31.855341	2021-01-14 21:21:25.459333	t	\N	\N
98	Long Sleeves Yoga Crop Top	Dolores neque sed dolore praesentium sint. Incidunt facilis et ab in hic exercitationem. Possimus quos autem necessitatibus at sed non. Est deserunt voluptas aliquid cum illum unde velit vel. Temporibus ea ducimus vel velit quam ab minima.	2021-01-13 23:19:50.24287	2021-01-17 19:59:21.502353	1610913561_long-sleeves-yoga-crop-top	\N	\N	1	1	2021-01-13 23:19:50.291151	2021-01-17 19:59:21.502109	t	\N	\N
106	Leightweight Running Jacket	Quia qui occaecati beatae hic maxime consequuntur. In dolorum dignissimos ad et dolores ex minus. Et inventore facere neque dolorem blanditiis.	2021-01-13 23:19:52.426226	2021-01-17 20:01:46.388056	1610913706_leightweight-running-jacket	\N	\N	1	1	2021-01-13 23:19:52.508086	2021-01-17 20:01:46.387756	t	\N	\N
100	Long Sleeves Crop Top	Repudiandae ratione et culpa et. Magnam harum aliquid id eius. Excepturi voluptate maxime commodi deserunt.	2021-01-13 23:19:50.783958	2021-01-17 19:59:23.540317	1610913563_long-sleeves-crop-top	\N	\N	1	1	2021-01-13 23:19:50.870793	2021-01-17 19:59:23.540064	t	\N	\N
101	Laced Crop Top	Ea assumenda et recusandae ut nihil. Deleniti neque molestiae veritatis quia nobis aut numquam omnis. Ducimus inventore blanditiis quaerat porro cupiditate est. Nobis nihil eos rerum veritatis consequatur velit quae.	2021-01-13 23:19:51.055606	2021-01-17 19:59:48.778291	1610913588_laced-crop-top	\N	\N	1	1	2021-01-13 23:19:51.111152	2021-01-17 19:59:48.778015	t	\N	\N
108	Sport Windproof Jacket	Ea molestiae commodi et aut. Corrupti harum officia architecto nemo explicabo ut molestiae. Natus inventore quisquam eaque error.	2021-01-13 23:19:52.965338	2021-01-17 19:56:57.851377	1610913417_sport-windproof-jacket	\N	\N	1	1	2021-01-13 23:19:53.0193	2021-01-17 19:56:57.851158	t	\N	\N
104	Sport Cropp Top	Fuga nihil quis id dolorem debitis. Id sit voluptatem necessitatibus laboriosam autem ipsam fuga accusamus. Earum et porro fugit magni eaque voluptatem. Perspiciatis fugit quia architecto sunt id.	2021-01-13 23:19:51.859466	2021-01-17 19:57:04.531527	1610913424_sport-cropp-top	\N	\N	1	1	2021-01-13 23:19:51.943048	2021-01-17 19:57:04.5313	t	\N	\N
111	Short Pants	Consequuntur explicabo cum quisquam aliquam quam necessitatibus quae. Quia voluptatem autem impedit omnis nemo. Non iure non placeat et. Provident vel eligendi aspernatur tenetur sed.	2021-01-13 23:19:53.975287	2021-01-17 19:57:32.054684	1610913452_short-pants	\N	\N	1	1	2021-01-13 23:19:54.063837	2021-01-17 19:57:32.054426	t	\N	\N
110	Shined Pants	Asperiores a architecto est et aut. Omnis eaque delectus commodi soluta tempore. Est earum vel consectetur quibusdam. Qui quia nihil veritatis soluta amet minima illo.	2021-01-13 23:19:53.624374	2021-01-17 19:57:36.124957	1610913456_shined-pants	\N	\N	1	1	2021-01-13 23:19:53.719076	2021-01-17 19:57:36.124678	t	\N	\N
105	Running Sweatshirt	Alias nihil odio minima enim. Tenetur corporis minus est fugit sit eius placeat. Est temporibus porro impedit odio maiores aliquam magnam. Fugit velit nihil et cupiditate dicta in aut voluptas.	2021-01-13 23:19:52.136722	2021-01-17 19:57:48.566146	1610913468_running-sweatshirt	\N	\N	1	1	2021-01-13 23:19:52.21953	2021-01-17 19:57:48.565877	t	\N	\N
114	Printed Pants	Alias voluptate architecto necessitatibus est quae rerum. Est dolor qui impedit quia et alias. Ab voluptas sit et aperiam.	2021-01-13 23:19:55.072241	2021-01-17 19:58:37.88479	1610913517_printed-pants	\N	\N	1	1	2021-01-13 23:19:55.166639	2021-01-17 19:58:37.884532	t	\N	\N
44	Floral Flared Skirt	Et nam dolorum similique fuga. Nostrum consequuntur repellendus temporibus cumque. Iusto esse quidem dolores quas voluptatem dolorem ut.	2021-01-13 23:19:36.766438	2021-01-17 20:00:30.183347	1610913630_floral-flared-skirt	\N	\N	1	1	2021-01-13 23:19:36.819084	2021-01-17 20:00:30.183061	t	\N	\N
49	Elegant Flared Dress	Nostrum voluptatem quas tenetur reiciendis quis explicabo dolores quaerat. Et velit praesentium odio saepe qui ipsa. Neque hic est temporibus minus ut.	2021-01-13 23:19:37.743317	2021-01-17 20:00:44.145132	1610913644_elegant-flared-dress	\N	\N	1	1	2021-01-13 23:19:37.791315	2021-01-17 20:00:44.144821	t	\N	\N
82	Loose T Shirt With Pocket Imitation	Saepe et temporibus amet nisi non odio voluptates. Voluptas assumenda molestiae ipsa enim eum. Perferendis consequatur aperiam et deleniti assumenda enim labore ullam.	2021-01-13 23:19:44.360739	2021-01-17 19:59:13.95342	1610913553_loose-t-shirt-with-pocket-imitation	\N	\N	1	1	2021-01-13 23:19:44.422111	2021-01-17 19:59:13.953166	t	\N	\N
92	Double Breasted Jacket	Perspiciatis beatae aperiam sit cum aspernatur. Dicta id autem non explicabo. Voluptatibus iusto molestiae facere aliquam. Eligendi aspernatur earum ea aut nemo reiciendis. Vel dolor quis veritatis est dolor cum.	2021-01-13 23:19:48.224371	2021-01-17 20:00:58.235799	1610913658_double-breasted-jacket	\N	\N	1	1	2021-01-13 23:19:48.298954	2021-01-17 20:00:58.235483	t	\N	\N
70	Asymetric Sweater With Wide Sleeves	Tenetur ut magni assumenda non earum asperiores facere quidem. Qui fugiat sapiente qui qui sed. Voluptatem qui officia et enim voluptatem velit.	2021-01-13 23:19:41.700623	2021-01-14 21:21:18.20838	1610659278_asymetric-sweater-with-wide-sleeves	\N	\N	1	1	2021-01-13 23:19:41.742953	2021-01-14 21:21:18.208117	t	\N	\N
91	Loose Fitted Jacket	Voluptatibus quaerat odio et iusto corrupti rerum. Vel non autem sit excepturi. Voluptates ut quod maiores corrupti est.	2021-01-13 23:19:47.896858	2021-01-17 19:59:15.97339	1610913555_loose-fitted-jacket	\N	\N	1	1	2021-01-13 23:19:47.979079	2021-01-17 19:59:15.97313	t	\N	\N
3	Covered Placket Shirt	Dicta qui natus maxime quis libero. Modi commodi fugit doloribus quis. Est dolorem dolor et ex maiores.	2021-01-13 23:19:28.893391	2021-01-17 20:01:23.020754	1610913683_covered-placket-shirt	\N	\N	1	1	2021-01-13 23:19:28.936195	2021-01-17 20:01:23.020486	t	\N	\N
27	Long Sleeve Jumper	Est occaecati ducimus vero fuga. Doloribus vitae ut veritatis harum earum voluptas. Velit perferendis aliquam est consequatur excepturi eaque eum ex.	2021-01-13 23:19:33.383961	2021-01-17 19:59:35.193709	1610913575_long-sleeve-jumper	\N	\N	1	1	2021-01-13 23:19:33.429832	2021-01-17 19:59:35.193417	t	\N	\N
2	Checked Shirt	Dicta rerum sed perspiciatis officiis. Ab dolorem facere in iusto. Numquam et unde aut praesentium eos placeat facere est. Quia blanditiis et est saepe et est voluptate. Perferendis mollitia rerum optio expedita occaecati vero.	2021-01-13 23:19:28.707387	\N	checked-shirt	\N	\N	1	1	2021-01-13 23:19:28.753073	2021-01-13 23:21:48.423474	t	\N	\N
40	Leather Skirt With Lacing	Blanditiis distinctio numquam accusamus id ex minus eius quia. Delectus temporibus deserunt vel ea aperiam voluptas est. Est facere error saepe perspiciatis voluptas. Assumenda repellat provident voluptatem tempora accusantium ab in. Nam est eligendi impedit veritatis nulla adipisci quaerat inventore.	2021-01-13 23:19:35.967127	2021-01-17 19:59:44.601486	1610913584_leather-skirt-with-lacing	\N	\N	1	1	2021-01-13 23:19:36.018287	2021-01-17 19:59:44.601208	t	\N	\N
94	Wool Blend Coat With Belt	Dolore voluptas totam adipisci minus reiciendis. Neque qui autem et harum possimus consequuntur sed consequatur. Voluptatem perspiciatis necessitatibus voluptatem iure. Officiis enim quo velit libero nesciunt quidem vel autem. Et aut aliquam amet molestias vel.	2021-01-13 23:19:48.917335	2021-01-17 19:55:23.884907	1610913323_wool-blend-coat-with-belt	\N	\N	1	1	2021-01-13 23:19:49.004845	2021-01-17 19:55:23.884582	t	\N	\N
9	Dotted Shirt	Quo corrupti ipsam vitae cum sit pariatur libero commodi. A molestias ea consequatur impedit earum necessitatibus illum id. Rerum voluptatem et dolorem illo. Tempora qui ea eos cumque aut ratione dolorem. Sit possimus totam quis voluptas rem repellat pariatur sunt.	2021-01-13 23:19:29.966062	2021-01-17 20:01:33.23618	1610913693_dotted-shirt	\N	\N	1	1	2021-01-13 23:19:30.020054	2021-01-17 20:01:33.235892	t	\N	\N
60	V Neck Wide Shirt	Odit iusto excepturi temporibus eligendi eum qui maxime voluptas. Asperiores aliquid eius numquam laudantium at. Eum enim et pariatur et placeat veniam aliquid aut. Et asperiores enim in deserunt repellendus. Minima libero laboriosam expedita suscipit commodi.	2021-01-13 23:19:39.725385	2021-01-17 19:55:34.690181	1610913334_v-neck-wide-shirt	\N	\N	1	1	2021-01-13 23:19:39.769281	2021-01-17 19:55:34.68995	t	\N	\N
15	T Shirt With Holes	Nesciunt est ab quia minima sit optio itaque. Enim non debitis nobis aut ut. Laborum molestiae voluptates et dolor dolor. Eum iusto labore consequuntur ducimus quidem provident autem enim. Non perferendis ipsum voluptas temporibus quae a qui ipsam.	2021-01-13 23:19:31.035907	2021-01-17 19:56:33.567371	1610913393_t-shirt-with-holes	\N	\N	1	1	2021-01-13 23:19:31.078214	2021-01-17 19:56:33.567117	t	\N	\N
97	Sports Bra Low Support	Enim quia reprehenderit eaque magni aliquam. Quas ipsam deleniti minus ex vel aliquam. Mollitia perferendis aliquid aut sed. Veritatis aut consequatur minus aut labore accusamus et recusandae.	2021-01-13 23:19:49.921067	2021-01-17 19:56:45.269367	1610913405_sports-bra-low-support	\N	\N	1	1	2021-01-13 23:19:49.995994	2021-01-17 19:56:45.269075	t	\N	\N
78	Scrappy Top	Vel cum fuga molestias ea beatae quam minima. Harum natus nemo accusamus enim incidunt mollitia. Asperiores natus rerum doloremque sunt. Mollitia soluta ad qui qui. Voluptates dolores quia nobis quis quam necessitatibus minima laboriosam.	2021-01-13 23:19:43.295829	2021-01-17 19:57:56.657202	1610913476_scrappy-top	\N	\N	1	1	2021-01-13 23:19:43.340473	2021-01-17 19:57:56.656941	t	\N	\N
7	Regular Shirt	Repellendus enim vitae quo exercitationem vero maiores ullam. Ab esse maxime suscipit vel doloribus consectetur. Harum officia quo facilis numquam minus animi tenetur provident. Molestiae repellendus eius aut ipsa. Minima praesentium quia beatae nihil dolorem maiores.	2021-01-13 23:19:29.607928	2021-01-17 19:57:59.884668	1610913479_regular-shirt	\N	\N	1	1	2021-01-13 23:19:29.660944	2021-01-17 19:57:59.88435	t	\N	\N
25	Hoodie	Sunt inventore et et alias officia. Odit officia ut non sunt accusantium sint placeat. Provident sunt voluptatem neque adipisci qui culpa dolor. Cum adipisci dolorum porro consectetur vel libero. Ipsam accusantium quo qui amet sequi perferendis provident.	2021-01-13 23:19:32.99077	2021-01-17 20:00:05.957612	1610913605_hoodie	\N	\N	1	1	2021-01-13 23:19:33.03509	2021-01-17 20:00:05.957352	t	\N	\N
72	Oversized Sweatshirt	Nostrum impedit sed eligendi voluptatibus qui dolor. Consectetur enim dolores nulla odio consequatur ea fuga nostrum. Molestias et ducimus praesentium officia dolorem. Laborum distinctio ea voluptatibus iure qui et nihil rerum. Natus sed ipsa ea quis.	2021-01-13 23:19:42.076512	2021-01-17 19:59:01.231209	1610913541_oversized-sweatshirt	\N	\N	1	1	2021-01-13 23:19:42.134075	2021-01-17 19:59:01.230954	t	\N	\N
28	Suede Biker Jacket	Minima sint est quasi aliquid. Quia ad quod sint sed quia eius modi voluptate. Omnis eos est modi debitis. Esse molestiae perferendis odio ipsum delectus itaque. Ut deleniti quisquam voluptates in dolor ab asperiores.	2021-01-13 23:19:33.596589	2021-01-17 19:56:29.331627	1610913389_suede-biker-jacket	\N	\N	1	1	2021-01-13 23:19:33.640984	2021-01-17 19:56:29.331353	t	\N	\N
102	Sports Bra Medium Support	Quae ducimus voluptate qui in nostrum nulla. Autem cupiditate tempore nesciunt qui delectus voluptatibus expedita deserunt. Doloremque in voluptatem ipsa quis unde laborum. Assumenda voluptatibus maiores nemo illo dolores. Iste delectus numquam ad voluptatem sed optio exercitationem.	2021-01-13 23:19:51.323076	2021-01-17 19:56:42.203292	1610913402_sports-bra-medium-support	\N	\N	1	1	2021-01-13 23:19:51.377522	2021-01-17 19:56:42.203038	t	\N	\N
107	Oversize Sweatshirt	Dolore omnis ab quis quam et aut odio. Nostrum at in quo deserunt ratione qui. Tempora dicta modi aliquid rerum ut.	2021-01-13 23:19:52.693353	2021-01-17 19:59:07.192229	1610913547_oversize-sweatshirt	\N	\N	1	1	2021-01-13 23:19:52.752852	2021-01-17 19:59:07.191991	t	\N	\N
115	High Waist Pants With Pockets	Autem molestiae est et animi. Ab porro laudantium eius non esse sint. Qui sunt dolorem dolores rerum rem.	2021-01-13 23:19:55.438465	2021-01-17 20:00:12.440513	1610913612_high-waist-pants-with-pockets	\N	\N	1	1	2021-01-13 23:19:55.546492	2021-01-17 20:00:12.440256	t	\N	\N
65	Elegant Blouse With Chocker	Minus voluptatibus ipsa totam velit mollitia. Est aspernatur ut minima fuga. Doloribus aut tempore numquam eius vel molestiae minima tenetur.	2021-01-13 23:19:40.767551	2021-01-17 20:00:47.752414	1610913647_elegant-blouse-with-chocker	\N	\N	1	1	2021-01-13 23:19:40.813544	2021-01-17 20:00:47.752134	t	\N	\N
95	Denim Hooded Jacket	Esse qui et dicta vitae adipisci exercitationem. Magni sint qui sit et repellat non. Est adipisci alias nihil vero. Ad explicabo sit voluptatem dolorum.	2021-01-13 23:19:49.274253	2021-01-17 20:01:26.692873	1610913686_denim-hooded-jacket	\N	\N	1	1	2021-01-13 23:19:49.366938	2021-01-17 20:01:26.692601	t	\N	\N
\.


--
-- Data for Name: spree_products_taxons; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_products_taxons (product_id, taxon_id, id, "position") FROM stdin;
1	2	1	1
2	2	3	2
121	10	409	14
119	26	390	1
119	2	391	3
120	16	392	1
120	15	394	1
121	13	412	10
120	4	401	1
120	22	402	1
120	25	403	1
39	3	77	4
39	9	78	4
121	3	413	63
121	9	414	5
121	19	415	28
121	25	416	2
121	22	417	2
39	19	289	27
39	20	303	11
119	20	418	12
118	12	419	1
118	19	420	29
118	20	421	13
118	22	422	3
118	25	423	3
118	3	383	62
118	10	384	13
\.


--
-- Data for Name: spree_promotion_action_line_items; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_promotion_action_line_items (id, promotion_action_id, variant_id, quantity) FROM stdin;
\.


--
-- Data for Name: spree_promotion_actions; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_promotion_actions (id, promotion_id, "position", type, deleted_at) FROM stdin;
1	1	\N	Spree::Promotion::Actions::FreeShipping	\N
\.


--
-- Data for Name: spree_promotion_categories; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_promotion_categories (id, name, created_at, updated_at, code) FROM stdin;
\.


--
-- Data for Name: spree_promotion_rule_taxons; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_promotion_rule_taxons (id, taxon_id, promotion_rule_id) FROM stdin;
\.


--
-- Data for Name: spree_promotion_rule_users; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_promotion_rule_users (user_id, promotion_rule_id, id) FROM stdin;
\.


--
-- Data for Name: spree_promotion_rules; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_promotion_rules (id, promotion_id, user_id, product_group_id, type, created_at, updated_at, code, preferences) FROM stdin;
1	1	\N	\N	Spree::Promotion::Rules::OptionValue	2021-01-13 23:20:05.739929	2021-01-13 23:20:05.739929	\N	---\n:eligible_values:\n  '1': '23,3'\n:match_policy: any\n
\.


--
-- Data for Name: spree_promotions; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_promotions (id, description, expires_at, starts_at, name, type, usage_limit, match_policy, code, advertise, path, created_at, updated_at, promotion_category_id) FROM stdin;
1		\N	\N	free shipping	\N	\N	any	\N	f	\N	2021-01-13 23:20:05.707304	2021-01-13 23:20:05.707304	\N
\.


--
-- Data for Name: spree_properties; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_properties (id, name, presentation, created_at, updated_at) FROM stdin;
3	model	Model	2021-01-13 23:20:06.017377	2021-01-13 23:20:06.017377
4	shirt_type	Shirt type	2021-01-13 23:20:06.099675	2021-01-13 23:20:06.099675
5	sleeve_type	Sleeve type	2021-01-13 23:20:06.181065	2021-01-13 23:20:06.181065
6	material	Material	2021-01-13 23:20:06.249198	2021-01-13 23:20:06.249198
7	fit	Fit	2021-01-13 23:20:06.327551	2021-01-13 23:20:06.327551
9	type	type	2021-01-13 23:20:17.460756	2021-01-13 23:20:17.460756
10	collection	collection	2021-01-13 23:20:17.537522	2021-01-13 23:20:17.537522
11	made_from	Made from	2021-01-13 23:21:24.008385	2021-01-13 23:21:24.008385
12	type	Type	2021-01-13 23:21:24.023383	2021-01-13 23:21:24.023383
13	size	Size	2021-01-13 23:21:24.034494	2021-01-13 23:21:24.034494
14	length	Lenght	2021-01-13 23:21:24.050554	2021-01-13 23:21:24.050554
15	color	Color	2021-01-13 23:21:24.06194	2021-01-13 23:21:24.06194
16	collection	Collection	2021-01-13 23:21:24.072816	2021-01-13 23:21:24.072816
17	género	género	2021-01-14 20:30:28.068601	2021-01-14 20:30:28.068601
18	tipo	tipo	2021-01-17 22:50:06.247047	2021-01-17 22:50:06.247047
\.


--
-- Data for Name: spree_property_prototypes; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_property_prototypes (prototype_id, property_id, id) FROM stdin;
1	1	1
1	2	2
1	3	3
1	11	5
1	6	6
1	7	7
1	8	8
2	12	9
2	13	10
2	6	11
3	13	12
3	12	13
\.


--
-- Data for Name: spree_prototype_taxons; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_prototype_taxons (id, taxon_id, prototype_id) FROM stdin;
1	23	2
2	24	2
3	17	2
4	9	2
5	16	1
6	8	1
7	15	1
8	7	1
9	14	1
10	10	1
11	6	1
12	12	1
13	13	1
14	26	2
15	2	2
\.


--
-- Data for Name: spree_prototypes; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_prototypes (id, name, created_at, updated_at) FROM stdin;
2	Bottom	2021-01-13 23:21:24.291254	2021-01-14 16:49:22.753211
1	Top	2021-01-13 23:21:24.105792	2021-01-14 21:16:36.6366
\.


--
-- Data for Name: spree_refund_reasons; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_refund_reasons (id, name, active, mutable, created_at, updated_at) FROM stdin;
1	Return processing	t	f	2021-01-13 22:59:07.548353	2021-01-13 22:59:07.548353
\.


--
-- Data for Name: spree_refunds; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_refunds (id, payment_id, amount, transaction_id, created_at, updated_at, refund_reason_id, reimbursement_id) FROM stdin;
\.


--
-- Data for Name: spree_reimbursement_credits; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_reimbursement_credits (id, amount, reimbursement_id, creditable_id, creditable_type) FROM stdin;
\.


--
-- Data for Name: spree_reimbursement_types; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_reimbursement_types (id, name, active, mutable, created_at, updated_at, type) FROM stdin;
1	original	t	t	2021-01-13 22:59:08.017004	2021-01-13 22:59:08.370997	Spree::ReimbursementType::OriginalPayment
\.


--
-- Data for Name: spree_reimbursements; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_reimbursements (id, number, reimbursement_status, customer_return_id, order_id, total, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_return_authorization_reasons; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_return_authorization_reasons (id, name, active, mutable, created_at, updated_at) FROM stdin;
1	Better price available	t	t	2021-01-13 22:59:07.325204	2021-01-13 22:59:07.325204
2	Missed estimated delivery date	t	t	2021-01-13 22:59:07.333007	2021-01-13 22:59:07.333007
3	Missing parts or accessories	t	t	2021-01-13 22:59:07.339978	2021-01-13 22:59:07.339978
4	Damaged/Defective	t	t	2021-01-13 22:59:07.348386	2021-01-13 22:59:07.348386
5	Different from what was ordered	t	t	2021-01-13 22:59:07.355099	2021-01-13 22:59:07.355099
6	Different from description	t	t	2021-01-13 22:59:07.364477	2021-01-13 22:59:07.364477
7	No longer needed/wanted	t	t	2021-01-13 22:59:07.370507	2021-01-13 22:59:07.370507
8	Accidental order	t	t	2021-01-13 22:59:07.379412	2021-01-13 22:59:07.379412
9	Unauthorized purchase	t	t	2021-01-13 22:59:07.385478	2021-01-13 22:59:07.385478
\.


--
-- Data for Name: spree_return_authorizations; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_return_authorizations (id, number, state, order_id, memo, created_at, updated_at, stock_location_id, return_authorization_reason_id) FROM stdin;
\.


--
-- Data for Name: spree_return_items; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_return_items (id, return_authorization_id, inventory_unit_id, exchange_variant_id, created_at, updated_at, pre_tax_amount, included_tax_total, additional_tax_total, reception_status, acceptance_status, customer_return_id, reimbursement_id, acceptance_status_errors, preferred_reimbursement_type_id, override_reimbursement_type_id, resellable) FROM stdin;
\.


--
-- Data for Name: spree_role_users; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_role_users (role_id, user_id, id) FROM stdin;
1	1	1
\.


--
-- Data for Name: spree_roles; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_roles (id, name) FROM stdin;
1	admin
2	user
\.


--
-- Data for Name: spree_shipments; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_shipments (id, tracking, number, cost, shipped_at, order_id, address_id, state, created_at, updated_at, stock_location_id, adjustment_total, additional_tax_total, promo_total, included_tax_total, pre_tax_amount, taxable_adjustment_total, non_taxable_adjustment_total) FROM stdin;
1	\N	H87828649058	0.00	\N	1	\N	pending	2021-01-13 23:21:59.530598	2021-01-13 23:22:00.358001	1	0.00	0.00	0.00	0.00	0.0000	0.00	0.00
2	\N	H29464410879	5.00	\N	2	1	pending	2021-01-13 23:21:59.743485	2021-01-13 23:22:00.996664	1	0.00	0.00	0.00	0.00	0.0000	0.00	0.00
19	\N	H90092548911	5000.00	\N	5	4	pending	2021-01-17 22:24:17.281922	2021-01-17 22:24:37.093735	1	0.00	0.00	0.00	798.32	4201.6807	0.00	0.00
16	\N	H70032988787	5000.00	\N	4	4	pending	2021-01-14 21:57:57.864846	2021-01-14 21:58:22.903622	1	0.00	0.00	0.00	798.32	4201.6807	0.00	0.00
\.


--
-- Data for Name: spree_shipping_categories; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_shipping_categories (id, name, created_at, updated_at) FROM stdin;
1	Default	2021-01-13 22:59:03.863289	2021-01-13 22:59:03.863289
\.


--
-- Data for Name: spree_shipping_method_categories; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_shipping_method_categories (id, shipping_method_id, shipping_category_id, created_at, updated_at) FROM stdin;
1	1	1	2021-01-13 23:19:24.721233	2021-01-13 23:19:24.721233
2	2	1	2021-01-13 23:19:24.752028	2021-01-13 23:19:24.752028
3	3	1	2021-01-13 23:19:24.782402	2021-01-13 23:19:24.782402
4	4	1	2021-01-13 23:19:24.812874	2021-01-13 23:19:24.812874
5	5	1	2021-01-13 23:19:24.851495	2021-01-13 23:19:24.851495
6	6	1	2021-01-14 21:48:37.341648	2021-01-14 21:48:37.341648
\.


--
-- Data for Name: spree_shipping_method_zones; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_shipping_method_zones (shipping_method_id, zone_id, id) FROM stdin;
1	2	1
2	2	2
3	2	3
4	1	4
5	1	5
6	3	6
\.


--
-- Data for Name: spree_shipping_methods; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_shipping_methods (id, name, display_on, deleted_at, created_at, updated_at, tracking_url, admin_name, tax_category_id, code) FROM stdin;
1	UPS Ground (USD)	both	\N	2021-01-13 23:19:24.716379	2021-01-13 23:19:24.716379	\N	\N	\N	\N
2	UPS Two Day (USD)	both	\N	2021-01-13 23:19:24.747506	2021-01-13 23:19:24.747506	\N	\N	\N	\N
3	UPS One Day (USD)	both	\N	2021-01-13 23:19:24.777673	2021-01-13 23:19:24.777673	\N	\N	\N	\N
4	UPS Ground (EU)	both	\N	2021-01-13 23:19:24.808105	2021-01-13 23:19:24.808105	\N	\N	\N	\N
5	UPS Ground (EUR)	both	\N	2021-01-13 23:19:24.846525	2021-01-13 23:19:24.846525	\N	\N	\N	\N
6	envío dentro de Santiago	both	\N	2021-01-14 21:48:37.159533	2021-01-14 21:48:37.159533		Santiago_env	1	sa_in
\.


--
-- Data for Name: spree_shipping_rates; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_shipping_rates (id, shipment_id, shipping_method_id, selected, cost, created_at, updated_at, tax_rate_id) FROM stdin;
8	2	2	f	10.00	2021-01-13 23:22:00.949989	2021-01-13 23:22:00.949989	\N
9	2	3	f	15.00	2021-01-13 23:22:00.954016	2021-01-13 23:22:00.954016	\N
7	2	1	t	5.00	2021-01-13 23:22:00.946354	2021-01-13 23:22:00.975242	\N
11	16	6	t	5000.00	2021-01-14 21:57:57.888999	2021-01-14 21:58:05.074118	1
14	19	6	t	5000.00	2021-01-17 22:24:17.315485	2021-01-17 22:24:24.305402	1
\.


--
-- Data for Name: spree_state_changes; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_state_changes (id, name, previous_state, stateful_id, user_id, stateful_type, next_state, created_at, updated_at) FROM stdin;
1	payment	\N	1	\N	Spree::Order	balance_due	2021-01-13 23:22:00.243361	2021-01-13 23:22:00.243361
2	shipment	\N	1	\N	Spree::Order	pending	2021-01-13 23:22:00.284304	2021-01-13 23:22:00.284304
3	payment	\N	2	\N	Spree::Order	balance_due	2021-01-13 23:22:00.466448	2021-01-13 23:22:00.466448
4	shipment	\N	2	\N	Spree::Order	pending	2021-01-13 23:22:00.696346	2021-01-13 23:22:00.696346
5	order	address	4	1	Spree::Order	delivery	2021-01-14 21:50:35.870852	2021-01-14 21:50:35.870852
6	order	address	4	1	Spree::Order	delivery	2021-01-14 21:57:58.203186	2021-01-14 21:57:58.203186
7	order	delivery	4	1	Spree::Order	payment	2021-01-14 21:58:06.376395	2021-01-14 21:58:06.376395
8	order	payment	4	1	Spree::Order	complete	2021-01-14 21:58:22.70772	2021-01-14 21:58:22.70772
9	payment	\N	4	1	Spree::Order	balance_due	2021-01-14 21:58:22.887819	2021-01-14 21:58:22.887819
10	shipment	\N	4	1	Spree::Order	pending	2021-01-14 21:58:23.117203	2021-01-14 21:58:23.117203
11	order	address	5	1	Spree::Order	delivery	2021-01-17 22:18:34.95243	2021-01-17 22:18:34.95243
12	order	address	5	1	Spree::Order	delivery	2021-01-17 22:20:17.672801	2021-01-17 22:20:17.672801
13	order	address	5	1	Spree::Order	delivery	2021-01-17 22:24:17.998566	2021-01-17 22:24:17.998566
14	order	delivery	5	1	Spree::Order	payment	2021-01-17 22:24:25.688612	2021-01-17 22:24:25.688612
15	order	payment	5	1	Spree::Order	complete	2021-01-17 22:24:36.736755	2021-01-17 22:24:36.736755
16	payment	\N	5	1	Spree::Order	balance_due	2021-01-17 22:24:37.048258	2021-01-17 22:24:37.048258
17	shipment	\N	5	1	Spree::Order	pending	2021-01-17 22:24:37.290342	2021-01-17 22:24:37.290342
\.


--
-- Data for Name: spree_states; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_states (id, name, abbr, country_id, updated_at) FROM stdin;
1	Canillo	02	1	2021-01-13 22:59:39.341233
2	Encamp	03	1	2021-01-13 22:59:39.365261
3	La Massana	04	1	2021-01-13 22:59:39.380636
4	Ordino	05	1	2021-01-13 22:59:39.401853
5	Sant Julià de Lòria	06	1	2021-01-13 22:59:39.433079
6	Andorra la Vella	07	1	2021-01-13 22:59:39.448057
7	Escaldes-Engordany	08	1	2021-01-13 22:59:39.472785
42	Berat	01	6	2021-01-13 22:59:40.24303
43	Durrës	02	6	2021-01-13 22:59:40.268686
44	Elbasan	03	6	2021-01-13 22:59:40.298877
45	Fier	04	6	2021-01-13 22:59:40.321516
46	Gjirokastër	05	6	2021-01-13 22:59:40.355343
47	Korçë	06	6	2021-01-13 22:59:40.395343
48	Kukës	07	6	2021-01-13 22:59:40.419351
49	Lezhë	08	6	2021-01-13 22:59:40.445573
50	Dibër	09	6	2021-01-13 22:59:40.470831
51	Shkodër	10	6	2021-01-13 22:59:40.50426
52	Tiranë	11	6	2021-01-13 22:59:40.530846
53	Vlorë	12	6	2021-01-13 22:59:40.552364
54	Aragacotn	AG	7	2021-01-13 22:59:40.57881
55	Ararat	AR	7	2021-01-13 22:59:40.6028
56	Armavir	AV	7	2021-01-13 22:59:40.623174
57	Erevan	ER	7	2021-01-13 22:59:40.649542
58	Gegarkunik'	GR	7	2021-01-13 22:59:40.677506
59	Kotayk'	KT	7	2021-01-13 22:59:40.701404
60	Lory	LO	7	2021-01-13 22:59:40.720302
61	Sirak	SH	7	2021-01-13 22:59:40.742316
62	Syunik'	SU	7	2021-01-13 22:59:40.771312
63	Tavus	TV	7	2021-01-13 22:59:40.802927
64	Vayoc Jor	VD	7	2021-01-13 22:59:40.826775
65	Salta	A	10	2021-01-13 22:59:40.852931
66	Buenos Aires	B	10	2021-01-13 22:59:40.884431
67	Ciudad Autónoma de Buenos Aires	C	10	2021-01-13 22:59:40.911972
68	San Luis	D	10	2021-01-13 22:59:40.937429
69	Entre Rios	E	10	2021-01-13 22:59:40.987194
70	Santiago del Estero	G	10	2021-01-13 22:59:41.016056
71	Chaco	H	10	2021-01-13 22:59:41.04277
72	San Juan	J	10	2021-01-13 22:59:41.064059
73	Catamarca	K	10	2021-01-13 22:59:41.085624
74	La Pampa	L	10	2021-01-13 22:59:41.118115
75	Mendoza	M	10	2021-01-13 22:59:41.14658
76	Misiones	N	10	2021-01-13 22:59:41.170405
77	Formosa	P	10	2021-01-13 22:59:41.191922
78	Neuquen	Q	10	2021-01-13 22:59:41.216994
79	Rio Negro	R	10	2021-01-13 22:59:41.248769
80	Santa Fe	S	10	2021-01-13 22:59:41.278749
81	Tucuman	T	10	2021-01-13 22:59:41.306098
82	Chubut	U	10	2021-01-13 22:59:41.331493
83	Tierra del Fuego	V	10	2021-01-13 22:59:41.357867
84	Corrientes	W	10	2021-01-13 22:59:41.384947
85	Cordoba	X	10	2021-01-13 22:59:41.409387
86	Jujuy	Y	10	2021-01-13 22:59:41.434036
87	Santa Cruz	Z	10	2021-01-13 22:59:41.453198
88	La Rioja	F	10	2021-01-13 22:59:41.484115
89	Burgenland	1	12	2021-01-13 22:59:41.514129
90	Kärnten	2	12	2021-01-13 22:59:41.539155
91	Niederösterreich	3	12	2021-01-13 22:59:41.571018
92	Oberösterreich	4	12	2021-01-13 22:59:41.603657
93	Salzburg	5	12	2021-01-13 22:59:41.634494
94	Steiermark	6	12	2021-01-13 22:59:41.65496
95	Tirol	7	12	2021-01-13 22:59:41.68275
96	Vorarlberg	8	12	2021-01-13 22:59:41.711251
97	Wien	9	12	2021-01-13 22:59:41.736101
98	Australian Capital Territory	ACT	13	2021-01-13 22:59:41.757955
99	New South Wales	NSW	13	2021-01-13 22:59:41.785237
100	Northern Territory	NT	13	2021-01-13 22:59:41.808935
101	Queensland	QLD	13	2021-01-13 22:59:41.836463
102	South Australia	SA	13	2021-01-13 22:59:41.860081
103	Tasmania	TAS	13	2021-01-13 22:59:41.886354
104	Victoria	VIC	13	2021-01-13 22:59:41.914172
105	Western Australia	WA	13	2021-01-13 22:59:41.937208
106	Abşeron	ABS	16	2021-01-13 22:59:41.974982
107	Ağstafa	AGA	16	2021-01-13 22:59:42.004484
108	Ağcabədi	AGC	16	2021-01-13 22:59:42.027975
109	Ağdam	AGM	16	2021-01-13 22:59:42.052376
110	Ağdaş	AGS	16	2021-01-13 22:59:42.089656
111	Ağsu	AGU	16	2021-01-13 22:59:42.132853
112	Astara	AST	16	2021-01-13 22:59:42.178365
113	Bakı	BA	16	2021-01-13 22:59:42.245756
114	Balakən	BAL	16	2021-01-13 22:59:42.28089
115	Bərdə	BAR	16	2021-01-13 22:59:42.317148
116	Beyləqan	BEY	16	2021-01-13 22:59:42.350667
117	Biləsuvar	BIL	16	2021-01-13 22:59:42.409181
118	Cəbrayıl	CAB	16	2021-01-13 22:59:42.451387
119	Cəlilabab	CAL	16	2021-01-13 22:59:42.482957
120	Daşkəsən	DAS	16	2021-01-13 22:59:42.505551
121	Füzuli	FUZ	16	2021-01-13 22:59:42.537845
122	Gəncə	GA	16	2021-01-13 22:59:42.562437
123	Gədəbəy	GAD	16	2021-01-13 22:59:42.588867
124	Goranboy	GOR	16	2021-01-13 22:59:42.614551
125	Göyçay	GOY	16	2021-01-13 22:59:42.63167
126	Göygöl	GYG	16	2021-01-13 22:59:42.657421
127	Hacıqabul	HAC	16	2021-01-13 22:59:42.681976
128	İmişli	IMI	16	2021-01-13 22:59:42.702487
129	İsmayıllı	ISM	16	2021-01-13 22:59:42.725296
130	Kəlbəcər	KAL	16	2021-01-13 22:59:42.758524
131	Kürdəmir	KUR	16	2021-01-13 22:59:42.785438
132	Lənkəran	LA	16	2021-01-13 22:59:42.813725
133	Laçın	LAC	16	2021-01-13 22:59:42.833654
134	Lerik	LER	16	2021-01-13 22:59:42.900511
135	Masallı	MAS	16	2021-01-13 22:59:42.928064
136	Mingəçevir	MI	16	2021-01-13 22:59:42.953805
137	Naftalan	NA	16	2021-01-13 22:59:42.983192
138	Neftçala	NEF	16	2021-01-13 22:59:43.002524
139	Naxçıvan	NX	16	2021-01-13 22:59:43.02548
140	Oğuz	OGU	16	2021-01-13 22:59:43.049285
141	Qəbələ	QAB	16	2021-01-13 22:59:43.078411
142	Qax	QAX	16	2021-01-13 22:59:43.098849
143	Qazax	QAZ	16	2021-01-13 22:59:43.123469
144	Quba	QBA	16	2021-01-13 22:59:43.155982
145	Qubadlı	QBI	16	2021-01-13 22:59:43.192431
146	Qobustan	QOB	16	2021-01-13 22:59:43.219389
147	Qusar	QUS	16	2021-01-13 22:59:43.242623
148	Şəki	SA	16	2021-01-13 22:59:43.26733
149	Sabirabad	SAB	16	2021-01-13 22:59:43.299235
150	Salyan	SAL	16	2021-01-13 22:59:43.34322
151	Saatlı	SAT	16	2021-01-13 22:59:43.36728
152	Şabran	SBN	16	2021-01-13 22:59:43.387421
153	Siyəzən	SIY	16	2021-01-13 22:59:43.424538
154	Şəmkir	SKR	16	2021-01-13 22:59:43.443053
155	Sumqayıt	SM	16	2021-01-13 22:59:43.461918
156	Şamaxı	SMI	16	2021-01-13 22:59:43.47968
157	Samux	SMX	16	2021-01-13 22:59:43.497061
158	Şirvan	SR	16	2021-01-13 22:59:43.521148
159	Şuşa	SUS	16	2021-01-13 22:59:43.546265
160	Tərtər	TAR	16	2021-01-13 22:59:43.563826
161	Tovuz	TOV	16	2021-01-13 22:59:43.587227
162	Ucar	UCA	16	2021-01-13 22:59:43.610896
163	Xankəndi	XA	16	2021-01-13 22:59:43.642589
164	Xaçmaz	XAC	16	2021-01-13 22:59:43.664376
165	Xocalı	XCI	16	2021-01-13 22:59:43.687033
166	Xızı	XIZ	16	2021-01-13 22:59:43.702751
167	Xocavənd	XVD	16	2021-01-13 22:59:43.729024
168	Yardımlı	YAR	16	2021-01-13 22:59:43.748337
169	Yevlax	YE	16	2021-01-13 22:59:43.781226
170	Zəngilan	ZAN	16	2021-01-13 22:59:43.819354
171	Zaqatala	ZAQ	16	2021-01-13 22:59:43.838158
172	Zərdab	ZAR	16	2021-01-13 22:59:43.862256
173	Federacija Bosne i Hercegovine	BIH	17	2021-01-13 22:59:43.887483
174	Brčko distrikt	BRC	17	2021-01-13 22:59:43.902839
175	Republika Srpska	SRP	17	2021-01-13 22:59:43.926116
176	Christ Church	01	18	2021-01-13 22:59:43.945913
177	Saint Andrew	02	18	2021-01-13 22:59:43.968295
178	Saint George	03	18	2021-01-13 22:59:43.991986
179	Saint James	04	18	2021-01-13 22:59:44.016043
180	Saint John	05	18	2021-01-13 22:59:44.035446
181	Saint Joseph	06	18	2021-01-13 22:59:44.053037
182	Saint Lucy	07	18	2021-01-13 22:59:44.069677
183	Saint Michael	08	18	2021-01-13 22:59:44.092562
184	Saint Peter	09	18	2021-01-13 22:59:44.116687
185	Saint Philip	10	18	2021-01-13 22:59:44.135608
186	Saint Thomas	11	18	2021-01-13 22:59:44.158307
187	Barisal	A	19	2021-01-13 22:59:44.173767
188	Chittagong	B	19	2021-01-13 22:59:44.192487
189	Dhaka	C	19	2021-01-13 22:59:44.215016
190	Khulna	D	19	2021-01-13 22:59:44.232988
191	Rajshahi	E	19	2021-01-13 22:59:44.250588
192	Rangpur	F	19	2021-01-13 22:59:44.271679
193	Sylhet	G	19	2021-01-13 22:59:44.294097
194	Rangpur bibhag	7	19	2021-01-13 22:59:44.31501
195	Brussels-Capital Region	BRU	20	2021-01-13 22:59:44.333319
196	Flemish Region	VLG	20	2021-01-13 22:59:44.361203
197	Walloon Region	WAL	20	2021-01-13 22:59:44.379948
198	Blagoevgrad	01	22	2021-01-13 22:59:44.403413
199	Burgas	02	22	2021-01-13 22:59:44.426732
200	Varna	03	22	2021-01-13 22:59:44.441847
201	Veliko Tarnovo	04	22	2021-01-13 22:59:44.467215
202	Vidin	05	22	2021-01-13 22:59:44.489927
203	Vratsa	06	22	2021-01-13 22:59:44.502816
204	Gabrovo	07	22	2021-01-13 22:59:44.521989
205	Dobrich	08	22	2021-01-13 22:59:44.539943
206	Kardzhali	09	22	2021-01-13 22:59:44.569499
207	Kyustendil	10	22	2021-01-13 22:59:44.595418
208	Lovech	11	22	2021-01-13 22:59:44.616505
209	Montana	12	22	2021-01-13 22:59:44.632676
210	Pazardzhik	13	22	2021-01-13 22:59:44.655732
211	Pernik	14	22	2021-01-13 22:59:44.671671
212	Pleven	15	22	2021-01-13 22:59:44.698437
213	Plovdiv	16	22	2021-01-13 22:59:44.719274
214	Razgrad	17	22	2021-01-13 22:59:44.73456
215	Ruse	18	22	2021-01-13 22:59:44.75168
216	Silistra	19	22	2021-01-13 22:59:44.769535
217	Sliven	20	22	2021-01-13 22:59:44.784714
218	Smolyan	21	22	2021-01-13 22:59:44.799033
219	Sofia-Grad	22	22	2021-01-13 22:59:44.82674
220	Sofia	23	22	2021-01-13 22:59:44.849848
221	Stara Zagora	24	22	2021-01-13 22:59:44.869449
222	Targovishte	25	22	2021-01-13 22:59:44.88738
223	Haskovo	26	22	2021-01-13 22:59:44.914963
224	Shumen	27	22	2021-01-13 22:59:44.934549
225	Yambol	28	22	2021-01-13 22:59:44.952467
226	Al Manāmah (Al ‘Āşimah)	13	23	2021-01-13 22:59:44.981395
227	Al Janūbīyah	14	23	2021-01-13 22:59:45.001158
228	Al Muḩarraq	15	23	2021-01-13 22:59:45.020078
229	Al Wusţá	16	23	2021-01-13 22:59:45.044306
230	Ash Shamālīyah	17	23	2021-01-13 22:59:45.063319
231	Belait	BE	28	2021-01-13 22:59:45.084121
232	Brunei-Muara	BM	28	2021-01-13 22:59:45.106885
233	Temburong	TE	28	2021-01-13 22:59:45.137776
234	Tutong	TU	28	2021-01-13 22:59:45.170225
235	Bonaire	BO	30	2021-01-13 22:59:45.223629
236	Saba	SA	30	2021-01-13 22:59:45.25033
237	Sint Eustatius	SE	30	2021-01-13 22:59:45.297704
238	Acre	AC	31	2021-01-13 22:59:45.3286
239	Alagoas	AL	31	2021-01-13 22:59:45.387066
240	Amazonas	AM	31	2021-01-13 22:59:45.417983
241	Amapá	AP	31	2021-01-13 22:59:45.450087
242	Bahia	BA	31	2021-01-13 22:59:45.470747
243	Ceará	CE	31	2021-01-13 22:59:45.489936
244	Distrito Federal	DF	31	2021-01-13 22:59:45.515643
245	Espírito Santo	ES	31	2021-01-13 22:59:45.535107
246	Goiás	GO	31	2021-01-13 22:59:45.552894
247	Maranhão	MA	31	2021-01-13 22:59:45.575531
248	Minas Gerais	MG	31	2021-01-13 22:59:45.596241
249	Mato Grosso do Sul	MS	31	2021-01-13 22:59:45.618853
250	Mato Grosso	MT	31	2021-01-13 22:59:45.638764
251	Pará	PA	31	2021-01-13 22:59:45.65833
252	Paraíba	PB	31	2021-01-13 22:59:45.683653
253	Pernambuco	PE	31	2021-01-13 22:59:45.702472
254	Piauí	PI	31	2021-01-13 22:59:45.720079
255	Paraná	PR	31	2021-01-13 22:59:45.746298
256	Rio de Janeiro	RJ	31	2021-01-13 22:59:45.768605
257	Rio Grande do Norte	RN	31	2021-01-13 22:59:45.789346
258	Rondônia	RO	31	2021-01-13 22:59:45.808933
259	Roraima	RR	31	2021-01-13 22:59:45.827059
260	Rio Grande do Sul	RS	31	2021-01-13 22:59:45.851679
261	Santa Catarina	SC	31	2021-01-13 22:59:45.873503
262	Sergipe	SE	31	2021-01-13 22:59:45.891889
263	São Paulo	SP	31	2021-01-13 22:59:45.914035
264	Tocantins	TO	31	2021-01-13 22:59:45.928133
265	Paro	11	33	2021-01-13 22:59:45.949152
266	Chhukha	12	33	2021-01-13 22:59:45.972865
267	Ha	13	33	2021-01-13 22:59:45.991137
268	Samtee	14	33	2021-01-13 22:59:46.012361
269	Thimphu	15	33	2021-01-13 22:59:46.032139
270	Tsirang	21	33	2021-01-13 22:59:46.060423
271	Dagana	22	33	2021-01-13 22:59:46.082253
272	Punakha	23	33	2021-01-13 22:59:46.10515
273	Wangdue Phodrang	24	33	2021-01-13 22:59:46.126913
274	Sarpang	31	33	2021-01-13 22:59:46.145582
275	Trongsa	32	33	2021-01-13 22:59:46.162972
276	Bumthang	33	33	2021-01-13 22:59:46.186117
277	Zhemgang	34	33	2021-01-13 22:59:46.208747
278	Trashigang	41	33	2021-01-13 22:59:46.229924
279	Monggar	42	33	2021-01-13 22:59:46.261172
280	Pemagatshel	43	33	2021-01-13 22:59:46.281856
281	Lhuentse	44	33	2021-01-13 22:59:46.298912
282	Samdrup Jongkha	45	33	2021-01-13 22:59:46.325705
283	Gasa	GA	33	2021-01-13 22:59:46.347581
284	Trashi Yangtse	TY	33	2021-01-13 22:59:46.366072
285	Brèsckaja voblasc'	BR	36	2021-01-13 22:59:46.384946
286	Horad Minsk	HM	36	2021-01-13 22:59:46.40678
287	Homel'skaja voblasc'	HO	36	2021-01-13 22:59:46.426412
288	Hrodzenskaja voblasc'	HR	36	2021-01-13 22:59:46.445312
289	Mahilëuskaja voblasc'	MA	36	2021-01-13 22:59:46.462678
290	Minskaja voblasc'	MI	36	2021-01-13 22:59:46.483859
291	Vicebskaja voblasc'	VI	36	2021-01-13 22:59:46.507199
292	Alberta	AB	38	2021-01-13 22:59:46.527197
293	British Columbia	BC	38	2021-01-13 22:59:46.553388
294	Manitoba	MB	38	2021-01-13 22:59:46.573393
295	New Brunswick	NB	38	2021-01-13 22:59:46.597453
296	Newfoundland and Labrador	NL	38	2021-01-13 22:59:46.619296
297	Nova Scotia	NS	38	2021-01-13 22:59:46.634702
298	Northwest Territories	NT	38	2021-01-13 22:59:46.662827
299	Nunavut	NU	38	2021-01-13 22:59:46.6846
300	Ontario	ON	38	2021-01-13 22:59:46.699039
301	Prince Edward Island	PE	38	2021-01-13 22:59:46.722826
302	Quebec	QC	38	2021-01-13 22:59:46.737646
303	Saskatchewan	SK	38	2021-01-13 22:59:46.764492
304	Yukon Territory	YT	38	2021-01-13 22:59:46.791043
305	Aargau	AG	43	2021-01-13 22:59:46.808101
306	Appenzell Innerrhoden	AI	43	2021-01-13 22:59:46.832293
307	Appenzell Ausserrhoden	AR	43	2021-01-13 22:59:46.856361
308	Bern	BE	43	2021-01-13 22:59:46.877207
309	Basel-Landschaft	BL	43	2021-01-13 22:59:46.900755
310	Basel-Stadt	BS	43	2021-01-13 22:59:46.928411
311	Fribourg	FR	43	2021-01-13 22:59:46.952883
312	Genève	GE	43	2021-01-13 22:59:46.993772
313	Glarus	GL	43	2021-01-13 22:59:47.023129
314	Graubünden	GR	43	2021-01-13 22:59:47.048775
315	Jura	JU	43	2021-01-13 22:59:47.069323
316	Luzern	LU	43	2021-01-13 22:59:47.096261
317	Neuchâtel	NE	43	2021-01-13 22:59:47.133691
318	Nidwalden	NW	43	2021-01-13 22:59:47.189886
319	Obwalden	OW	43	2021-01-13 22:59:47.242668
320	Sankt Gallen	SG	43	2021-01-13 22:59:47.279727
321	Schaffhausen	SH	43	2021-01-13 22:59:47.342378
322	Solothurn	SO	43	2021-01-13 22:59:47.388487
323	Schwyz	SZ	43	2021-01-13 22:59:47.473197
324	Thurgau	TG	43	2021-01-13 22:59:47.502943
325	Ticino	TI	43	2021-01-13 22:59:47.542814
326	Uri	UR	43	2021-01-13 22:59:47.571086
327	Vaud	VD	43	2021-01-13 22:59:47.599169
328	Valais	VS	43	2021-01-13 22:59:47.628306
329	Zug	ZG	43	2021-01-13 22:59:47.653444
330	Zürich	ZH	43	2021-01-13 22:59:47.675903
331	Aisén del General Carlos Ibáñez del Campo	AI	46	2021-01-13 22:59:47.702642
332	Antofagasta	AN	46	2021-01-13 22:59:47.730899
333	Arica y Parinacota	AP	46	2021-01-13 22:59:47.764396
334	Araucanía	AR	46	2021-01-13 22:59:47.785603
335	Atacama	AT	46	2021-01-13 22:59:47.808155
336	Bío-Bío	BI	46	2021-01-13 22:59:47.83304
337	Coquimbo	CO	46	2021-01-13 22:59:47.855131
338	Libertador General Bernardo O'Higgins	LI	46	2021-01-13 22:59:47.877922
339	Los Lagos	LL	46	2021-01-13 22:59:47.899302
340	Los Ríos	LR	46	2021-01-13 22:59:47.928181
341	Magallanes y Antártica Chilena	MA	46	2021-01-13 22:59:47.94552
342	Maule	ML	46	2021-01-13 22:59:47.969054
343	Región Metropolitana de Santiago	RM	46	2021-01-13 22:59:47.995007
344	Tarapacá	TA	46	2021-01-13 22:59:48.018074
345	Valparaíso	VS	46	2021-01-13 22:59:48.041344
346	Anhui Sheng	AH	48	2021-01-13 22:59:48.066931
347	Beijing Shi	BJ	48	2021-01-13 22:59:48.089852
348	Chongqing Shi	CQ	48	2021-01-13 22:59:48.115341
349	Fujian Sheng	FJ	48	2021-01-13 22:59:48.166749
350	Guangdong Sheng	GD	48	2021-01-13 22:59:48.211523
351	Gansu Sheng	GS	48	2021-01-13 22:59:48.30095
352	Guangxi Zhuangzu Zizhiqu	GX	48	2021-01-13 22:59:48.583901
353	Guizhou Sheng	GZ	48	2021-01-13 22:59:48.613836
354	Henan Sheng	HA	48	2021-01-13 22:59:48.635665
355	Hubei Sheng	HB	48	2021-01-13 22:59:48.658507
356	Hebei Sheng	HE	48	2021-01-13 22:59:48.694297
357	Hainan Sheng	HI	48	2021-01-13 22:59:48.724075
358	Hong Kong SAR (see also separate country code entry under HK)	HK	48	2021-01-13 22:59:48.746883
359	Heilongjiang Sheng	HL	48	2021-01-13 22:59:48.781904
360	Hunan Sheng	HN	48	2021-01-13 22:59:48.810791
361	Jilin Sheng	JL	48	2021-01-13 22:59:48.835815
362	Jiangsu Sheng	JS	48	2021-01-13 22:59:48.864846
363	Jiangxi Sheng	JX	48	2021-01-13 22:59:48.886599
364	Liaoning Sheng	LN	48	2021-01-13 22:59:48.91524
365	Macao SAR (see also separate country code entry under MO)	MO	48	2021-01-13 22:59:48.941277
366	Nei Mongol Zizhiqu	NM	48	2021-01-13 22:59:48.971553
367	Ningxia Huizi Zizhiqu	NX	48	2021-01-13 22:59:49.001605
368	Qinghai Sheng	QH	48	2021-01-13 22:59:49.023762
369	Sichuan Sheng	SC	48	2021-01-13 22:59:49.048397
370	Shandong Sheng	SD	48	2021-01-13 22:59:49.076211
371	Shanghai Shi	SH	48	2021-01-13 22:59:49.110779
372	Shaanxi Sheng	SN	48	2021-01-13 22:59:49.136233
373	Shanxi Sheng	SX	48	2021-01-13 22:59:49.16165
374	Tianjin Shi	TJ	48	2021-01-13 22:59:49.184891
375	Taiwan Sheng (see also separate country code entry under TW)	TW	48	2021-01-13 22:59:49.21882
376	Xinjiang Uygur Zizhiqu	XJ	48	2021-01-13 22:59:49.245808
377	Xizang Zizhiqu	XZ	48	2021-01-13 22:59:49.275588
378	Yunnan Sheng	YN	48	2021-01-13 22:59:49.302305
379	Zhejiang Sheng	ZJ	48	2021-01-13 22:59:49.327819
380	Amazonas	AMA	49	2021-01-13 22:59:49.355917
381	Antioquia	ANT	49	2021-01-13 22:59:49.383041
382	Arauca	ARA	49	2021-01-13 22:59:49.410072
383	Atlántico	ATL	49	2021-01-13 22:59:49.431008
384	Bolívar	BOL	49	2021-01-13 22:59:49.46037
385	Boyacá	BOY	49	2021-01-13 22:59:49.494013
386	Caldas	CAL	49	2021-01-13 22:59:49.513644
387	Caquetá	CAQ	49	2021-01-13 22:59:49.5392
388	Casanare	CAS	49	2021-01-13 22:59:49.561128
389	Cauca	CAU	49	2021-01-13 22:59:49.590799
390	Cesar	CES	49	2021-01-13 22:59:49.618153
391	Chocó	CHO	49	2021-01-13 22:59:49.643915
392	Córdoba	COR	49	2021-01-13 22:59:49.670667
393	Cundinamarca	CUN	49	2021-01-13 22:59:49.694826
394	Distrito Capital de Bogotá	DC	49	2021-01-13 22:59:49.720005
395	Guainía	GUA	49	2021-01-13 22:59:49.745002
396	Guaviare	GUV	49	2021-01-13 22:59:49.771668
397	Huila	HUI	49	2021-01-13 22:59:49.790859
398	La Guajira	LAG	49	2021-01-13 22:59:49.814617
399	Magdalena	MAG	49	2021-01-13 22:59:49.843663
400	Meta	MET	49	2021-01-13 22:59:49.86672
401	Nariño	NAR	49	2021-01-13 22:59:49.893406
402	Norte de Santander	NSA	49	2021-01-13 22:59:49.919415
403	Putumayo	PUT	49	2021-01-13 22:59:49.951101
404	Quindío	QUI	49	2021-01-13 22:59:49.982033
405	Risaralda	RIS	49	2021-01-13 22:59:50.010038
406	Santander	SAN	49	2021-01-13 22:59:50.032641
407	San Andrés, Providencia y Santa Catalina	SAP	49	2021-01-13 22:59:50.052878
408	Sucre	SUC	49	2021-01-13 22:59:50.082767
409	Tolima	TOL	49	2021-01-13 22:59:50.11701
410	Valle del Cauca	VAC	49	2021-01-13 22:59:50.166937
411	Vaupés	VAU	49	2021-01-13 22:59:50.19848
412	Vichada	VID	49	2021-01-13 22:59:50.245765
413	Alajuela	A	50	2021-01-13 22:59:50.281991
414	Cartago	C	50	2021-01-13 22:59:50.323639
415	Guanacaste	G	50	2021-01-13 22:59:50.350562
416	Heredia	H	50	2021-01-13 22:59:50.406947
417	Limón	L	50	2021-01-13 22:59:50.456822
418	Puntarenas	P	50	2021-01-13 22:59:50.53178
419	San José	SJ	50	2021-01-13 22:59:50.565206
420	Pinar del Rio	01	51	2021-01-13 22:59:50.640307
421	La Habana	02	51	2021-01-13 22:59:50.678
422	Ciudad de La Habana	03	51	2021-01-13 22:59:50.695797
423	Matanzas	04	51	2021-01-13 22:59:50.716399
424	Villa Clara	05	51	2021-01-13 22:59:50.734109
425	Cienfuegos	06	51	2021-01-13 22:59:50.754256
426	Sancti Spíritus	07	51	2021-01-13 22:59:50.779908
427	Ciego de Ávila	08	51	2021-01-13 22:59:50.799114
428	Camagüey	09	51	2021-01-13 22:59:50.821077
429	Las Tunas	10	51	2021-01-13 22:59:50.843002
430	Holguín	11	51	2021-01-13 22:59:50.861122
431	Granma	12	51	2021-01-13 22:59:50.883252
432	Santiago de Cuba	13	51	2021-01-13 22:59:50.898255
433	Guantánamo	14	51	2021-01-13 22:59:50.92214
434	Isla de la Juventud	99	51	2021-01-13 22:59:50.944994
435	Ilhas de Barlavento	B	52	2021-01-13 22:59:50.961683
436	Ilhas de Sotavento	S	52	2021-01-13 22:59:50.982915
437	Lefkosía	01	55	2021-01-13 22:59:51.010036
438	Lemesós	02	55	2021-01-13 22:59:51.026468
439	Lárnaka	03	55	2021-01-13 22:59:51.04914
440	Ammóchostos	04	55	2021-01-13 22:59:51.070895
441	Páfos	05	55	2021-01-13 22:59:51.127712
442	Kerýneia	06	55	2021-01-13 22:59:51.189946
443	Praha, Hlavní mešto	10	56	2021-01-13 22:59:51.294006
444	Středočeský kraj	20	56	2021-01-13 22:59:51.315169
445	Jihočeský kraj	31	56	2021-01-13 22:59:51.338717
446	Plzeňský kraj	32	56	2021-01-13 22:59:51.358184
447	Karlovarský kraj	41	56	2021-01-13 22:59:51.384154
448	Ústecký kraj	42	56	2021-01-13 22:59:51.403527
449	Liberecký kraj	51	56	2021-01-13 22:59:51.422771
450	Královéhradecký kraj	52	56	2021-01-13 22:59:51.445065
451	Pardubický kraj	53	56	2021-01-13 22:59:51.461734
452	Kraj Vysočina	63	56	2021-01-13 22:59:51.484438
453	Jihomoravský kraj	64	56	2021-01-13 22:59:51.506039
454	Olomoucký kraj	71	56	2021-01-13 22:59:51.527325
455	Zlínský kraj	72	56	2021-01-13 22:59:51.549904
456	Moravskoslezský kraj	80	56	2021-01-13 22:59:51.567298
457	Brandenburg	BB	57	2021-01-13 22:59:51.589068
458	Berlin	BE	57	2021-01-13 22:59:51.614345
459	Baden-Württemberg	BW	57	2021-01-13 22:59:51.630939
460	Bayern	BY	57	2021-01-13 22:59:51.652035
461	Bremen	HB	57	2021-01-13 22:59:51.676348
462	Hessen	HE	57	2021-01-13 22:59:51.692215
463	Hamburg	HH	57	2021-01-13 22:59:51.718262
464	Mecklenburg-Vorpommern	MV	57	2021-01-13 22:59:51.738174
465	Niedersachsen	NI	57	2021-01-13 22:59:51.754657
466	Nordrhein-Westfalen	NW	57	2021-01-13 22:59:51.776008
467	Rheinland-Pfalz	RP	57	2021-01-13 22:59:51.790126
468	Schleswig-Holstein	SH	57	2021-01-13 22:59:51.811693
469	Saarland	SL	57	2021-01-13 22:59:51.833737
470	Sachsen	SN	57	2021-01-13 22:59:51.858997
471	Sachsen-Anhalt	ST	57	2021-01-13 22:59:51.877035
472	Thüringen	TH	57	2021-01-13 22:59:51.900593
473	Nordjylland	81	59	2021-01-13 22:59:51.923665
474	Midtjylland	82	59	2021-01-13 22:59:51.941835
475	Syddanmark	83	59	2021-01-13 22:59:51.961486
476	Hovedstaden	84	59	2021-01-13 22:59:51.992922
477	Sjælland	85	59	2021-01-13 22:59:52.01235
478	Distrito Nacional (Santo Domingo)	01	61	2021-01-13 22:59:52.031759
479	Azua	02	61	2021-01-13 22:59:52.054397
480	Bahoruco	03	61	2021-01-13 22:59:52.074388
481	Barahona	04	61	2021-01-13 22:59:52.096145
482	Dajabón	05	61	2021-01-13 22:59:52.118424
483	Duarte	06	61	2021-01-13 22:59:52.134655
484	La Estrelleta [Elías Piña]	07	61	2021-01-13 22:59:52.153388
485	El Seybo [El Seibo]	08	61	2021-01-13 22:59:52.176455
486	Espaillat	09	61	2021-01-13 22:59:52.196839
487	Independencia	10	61	2021-01-13 22:59:52.219116
488	La Altagracia	11	61	2021-01-13 22:59:52.233989
489	La Romana	12	61	2021-01-13 22:59:52.262083
490	La Vega	13	61	2021-01-13 22:59:52.284948
491	María Trinidad Sánchez	14	61	2021-01-13 22:59:52.305077
492	Monte Cristi	15	61	2021-01-13 22:59:52.328539
493	Pedernales	16	61	2021-01-13 22:59:52.347754
494	Peravia	17	61	2021-01-13 22:59:52.367355
495	Puerto Plata	18	61	2021-01-13 22:59:52.38798
496	Salcedo	19	61	2021-01-13 22:59:52.410293
497	Samaná	20	61	2021-01-13 22:59:52.432084
498	San Cristóbal	21	61	2021-01-13 22:59:52.451592
499	San Juan	22	61	2021-01-13 22:59:52.47075
500	San Pedro de Macorís	23	61	2021-01-13 22:59:52.494246
501	Sánchez Ramírez	24	61	2021-01-13 22:59:52.51478
502	Santiago	25	61	2021-01-13 22:59:52.538121
503	Santiago Rodríguez	26	61	2021-01-13 22:59:52.560566
504	Valverde	27	61	2021-01-13 22:59:52.576083
505	Monseñor Nouel	28	61	2021-01-13 22:59:52.597938
506	Monte Plata	29	61	2021-01-13 22:59:52.618335
507	Hato Mayor	30	61	2021-01-13 22:59:52.634512
508	Adrar	01	62	2021-01-13 22:59:52.663529
509	Chlef	02	62	2021-01-13 22:59:52.684094
510	Laghouat	03	62	2021-01-13 22:59:52.700249
511	Oum el Bouaghi	04	62	2021-01-13 22:59:52.721396
512	Batna	05	62	2021-01-13 22:59:52.738618
513	Béjaïa	06	62	2021-01-13 22:59:52.758533
514	Biskra	07	62	2021-01-13 22:59:52.792605
515	Béchar	08	62	2021-01-13 22:59:52.809307
516	Blida	09	62	2021-01-13 22:59:52.828994
517	Bouira	10	62	2021-01-13 22:59:52.844146
518	Tamanghasset	11	62	2021-01-13 22:59:52.864805
519	Tébessa	12	62	2021-01-13 22:59:52.884638
520	Tlemcen	13	62	2021-01-13 22:59:52.901084
521	Tiaret	14	62	2021-01-13 22:59:52.972645
522	Tizi Ouzou	15	62	2021-01-13 22:59:52.999003
523	Alger	16	62	2021-01-13 22:59:53.018519
524	Djelfa	17	62	2021-01-13 22:59:53.037259
525	Jijel	18	62	2021-01-13 22:59:53.05977
526	Sétif	19	62	2021-01-13 22:59:53.075183
527	Saïda	20	62	2021-01-13 22:59:53.09752
528	Skikda	21	62	2021-01-13 22:59:53.131659
529	Sidi Bel Abbès	22	62	2021-01-13 22:59:53.153149
530	Annaba	23	62	2021-01-13 22:59:53.197121
531	Guelma	24	62	2021-01-13 22:59:53.232594
532	Constantine	25	62	2021-01-13 22:59:53.267667
533	Médéa	26	62	2021-01-13 22:59:53.298823
534	Mostaganem	27	62	2021-01-13 22:59:53.330797
535	Msila	28	62	2021-01-13 22:59:53.388339
536	Mascara	29	62	2021-01-13 22:59:53.417571
537	Ouargla	30	62	2021-01-13 22:59:53.445301
538	Oran	31	62	2021-01-13 22:59:53.504859
539	El Bayadh	32	62	2021-01-13 22:59:53.563046
540	Illizi	33	62	2021-01-13 22:59:53.603924
541	Bordj Bou Arréridj	34	62	2021-01-13 22:59:53.620002
542	Boumerdès	35	62	2021-01-13 22:59:53.640753
543	El Tarf	36	62	2021-01-13 22:59:53.657079
544	Tindouf	37	62	2021-01-13 22:59:53.680347
545	Tissemsilt	38	62	2021-01-13 22:59:53.706274
546	El Oued	39	62	2021-01-13 22:59:53.72095
547	Khenchela	40	62	2021-01-13 22:59:53.742614
548	Souk Ahras	41	62	2021-01-13 22:59:53.767041
549	Tipaza	42	62	2021-01-13 22:59:53.793136
550	Mila	43	62	2021-01-13 22:59:53.82529
551	Aïn Defla	44	62	2021-01-13 22:59:53.848855
552	Naama	45	62	2021-01-13 22:59:53.877201
553	Aïn Témouchent	46	62	2021-01-13 22:59:53.905125
554	Ghardaïa	47	62	2021-01-13 22:59:53.93395
555	Relizane	48	62	2021-01-13 22:59:53.954502
556	Azuay	A	63	2021-01-13 22:59:53.981111
557	Bolívar	B	63	2021-01-13 22:59:54.010397
558	Carchi	C	63	2021-01-13 22:59:54.03215
559	Orellana	D	63	2021-01-13 22:59:54.066055
560	Esmeraldas	E	63	2021-01-13 22:59:54.088212
561	Cañar	F	63	2021-01-13 22:59:54.133627
562	Guayas	G	63	2021-01-13 22:59:54.173486
563	Chimborazo	H	63	2021-01-13 22:59:54.220324
564	Imbabura	I	63	2021-01-13 22:59:54.248518
565	Loja	L	63	2021-01-13 22:59:54.296468
566	Manabí	M	63	2021-01-13 22:59:54.334768
567	Napo	N	63	2021-01-13 22:59:54.383964
568	El Oro	O	63	2021-01-13 22:59:54.415328
569	Pichincha	P	63	2021-01-13 22:59:54.448296
570	Los Ríos	R	63	2021-01-13 22:59:54.474898
571	Morona-Santiago	S	63	2021-01-13 22:59:54.495852
572	Santo Domingo de los Tsáchilas	SD	63	2021-01-13 22:59:54.517004
573	Santa Elena	SE	63	2021-01-13 22:59:54.541918
574	Tungurahua	T	63	2021-01-13 22:59:54.567918
575	Sucumbíos	U	63	2021-01-13 22:59:54.589431
576	Galápagos	W	63	2021-01-13 22:59:54.613838
577	Cotopaxi	X	63	2021-01-13 22:59:54.639997
578	Pastaza	Y	63	2021-01-13 22:59:54.666948
579	Zamora-Chinchipe	Z	63	2021-01-13 22:59:54.696023
580	Harjumaa	37	64	2021-01-13 22:59:54.719559
581	Hiiumaa	39	64	2021-01-13 22:59:54.745289
582	Ida-Virumaa	44	64	2021-01-13 22:59:54.771175
583	Jõgevamaa	49	64	2021-01-13 22:59:54.797207
584	Järvamaa	51	64	2021-01-13 22:59:54.820135
585	Läänemaa	57	64	2021-01-13 22:59:54.846807
586	Lääne-Virumaa	59	64	2021-01-13 22:59:54.876934
587	Põlvamaa	65	64	2021-01-13 22:59:54.905701
588	Pärnumaa	67	64	2021-01-13 22:59:54.937735
589	Raplamaa	70	64	2021-01-13 22:59:54.965757
590	Saaremaa	74	64	2021-01-13 22:59:55.000542
591	Tartumaa	78	64	2021-01-13 22:59:55.036255
592	Valgamaa	82	64	2021-01-13 22:59:55.064512
593	Viljandimaa	84	64	2021-01-13 22:59:55.086624
594	Võrumaa	86	64	2021-01-13 22:59:55.113527
595	Al Iskandarīyah	ALX	65	2021-01-13 22:59:55.138164
596	Aswān	ASN	65	2021-01-13 22:59:55.173385
597	Asyūt	AST	65	2021-01-13 22:59:55.191837
598	Al Bahr al Ahmar	BA	65	2021-01-13 22:59:55.215999
599	Al Buhayrah	BH	65	2021-01-13 22:59:55.241728
600	Banī Suwayf	BNS	65	2021-01-13 22:59:55.264423
601	Al Qāhirah	C	65	2021-01-13 22:59:55.293295
602	Ad Daqahlīyah	DK	65	2021-01-13 22:59:55.317215
603	Dumyāt	DT	65	2021-01-13 22:59:55.346245
604	Al Fayyūm	FYM	65	2021-01-13 22:59:55.368649
605	Al Gharbīyah	GH	65	2021-01-13 22:59:55.397732
606	Al Jīzah	GZ	65	2021-01-13 22:59:55.418585
607	Ḩulwān	HU	65	2021-01-13 22:59:55.442625
608	Al Ismā`īlīyah	IS	65	2021-01-13 22:59:55.471117
609	Janūb Sīnā'	JS	65	2021-01-13 22:59:55.495188
610	Al Qalyūbīyah	KB	65	2021-01-13 22:59:55.531466
611	Kafr ash Shaykh	KFS	65	2021-01-13 22:59:55.552695
612	Qinā	KN	65	2021-01-13 22:59:55.576847
613	Al Minyā	MN	65	2021-01-13 22:59:55.604009
614	Al Minūfīyah	MNF	65	2021-01-13 22:59:55.627375
615	Matrūh	MT	65	2021-01-13 22:59:55.657067
616	Būr Sa`īd	PTS	65	2021-01-13 22:59:55.692704
617	Sūhāj	SHG	65	2021-01-13 22:59:55.715117
618	Ash Sharqīyah	SHR	65	2021-01-13 22:59:55.740688
619	Shamal Sīnā'	SIN	65	2021-01-13 22:59:55.770804
620	As Sādis min Uktūbar	SU	65	2021-01-13 22:59:55.796197
621	As Suways	SUZ	65	2021-01-13 22:59:55.82213
622	Al Wādī al Jadīd	WAD	65	2021-01-13 22:59:55.844533
623	Andalucía	AN	68	2021-01-13 22:59:55.879509
624	Aragón	AR	68	2021-01-13 22:59:55.906521
625	Asturias, Principado de	AS	68	2021-01-13 22:59:55.93251
626	Cantabria	CB	68	2021-01-13 22:59:55.955621
627	Ceuta	CE	68	2021-01-13 22:59:55.979779
628	Castilla y León	CL	68	2021-01-13 22:59:56.008896
629	Castilla-La Mancha	CM	68	2021-01-13 22:59:56.034155
630	Canarias	CN	68	2021-01-13 22:59:56.060407
631	Catalunya	CT	68	2021-01-13 22:59:56.08149
632	Extremadura	EX	68	2021-01-13 22:59:56.115568
633	Galicia	GA	68	2021-01-13 22:59:56.144722
634	Illes Balears	IB	68	2021-01-13 22:59:56.172021
635	Murcia, Región de	MC	68	2021-01-13 22:59:56.19149
636	Madrid, Comunidad de	MD	68	2021-01-13 22:59:56.222241
637	Melilla	ML	68	2021-01-13 22:59:56.248244
638	Navarra, Comunidad Foral de / Nafarroako Foru Komunitatea	NC	68	2021-01-13 22:59:56.274996
639	País Vasco / Euskal Herria	PV	68	2021-01-13 22:59:56.307928
640	La Rioja	RI	68	2021-01-13 22:59:56.333653
641	Valenciana, Comunidad / Valenciana, Comunitat	VC	68	2021-01-13 22:59:56.375129
642	Ādīs Ābeba	AA	69	2021-01-13 22:59:56.406258
643	Āfar	AF	69	2021-01-13 22:59:56.431592
644	Āmara	AM	69	2021-01-13 22:59:56.451864
645	Bīnshangul Gumuz	BE	69	2021-01-13 22:59:56.479654
646	Dirē Dawa	DD	69	2021-01-13 22:59:56.505089
647	Gambēla Hizboch	GA	69	2021-01-13 22:59:56.532844
648	Hārerī Hizb	HA	69	2021-01-13 22:59:56.555257
649	Oromīya	OR	69	2021-01-13 22:59:56.577775
650	YeDebub Bihēroch Bihēreseboch na Hizboch	SN	69	2021-01-13 22:59:56.609317
651	Sumalē	SO	69	2021-01-13 22:59:56.634146
652	Tigray	TI	69	2021-01-13 22:59:56.655794
653	Ahvenanmaan maakunta	01	70	2021-01-13 22:59:56.681629
654	Etelä-Karjala	02	70	2021-01-13 22:59:56.707836
655	Etelä-Pohjanmaa	03	70	2021-01-13 22:59:56.73107
656	Etelä-Savo	04	70	2021-01-13 22:59:56.755669
657	Kainuu	05	70	2021-01-13 22:59:56.788985
658	Kanta-Häme	06	70	2021-01-13 22:59:56.816663
659	Keski-Pohjanmaa	07	70	2021-01-13 22:59:56.847947
660	Keski-Suomi	08	70	2021-01-13 22:59:56.87337
661	Kymenlaakso	09	70	2021-01-13 22:59:56.895311
662	Lappi	10	70	2021-01-13 22:59:56.92189
663	Pirkanmaa	11	70	2021-01-13 22:59:56.950217
664	Pohjanmaa	12	70	2021-01-13 22:59:56.992498
665	Pohjois-Karjala	13	70	2021-01-13 22:59:57.024939
666	Pohjois-Pohjanmaa	14	70	2021-01-13 22:59:57.053126
667	Pohjois-Savo	15	70	2021-01-13 22:59:57.078406
668	Päijät-Häme	16	70	2021-01-13 22:59:57.103476
669	Satakunta	17	70	2021-01-13 22:59:57.147808
670	Uusimaa	18	70	2021-01-13 22:59:57.189687
671	Varsinais-Suomi	19	70	2021-01-13 22:59:57.258171
672	Kosrae	KSA	73	2021-01-13 22:59:57.283849
673	Pohnpei	PNI	73	2021-01-13 22:59:57.356418
674	Chuuk	TRK	73	2021-01-13 22:59:57.39056
675	Yap	YAP	73	2021-01-13 22:59:57.442064
676	Auvergne-Rhône-Alpes	ARA	75	2021-01-13 22:59:57.487555
677	Bourgogne-Franche-Comté	BFC	75	2021-01-13 22:59:57.514584
678	Saint-Barthélemy	BL	75	2021-01-13 22:59:57.534633
679	Bretagne	BRE	75	2021-01-13 22:59:57.557543
680	Corse	COR	75	2021-01-13 22:59:57.579711
681	Clipperton	CP	75	2021-01-13 22:59:57.600188
682	Centre-Val de Loire	CVL	75	2021-01-13 22:59:57.619919
683	Grand-Est	GES	75	2021-01-13 22:59:57.643453
684	Guyane (française)	GF	75	2021-01-13 22:59:57.666174
685	Guadeloupe	GUA	75	2021-01-13 22:59:57.686573
686	Hauts-de-France	HDF	75	2021-01-13 22:59:57.70889
687	Île-de-France	IDF	75	2021-01-13 22:59:57.729083
688	La Réunion	LRE	75	2021-01-13 22:59:57.74717
689	Mayotte	MAY	75	2021-01-13 22:59:57.775059
690	Saint-Martin	MF	75	2021-01-13 22:59:57.79849
691	Martinique	MQ	75	2021-01-13 22:59:57.816455
692	Nouvelle-Aquitaine	NAQ	75	2021-01-13 22:59:57.839717
693	Nouvelle-Calédonie	NC	75	2021-01-13 22:59:57.857623
694	Normandie	NOR	75	2021-01-13 22:59:57.879645
695	Occitanie	OCC	75	2021-01-13 22:59:57.903049
696	Provence-Alpes-Côte-d’Azur	PAC	75	2021-01-13 22:59:57.916764
697	Pays-de-la-Loire	PDL	75	2021-01-13 22:59:57.935594
698	Polynésie française	PF	75	2021-01-13 22:59:58.035747
699	Saint-Pierre-et-Miquelon	PM	75	2021-01-13 22:59:58.058882
700	Terres australes françaises	TF	75	2021-01-13 22:59:58.081904
701	Wallis-et-Futuna	WF	75	2021-01-13 22:59:58.100726
702	Estuaire	1	76	2021-01-13 22:59:58.123865
703	Haut-Ogooué	2	76	2021-01-13 22:59:58.148018
704	Moyen-Ogooué	3	76	2021-01-13 22:59:58.164843
705	Ngounié	4	76	2021-01-13 22:59:58.187484
706	Nyanga	5	76	2021-01-13 22:59:58.210044
707	Ogooué-Ivindo	6	76	2021-01-13 22:59:58.226853
708	Ogooué-Lolo	7	76	2021-01-13 22:59:58.249422
709	Ogooué-Maritime	8	76	2021-01-13 22:59:58.271906
710	Woleu-Ntem	9	76	2021-01-13 22:59:58.297855
711	England and Wales	EAW	77	2021-01-13 22:59:58.32525
712	England	ENG	77	2021-01-13 22:59:58.348218
713	Great Britain	GBN	77	2021-01-13 22:59:58.365856
714	Northern Ireland	NIR	77	2021-01-13 22:59:58.393427
715	Scotland	SCT	77	2021-01-13 22:59:58.413462
716	United Kingdom	UKM	77	2021-01-13 22:59:58.430926
717	Wales; Cymru	WLS	77	2021-01-13 22:59:58.455568
718	Abkhazia	AB	79	2021-01-13 22:59:58.476706
719	Ajaria	AJ	79	2021-01-13 22:59:58.499062
720	Guria	GU	79	2021-01-13 22:59:58.521338
721	Imeret’i	IM	79	2021-01-13 22:59:58.539451
722	Kakhet’i	KA	79	2021-01-13 22:59:58.559461
723	K’vemo K’art’li	KK	79	2021-01-13 22:59:58.582304
724	Mts’khet’a-Mt’ianet’i	MM	79	2021-01-13 22:59:58.603399
725	Racha-Lech’khumi-K’vemo Svanet’i	RL	79	2021-01-13 22:59:58.623509
726	Samts’khe-Javakhet’i	SJ	79	2021-01-13 22:59:58.64105
727	Shida K’art’li	SK	79	2021-01-13 22:59:58.658985
728	Samegrelo-Zemo Svanet’i	SZ	79	2021-01-13 22:59:58.679889
729	T’bilisi	TB	79	2021-01-13 22:59:58.694558
730	Kommune Kujalleq	KU	84	2021-01-13 22:59:58.720801
731	Qaasuitsup Kommunia	QA	84	2021-01-13 22:59:58.741342
732	Qeqqata Kommunia	QE	84	2021-01-13 22:59:58.761314
733	Kommuneqarfik Sermersooq	SM	84	2021-01-13 22:59:58.785484
734	Agio Oros	69	89	2021-01-13 22:59:58.803852
735	Anatoliki Makedonia kai Thraki	A	89	2021-01-13 22:59:58.829179
736	Kentriki Makedonia	B	89	2021-01-13 22:59:58.84826
737	Dytiki Makedonia	C	89	2021-01-13 22:59:58.873543
738	Ipeiros	D	89	2021-01-13 22:59:58.900634
739	Thessalia	E	89	2021-01-13 22:59:58.915585
740	Ionia Nisia	F	89	2021-01-13 22:59:58.932838
741	Dytiki Ellada	G	89	2021-01-13 22:59:58.951301
742	Sterea Ellada	H	89	2021-01-13 22:59:58.970889
743	Attiki	I	89	2021-01-13 22:59:58.993056
744	Peloponnisos	J	89	2021-01-13 22:59:59.017493
745	Voreio Aigaio	K	89	2021-01-13 22:59:59.039216
746	Notio Aigaio	L	89	2021-01-13 22:59:59.05732
747	Kriti	M	89	2021-01-13 22:59:59.078595
748	'Ajmān	AJ	2	2021-01-13 22:59:59.093824
749	Abū Ȥaby [Abu Dhabi]	AZ	2	2021-01-13 22:59:59.123376
750	Dubayy	DU	2	2021-01-13 22:59:59.149806
751	Al Fujayrah	FU	2	2021-01-13 22:59:59.17487
752	Ra’s al Khaymah	RK	2	2021-01-13 22:59:59.224669
753	Ash Shāriqah	SH	2	2021-01-13 22:59:59.254319
754	Umm al Qaywayn	UQ	2	2021-01-13 22:59:59.310173
755	Alta Verapaz	AV	91	2021-01-13 22:59:59.34912
756	Baja Verapaz	BV	91	2021-01-13 22:59:59.436722
757	Chimaltenango	CM	91	2021-01-13 22:59:59.502282
758	Chiquimula	CQ	91	2021-01-13 22:59:59.538515
759	Escuintla	ES	91	2021-01-13 22:59:59.561673
760	Guatemala	GU	91	2021-01-13 22:59:59.580821
761	Huehuetenango	HU	91	2021-01-13 22:59:59.6055
762	Izabal	IZ	91	2021-01-13 22:59:59.631708
763	Jalapa	JA	91	2021-01-13 22:59:59.651497
764	Jutiapa	JU	91	2021-01-13 22:59:59.672051
765	Petén	PE	91	2021-01-13 22:59:59.694801
766	El Progreso	PR	91	2021-01-13 22:59:59.712326
767	Quiché	QC	91	2021-01-13 22:59:59.735499
768	Quetzaltenango	QZ	91	2021-01-13 22:59:59.75191
769	Retalhuleu	RE	91	2021-01-13 22:59:59.779654
770	Sacatepéquez	SA	91	2021-01-13 22:59:59.804843
771	San Marcos	SM	91	2021-01-13 22:59:59.82576
772	Sololá	SO	91	2021-01-13 22:59:59.845188
773	Santa Rosa	SR	91	2021-01-13 22:59:59.870746
774	Suchitepéquez	SU	91	2021-01-13 22:59:59.892998
775	Totonicapán	TO	91	2021-01-13 22:59:59.914535
776	Zacapa	ZA	91	2021-01-13 22:59:59.944973
777	Bissau	BS	93	2021-01-13 22:59:59.969813
778	Leste	L	93	2021-01-13 23:00:00.006533
779	Norte	N	93	2021-01-13 23:00:00.054772
780	Sul	S	93	2021-01-13 23:00:00.079641
781	Atlántida	AT	97	2021-01-13 23:00:00.108234
782	Choluteca	CH	97	2021-01-13 23:00:00.133452
783	Colón	CL	97	2021-01-13 23:00:00.153144
784	Comayagua	CM	97	2021-01-13 23:00:00.178373
785	Copán	CP	97	2021-01-13 23:00:00.205394
786	Cortés	CR	97	2021-01-13 23:00:00.232305
787	El Paraíso	EP	97	2021-01-13 23:00:00.249606
788	Francisco Morazán	FM	97	2021-01-13 23:00:00.277431
789	Gracias a Dios	GD	97	2021-01-13 23:00:00.298599
790	Islas de la Bahía	IB	97	2021-01-13 23:00:00.320137
791	Intibucá	IN	97	2021-01-13 23:00:00.34395
792	Lempira	LE	97	2021-01-13 23:00:00.366689
793	La Paz	LP	97	2021-01-13 23:00:00.38647
794	Ocotepeque	OC	97	2021-01-13 23:00:00.40834
795	Olancho	OL	97	2021-01-13 23:00:00.425128
796	Santa Bárbara	SB	97	2021-01-13 23:00:00.446063
797	Valle	VA	97	2021-01-13 23:00:00.47181
798	Yoro	YO	97	2021-01-13 23:00:00.491847
799	Zagrebačka županija	01	98	2021-01-13 23:00:00.516463
800	Krapinsko-zagorska županija	02	98	2021-01-13 23:00:00.539575
801	Sisačko-moslavačka županija	03	98	2021-01-13 23:00:00.559353
802	Karlovačka županija	04	98	2021-01-13 23:00:00.580075
803	Varaždinska županija	05	98	2021-01-13 23:00:00.60688
804	Koprivničko-križevačka županija	06	98	2021-01-13 23:00:00.628408
805	Bjelovarsko-bilogorska županija	07	98	2021-01-13 23:00:00.652278
806	Primorsko-goranska županija	08	98	2021-01-13 23:00:00.679103
807	Ličko-senjska županija	09	98	2021-01-13 23:00:00.708722
808	Virovitičko-podravska županija	10	98	2021-01-13 23:00:00.74058
809	Požeško-slavonska županija	11	98	2021-01-13 23:00:00.763713
810	Brodsko-posavska županija	12	98	2021-01-13 23:00:00.807141
811	Zadarska županija	13	98	2021-01-13 23:00:00.839216
812	Osječko-baranjska županija	14	98	2021-01-13 23:00:00.866822
813	Šibensko-kninska županija	15	98	2021-01-13 23:00:00.889993
814	Vukovarsko-srijemska županija	16	98	2021-01-13 23:00:00.915397
815	Splitsko-dalmatinska županija	17	98	2021-01-13 23:00:00.940338
816	Istarska županija	18	98	2021-01-13 23:00:00.974413
817	Dubrovačko-neretvanska županija	19	98	2021-01-13 23:00:01.006133
818	Međimurska županija	20	98	2021-01-13 23:00:01.048652
819	Grad Zagreb	21	98	2021-01-13 23:00:01.084108
820	Artibonite	AR	99	2021-01-13 23:00:01.119583
821	Centre	CE	99	2021-01-13 23:00:01.145736
822	Grande-Anse	GA	99	2021-01-13 23:00:01.176632
823	Nord	ND	99	2021-01-13 23:00:01.207613
824	Nord-Est	NE	99	2021-01-13 23:00:01.232921
825	Nord-Ouest	NO	99	2021-01-13 23:00:01.263225
826	Ouest	OU	99	2021-01-13 23:00:01.297661
827	Sud	SD	99	2021-01-13 23:00:01.358831
828	Sud-Est	SE	99	2021-01-13 23:00:01.389903
829	Baranya	BA	100	2021-01-13 23:00:01.431919
830	Békéscsaba	BC	100	2021-01-13 23:00:01.521365
831	Békés	BE	100	2021-01-13 23:00:01.552723
832	Bács-Kiskun	BK	100	2021-01-13 23:00:01.585016
833	Budapest	BU	100	2021-01-13 23:00:01.623654
834	Borsod-Abaúj-Zemplén	BZ	100	2021-01-13 23:00:01.646706
835	Csongrád	CS	100	2021-01-13 23:00:01.697087
836	Debrecen	DE	100	2021-01-13 23:00:01.746215
837	Dunaújváros	DU	100	2021-01-13 23:00:01.777432
838	Eger	EG	100	2021-01-13 23:00:01.807978
839	Érd	ER	100	2021-01-13 23:00:01.864014
840	Fejér	FE	100	2021-01-13 23:00:01.892306
841	Győr-Moson-Sopron	GS	100	2021-01-13 23:00:01.923578
842	Győr	GY	100	2021-01-13 23:00:01.956824
843	Hajdú-Bihar	HB	100	2021-01-13 23:00:01.986239
844	Heves	HE	100	2021-01-13 23:00:02.010678
845	Hódmezővásárhely	HV	100	2021-01-13 23:00:02.039259
846	Jász-Nagykun-Szolnok	JN	100	2021-01-13 23:00:02.084585
847	Komárom-Esztergom	KE	100	2021-01-13 23:00:02.128038
848	Kecskemét	KM	100	2021-01-13 23:00:02.159668
849	Kaposvár	KV	100	2021-01-13 23:00:02.187793
850	Miskolc	MI	100	2021-01-13 23:00:02.215054
851	Nagykanizsa	NK	100	2021-01-13 23:00:02.251523
852	Nógrád	NO	100	2021-01-13 23:00:02.29126
853	Nyíregyháza	NY	100	2021-01-13 23:00:02.32973
854	Pest	PE	100	2021-01-13 23:00:02.369036
855	Pécs	PS	100	2021-01-13 23:00:02.435449
856	Szeged	SD	100	2021-01-13 23:00:02.468007
857	Székesfehérvár	SF	100	2021-01-13 23:00:02.507945
858	Szombathely	SH	100	2021-01-13 23:00:02.536324
859	Szolnok	SK	100	2021-01-13 23:00:02.561852
860	Sopron	SN	100	2021-01-13 23:00:02.609418
861	Somogy	SO	100	2021-01-13 23:00:02.63894
862	Szekszárd	SS	100	2021-01-13 23:00:02.664069
863	Salgótarján	ST	100	2021-01-13 23:00:02.687623
864	Szabolcs-Szatmár-Bereg	SZ	100	2021-01-13 23:00:02.717859
865	Tatabánya	TB	100	2021-01-13 23:00:02.743766
866	Tolna	TO	100	2021-01-13 23:00:02.764791
867	Vas	VA	100	2021-01-13 23:00:02.795885
868	Veszprém (county)	VE	100	2021-01-13 23:00:02.821023
869	Veszprém	VM	100	2021-01-13 23:00:02.844164
870	Zala	ZA	100	2021-01-13 23:00:03.226607
871	Zalaegerszeg	ZE	100	2021-01-13 23:00:03.292589
872	Papua	IJ	101	2021-01-13 23:00:03.328016
873	Jawa	JW	101	2021-01-13 23:00:03.361473
874	Kalimantan	KA	101	2021-01-13 23:00:03.388682
875	Maluku	ML	101	2021-01-13 23:00:03.412554
876	Nusa Tenggara	NU	101	2021-01-13 23:00:03.46926
877	Sulawesi	SL	101	2021-01-13 23:00:03.51172
878	Sumatera	SM	101	2021-01-13 23:00:03.535621
879	HaDarom	D	103	2021-01-13 23:00:03.57652
880	Hefa	HA	103	2021-01-13 23:00:03.621234
881	Yerushalayim Al Quds	JM	103	2021-01-13 23:00:03.655872
882	HaMerkaz	M	103	2021-01-13 23:00:03.708705
883	Tel-Aviv	TA	103	2021-01-13 23:00:03.760473
884	HaZafon	Z	103	2021-01-13 23:00:03.797901
885	Andaman and Nicobar Islands	AN	105	2021-01-13 23:00:03.841232
886	Andhra Pradesh	AP	105	2021-01-13 23:00:03.872584
887	Arunachal Pradesh	AR	105	2021-01-13 23:00:03.912815
888	Assam	AS	105	2021-01-13 23:00:03.945867
889	Bihar	BR	105	2021-01-13 23:00:03.974118
890	Chandigarh	CH	105	2021-01-13 23:00:03.995763
891	Chhattisgarh	CT	105	2021-01-13 23:00:04.034303
892	Daman and Diu	DD	105	2021-01-13 23:00:04.06154
893	Delhi	DL	105	2021-01-13 23:00:04.090722
894	Dadra and Nagar Haveli	DN	105	2021-01-13 23:00:04.110353
895	Goa	GA	105	2021-01-13 23:00:04.13096
896	Gujarat	GJ	105	2021-01-13 23:00:04.154737
897	Himachal Pradesh	HP	105	2021-01-13 23:00:04.172866
898	Haryana	HR	105	2021-01-13 23:00:04.195603
899	Jharkhand	JH	105	2021-01-13 23:00:04.218553
900	Jammu and Kashmir	JK	105	2021-01-13 23:00:04.236613
901	Karnataka	KA	105	2021-01-13 23:00:04.256223
902	Kerala	KL	105	2021-01-13 23:00:04.285032
903	Lakshadweep	LD	105	2021-01-13 23:00:04.309719
904	Maharashtra	MH	105	2021-01-13 23:00:04.335099
905	Meghalaya	ML	105	2021-01-13 23:00:04.362616
906	Manipur	MN	105	2021-01-13 23:00:04.383046
907	Madhya Pradesh	MP	105	2021-01-13 23:00:04.400777
908	Mizoram	MZ	105	2021-01-13 23:00:04.419346
909	Nagaland	NL	105	2021-01-13 23:00:04.457234
910	Odisha	OR	105	2021-01-13 23:00:04.49254
911	Punjab	PB	105	2021-01-13 23:00:04.549381
912	Puducherry	PY	105	2021-01-13 23:00:04.607517
913	Rajasthan	RJ	105	2021-01-13 23:00:04.639932
914	Sikkim	SK	105	2021-01-13 23:00:04.668455
915	Telangana	TG	105	2021-01-13 23:00:04.70934
916	Tamil Nadu	TN	105	2021-01-13 23:00:04.773252
917	Tripura	TR	105	2021-01-13 23:00:04.806915
918	Uttar Pradesh	UP	105	2021-01-13 23:00:04.827222
919	Uttarakhand	UT	105	2021-01-13 23:00:04.844261
920	West Bengal	WB	105	2021-01-13 23:00:04.871784
921	Al Anbar	AN	107	2021-01-13 23:00:04.90233
922	Arbil	AR	107	2021-01-13 23:00:04.924247
923	Al Basrah	BA	107	2021-01-13 23:00:04.949981
924	Babil	BB	107	2021-01-13 23:00:04.977714
925	Baghdad	BG	107	2021-01-13 23:00:05.000513
926	Dahuk	DA	107	2021-01-13 23:00:05.025212
927	Diyala	DI	107	2021-01-13 23:00:05.059314
928	Dhi Qar	DQ	107	2021-01-13 23:00:05.089276
929	Karbala'	KA	107	2021-01-13 23:00:05.128944
930	Maysan	MA	107	2021-01-13 23:00:05.148185
931	Al Muthanna	MU	107	2021-01-13 23:00:05.17
932	An Najef	NA	107	2021-01-13 23:00:05.189992
933	Ninawa	NI	107	2021-01-13 23:00:05.216331
934	Al Qadisiyah	QA	107	2021-01-13 23:00:05.247386
935	Salah ad Din	SD	107	2021-01-13 23:00:05.280019
936	As Sulaymaniyah	SW	107	2021-01-13 23:00:05.309692
937	At Ta'mim	TS	107	2021-01-13 23:00:05.341802
938	Wasit	WA	107	2021-01-13 23:00:05.364703
939	Āzarbāyjān-e Sharqī	01	108	2021-01-13 23:00:05.394532
940	Āzarbāyjān-e Gharbī	02	108	2021-01-13 23:00:05.419296
941	Ardabīl	03	108	2021-01-13 23:00:05.451047
942	Eşfahān	04	108	2021-01-13 23:00:05.500616
943	Īlām	05	108	2021-01-13 23:00:05.523128
944	Būshehr	06	108	2021-01-13 23:00:05.537565
945	Tehrān	07	108	2021-01-13 23:00:05.55903
946	Chahār Mahāll va Bakhtīārī	08	108	2021-01-13 23:00:05.578741
947	Khūzestān	10	108	2021-01-13 23:00:05.594581
948	Zanjān	11	108	2021-01-13 23:00:05.612468
949	Semnān	12	108	2021-01-13 23:00:05.628997
950	Sīstān va Balūchestān	13	108	2021-01-13 23:00:05.655243
951	Fārs	14	108	2021-01-13 23:00:05.671295
952	Kermān	15	108	2021-01-13 23:00:05.69299
953	Kordestān	16	108	2021-01-13 23:00:05.710375
954	Kermānshāh	17	108	2021-01-13 23:00:05.728402
955	Kohgīlūyeh va Būyer Ahmad	18	108	2021-01-13 23:00:05.745187
956	Gīlān	19	108	2021-01-13 23:00:05.761712
957	Lorestān	20	108	2021-01-13 23:00:05.784813
958	Māzandarān	21	108	2021-01-13 23:00:05.799479
959	Markazī	22	108	2021-01-13 23:00:05.818366
960	Hormozgān	23	108	2021-01-13 23:00:05.834189
961	Hamadān	24	108	2021-01-13 23:00:05.854368
962	Yazd	25	108	2021-01-13 23:00:05.86996
963	Qom	26	108	2021-01-13 23:00:05.890501
964	Golestān	27	108	2021-01-13 23:00:05.911473
965	Qazvīn	28	108	2021-01-13 23:00:05.928855
966	Khorāsān-e Janūbī	29	108	2021-01-13 23:00:05.946206
967	Khorāsān-e Razavī	30	108	2021-01-13 23:00:05.962695
968	Khorāsān-e Shemālī	31	108	2021-01-13 23:00:05.985253
969	Reykjavík	0	109	2021-01-13 23:00:06.001634
970	Höfuðborgarsvæðið	1	109	2021-01-13 23:00:06.023907
971	Suðurnes	2	109	2021-01-13 23:00:06.040259
972	Vesturland	3	109	2021-01-13 23:00:06.059103
973	Vestfirðir	4	109	2021-01-13 23:00:06.084525
974	Norðurland vestra	5	109	2021-01-13 23:00:06.104059
975	Norðurland eystra	6	109	2021-01-13 23:00:06.129039
976	Austurland	7	109	2021-01-13 23:00:06.146726
977	Suðurland	8	109	2021-01-13 23:00:06.161965
978	Piemonte	21	110	2021-01-13 23:00:06.188559
979	Valle d'Aosta	23	110	2021-01-13 23:00:06.209246
980	Lombardia	25	110	2021-01-13 23:00:06.227844
981	Trentino-Alto Adige	32	110	2021-01-13 23:00:06.245894
982	Veneto	34	110	2021-01-13 23:00:06.266179
983	Friuli-Venezia Giulia	36	110	2021-01-13 23:00:06.286093
984	Liguria	42	110	2021-01-13 23:00:06.307017
985	Emilia-Romagna	45	110	2021-01-13 23:00:06.321849
986	Toscana	52	110	2021-01-13 23:00:06.344582
987	Umbria	55	110	2021-01-13 23:00:06.367402
988	Marche	57	110	2021-01-13 23:00:06.386539
989	Lazio	62	110	2021-01-13 23:00:06.410553
990	Abruzzo	65	110	2021-01-13 23:00:06.435192
991	Molise	67	110	2021-01-13 23:00:06.456988
992	Campania	72	110	2021-01-13 23:00:06.488777
993	Puglia	75	110	2021-01-13 23:00:06.516704
994	Basilicata	77	110	2021-01-13 23:00:06.543423
995	Calabria	78	110	2021-01-13 23:00:06.568787
996	Sicilia	82	110	2021-01-13 23:00:06.608339
997	Sardegna	88	110	2021-01-13 23:00:06.632993
998	Kingston	01	112	2021-01-13 23:00:06.662346
999	Saint Andrew	02	112	2021-01-13 23:00:06.685517
1000	Saint Thomas	03	112	2021-01-13 23:00:06.715717
1001	Portland	04	112	2021-01-13 23:00:06.740704
1002	Saint Mary	05	112	2021-01-13 23:00:06.760621
1003	Saint Ann	06	112	2021-01-13 23:00:06.827046
1004	Trelawny	07	112	2021-01-13 23:00:06.856485
1005	Saint James	08	112	2021-01-13 23:00:06.887984
1006	Hanover	09	112	2021-01-13 23:00:06.921921
1007	Westmoreland	10	112	2021-01-13 23:00:06.950239
1008	Saint Elizabeth	11	112	2021-01-13 23:00:06.985965
1009	Manchester	12	112	2021-01-13 23:00:07.01816
1010	Clarendon	13	112	2021-01-13 23:00:07.045431
1011	Saint Catherine	14	112	2021-01-13 23:00:07.125644
1012	‘Ajlūn	AJ	113	2021-01-13 23:00:07.153999
1013	‘Ammān (Al ‘Aşimah)	AM	113	2021-01-13 23:00:07.176883
1014	Al ‘Aqabah	AQ	113	2021-01-13 23:00:07.196601
1015	Aţ Ţafīlah	AT	113	2021-01-13 23:00:07.220951
1016	Az Zarqā'	AZ	113	2021-01-13 23:00:07.241824
1017	Al Balqā'	BA	113	2021-01-13 23:00:07.262091
1018	Irbid	IR	113	2021-01-13 23:00:07.29548
1019	Jarash	JA	113	2021-01-13 23:00:07.328184
1020	Al Karak	KA	113	2021-01-13 23:00:07.353869
1021	Al Mafraq	MA	113	2021-01-13 23:00:07.378408
1022	Mādabā	MD	113	2021-01-13 23:00:07.399709
1023	Ma‘ān	MN	113	2021-01-13 23:00:07.427861
1024	Hokkaido	01	114	2021-01-13 23:00:07.456396
1025	Aomori	02	114	2021-01-13 23:00:07.483415
1026	Iwate	03	114	2021-01-13 23:00:07.504238
1027	Miyagi	04	114	2021-01-13 23:00:07.528248
1028	Akita	05	114	2021-01-13 23:00:07.555409
1029	Yamagata	06	114	2021-01-13 23:00:07.579078
1030	Fukushima	07	114	2021-01-13 23:00:07.595992
1031	Ibaraki	08	114	2021-01-13 23:00:07.619393
1032	Tochigi	09	114	2021-01-13 23:00:07.639717
1033	Gunma	10	114	2021-01-13 23:00:07.667725
1034	Saitama	11	114	2021-01-13 23:00:07.69373
1035	Chiba	12	114	2021-01-13 23:00:07.722828
1036	Tokyo	13	114	2021-01-13 23:00:07.748309
1037	Kanagawa	14	114	2021-01-13 23:00:07.769653
1038	Niigata	15	114	2021-01-13 23:00:07.796677
1039	Toyama	16	114	2021-01-13 23:00:07.822419
1040	Ishikawa	17	114	2021-01-13 23:00:07.843053
1041	Fukui	18	114	2021-01-13 23:00:07.868182
1042	Yamanashi	19	114	2021-01-13 23:00:07.893663
1043	Nagano	20	114	2021-01-13 23:00:07.918389
1044	Gifu	21	114	2021-01-13 23:00:07.942516
1045	Shizuoka	22	114	2021-01-13 23:00:07.962872
1046	Aichi	23	114	2021-01-13 23:00:07.988441
1047	Mie	24	114	2021-01-13 23:00:08.012812
1048	Shiga	25	114	2021-01-13 23:00:08.043743
1049	Kyoto	26	114	2021-01-13 23:00:08.066675
1050	Osaka	27	114	2021-01-13 23:00:08.092865
1051	Hyogo	28	114	2021-01-13 23:00:08.129223
1052	Nara	29	114	2021-01-13 23:00:08.158822
1053	Wakayama	30	114	2021-01-13 23:00:08.186329
1054	Tottori	31	114	2021-01-13 23:00:08.231822
1055	Shimane	32	114	2021-01-13 23:00:08.269518
1056	Okayama	33	114	2021-01-13 23:00:08.312771
1057	Hiroshima	34	114	2021-01-13 23:00:08.39591
1058	Yamaguchi	35	114	2021-01-13 23:00:08.428955
1059	Tokushima	36	114	2021-01-13 23:00:08.485349
1060	Kagawa	37	114	2021-01-13 23:00:08.521297
1061	Ehime	38	114	2021-01-13 23:00:08.555553
1062	Kochi	39	114	2021-01-13 23:00:08.578964
1063	Fukuoka	40	114	2021-01-13 23:00:08.604033
1064	Saga	41	114	2021-01-13 23:00:08.6288
1065	Nagasaki	42	114	2021-01-13 23:00:08.659259
1066	Kumamoto	43	114	2021-01-13 23:00:08.683391
1067	Oita	44	114	2021-01-13 23:00:08.700378
1068	Miyazaki	45	114	2021-01-13 23:00:08.730548
1069	Kagoshima	46	114	2021-01-13 23:00:08.754322
1070	Okinawa	47	114	2021-01-13 23:00:08.7751
1071	Baringo	01	115	2021-01-13 23:00:08.81317
1072	Bomet	02	115	2021-01-13 23:00:08.833079
1073	Bungoma	03	115	2021-01-13 23:00:08.852996
1074	Busia	04	115	2021-01-13 23:00:08.883711
1075	Elgeyo/Marakwet	05	115	2021-01-13 23:00:08.908291
1076	Embu	06	115	2021-01-13 23:00:08.932818
1077	Garissa	07	115	2021-01-13 23:00:08.955686
1078	Homa Bay	08	115	2021-01-13 23:00:08.992812
1079	Isiolo	09	115	2021-01-13 23:00:09.016678
1080	Kajiado	10	115	2021-01-13 23:00:09.042876
1081	Kakamega	11	115	2021-01-13 23:00:09.061738
1082	Kericho	12	115	2021-01-13 23:00:09.088045
1083	Kiambu	13	115	2021-01-13 23:00:09.117866
1084	Kilifi	14	115	2021-01-13 23:00:09.142144
1085	Kirinyaga	15	115	2021-01-13 23:00:09.166089
1086	Kisii	16	115	2021-01-13 23:00:09.192929
1087	Kisumu	17	115	2021-01-13 23:00:09.226671
1088	Kitui	18	115	2021-01-13 23:00:09.25323
1089	Kwale	19	115	2021-01-13 23:00:09.278018
1090	Laikipia	20	115	2021-01-13 23:00:09.304163
1091	Lamu	21	115	2021-01-13 23:00:09.339383
1092	Machakos	22	115	2021-01-13 23:00:09.389633
1093	Makueni	23	115	2021-01-13 23:00:09.413332
1094	Mandera	24	115	2021-01-13 23:00:09.445412
1095	Marsabit	25	115	2021-01-13 23:00:09.484815
1096	Meru	26	115	2021-01-13 23:00:09.512066
1097	Migori	27	115	2021-01-13 23:00:09.5401
1098	Mombasa	28	115	2021-01-13 23:00:09.561818
1099	Murang'a	29	115	2021-01-13 23:00:09.58482
1100	Nairobi City	30	115	2021-01-13 23:00:09.612446
1101	Nakuru	31	115	2021-01-13 23:00:09.643118
1102	Nandi	32	115	2021-01-13 23:00:09.672917
1103	Narok	33	115	2021-01-13 23:00:09.698354
1104	Nyamira	34	115	2021-01-13 23:00:09.727289
1105	Nyandarua	35	115	2021-01-13 23:00:09.754244
1106	Nyeri	36	115	2021-01-13 23:00:09.778682
1107	Samburu	37	115	2021-01-13 23:00:09.820705
1108	Siaya	38	115	2021-01-13 23:00:09.846603
1109	Taita/Taveta	39	115	2021-01-13 23:00:09.871131
1110	Tana River	40	115	2021-01-13 23:00:09.900104
1111	Tharaka-Nithi	41	115	2021-01-13 23:00:09.919517
1112	Trans Nzoia	42	115	2021-01-13 23:00:09.945132
1113	Turkana	43	115	2021-01-13 23:00:09.961785
1114	Uasin Gishu	44	115	2021-01-13 23:00:09.986919
1115	Vihiga	45	115	2021-01-13 23:00:10.008659
1116	Wajir	46	115	2021-01-13 23:00:10.023532
1117	West Pokot	47	115	2021-01-13 23:00:10.044433
1118	Batken	B	116	2021-01-13 23:00:10.071247
1119	Chü	C	116	2021-01-13 23:00:10.087445
1120	Bishkek	GB	116	2021-01-13 23:00:10.113506
1121	Jalal-Abad	J	116	2021-01-13 23:00:10.133649
1122	Naryn	N	116	2021-01-13 23:00:10.150237
1123	Osh	O	116	2021-01-13 23:00:10.170549
1124	Talas	T	116	2021-01-13 23:00:10.188638
1125	Ysyk-Köl	Y	116	2021-01-13 23:00:10.213593
1126	Banteay Mean Chey	1	117	2021-01-13 23:00:10.23971
1127	Krachoh	10	117	2021-01-13 23:00:10.255591
1128	Mondol Kiri	11	117	2021-01-13 23:00:10.285
1129	Phnom Penh	12	117	2021-01-13 23:00:10.308671
1130	Preah Vihear	13	117	2021-01-13 23:00:10.324751
1131	Prey Veaeng	14	117	2021-01-13 23:00:10.349717
1132	Pousaat	15	117	2021-01-13 23:00:10.403837
1133	Rotanak Kiri	16	117	2021-01-13 23:00:10.454283
1134	Siem Reab	17	117	2021-01-13 23:00:10.480302
1135	Krong Preah Sihanouk	18	117	2021-01-13 23:00:10.506245
1136	Stueng Traeng	19	117	2021-01-13 23:00:10.521618
1137	Battambang	2	117	2021-01-13 23:00:10.549497
1138	Svaay Rieng	20	117	2021-01-13 23:00:10.578332
1139	Taakaev	21	117	2021-01-13 23:00:10.609182
1140	Otdar Mean Chey	22	117	2021-01-13 23:00:10.637336
1141	Krong Kaeb	23	117	2021-01-13 23:00:10.656884
1142	Krong Pailin	24	117	2021-01-13 23:00:10.681788
1143	Kampong Cham	3	117	2021-01-13 23:00:10.719193
1144	Kampong Chhnang	4	117	2021-01-13 23:00:10.740852
1145	Kampong Speu	5	117	2021-01-13 23:00:10.756594
1146	Kampong Thom	6	117	2021-01-13 23:00:10.775317
1147	Kampot	7	117	2021-01-13 23:00:10.800417
1148	Kandal	8	117	2021-01-13 23:00:10.825961
1149	Kach Kong	9	117	2021-01-13 23:00:10.849769
1150	Seoul Teugbyeolsi	11	122	2021-01-13 23:00:10.869833
1151	Busan Gwang'yeogsi	26	122	2021-01-13 23:00:10.890827
1152	Daegu Gwang'yeogsi	27	122	2021-01-13 23:00:10.912774
1153	Incheon Gwang'yeogsi	28	122	2021-01-13 23:00:10.935267
1154	Gwangju Gwang'yeogsi	29	122	2021-01-13 23:00:10.960097
1155	Daejeon Gwang'yeogsi	30	122	2021-01-13 23:00:10.984435
1156	Ulsan Gwang'yeogsi	31	122	2021-01-13 23:00:10.99942
1157	Gyeonggido	41	122	2021-01-13 23:00:11.020582
1158	Gang'weondo	42	122	2021-01-13 23:00:11.041398
1159	Chungcheongbukdo	43	122	2021-01-13 23:00:11.063422
1160	Chungcheongnamdo	44	122	2021-01-13 23:00:11.084031
1161	Jeonrabukdo	45	122	2021-01-13 23:00:11.107013
1162	Jeonranamdo	46	122	2021-01-13 23:00:11.126968
1163	Gyeongsangbukdo	47	122	2021-01-13 23:00:11.147927
1164	Gyeongsangnamdo	48	122	2021-01-13 23:00:11.176648
1165	Jejudo	49	122	2021-01-13 23:00:11.19439
1166	Al Ahmadi	AH	123	2021-01-13 23:00:11.220097
1167	Al Farwānīyah	FA	123	2021-01-13 23:00:11.237923
1168	Hawallī	HA	123	2021-01-13 23:00:11.260319
1169	Al Jahrrā’	JA	123	2021-01-13 23:00:11.287088
1170	Al Kuwayt (Al ‘Āşimah)	KU	123	2021-01-13 23:00:11.307596
1171	Mubārak al Kabīr	MU	123	2021-01-13 23:00:11.328091
1172	Aqmola oblysy	AKM	125	2021-01-13 23:00:11.355187
1173	Aqtöbe oblysy	AKT	125	2021-01-13 23:00:11.372695
1174	Almaty	ALA	125	2021-01-13 23:00:11.39488
1175	Almaty oblysy	ALM	125	2021-01-13 23:00:11.424453
1176	Astana	AST	125	2021-01-13 23:00:11.44517
1177	Atyraū oblysy	ATY	125	2021-01-13 23:00:11.464054
1178	Qaraghandy oblysy	KAR	125	2021-01-13 23:00:11.487483
1179	Qostanay oblysy	KUS	125	2021-01-13 23:00:11.501777
1180	Qyzylorda oblysy	KZY	125	2021-01-13 23:00:11.526454
1181	Mangghystaū oblysy	MAN	125	2021-01-13 23:00:11.547816
1182	Pavlodar oblysy	PAV	125	2021-01-13 23:00:11.56489
1183	Soltüstik Quzaqstan oblysy	SEV	125	2021-01-13 23:00:11.587193
1184	Shyghys Qazaqstan oblysy	VOS	125	2021-01-13 23:00:11.60205
1185	Ongtüstik Qazaqstan oblysy	YUZ	125	2021-01-13 23:00:11.622601
1186	Batys Quzaqstan oblysy	ZAP	125	2021-01-13 23:00:11.645119
1187	Zhambyl oblysy	ZHA	125	2021-01-13 23:00:11.662651
1188	Attapu	AT	126	2021-01-13 23:00:11.688611
1189	Bokèo	BK	126	2021-01-13 23:00:11.705847
1190	Bolikhamxai	BL	126	2021-01-13 23:00:11.726501
1191	Champasak	CH	126	2021-01-13 23:00:11.750384
1192	Houaphan	HO	126	2021-01-13 23:00:11.769996
1193	Khammouan	KH	126	2021-01-13 23:00:11.791432
1194	Louang Namtha	LM	126	2021-01-13 23:00:11.807963
1195	Louangphabang	LP	126	2021-01-13 23:00:11.822837
1196	Oudômxai	OU	126	2021-01-13 23:00:11.844259
1197	Phôngsali	PH	126	2021-01-13 23:00:11.873021
1198	Salavan	SL	126	2021-01-13 23:00:11.895132
1199	Savannakhét	SV	126	2021-01-13 23:00:11.915497
1200	Vientiane	VI	126	2021-01-13 23:00:11.938736
1201	Xaignabouli	XA	126	2021-01-13 23:00:11.986387
1202	Xékong	XE	126	2021-01-13 23:00:12.00361
1203	Xiangkhouang	XI	126	2021-01-13 23:00:12.02532
1204	Xaisômboun	XS	126	2021-01-13 23:00:12.041722
1205	Aakkâr	AK	127	2021-01-13 23:00:12.063914
1206	Liban-Nord	AS	127	2021-01-13 23:00:12.081319
1207	Beyrouth	BA	127	2021-01-13 23:00:12.111343
1208	Baalbek-Hermel	BH	127	2021-01-13 23:00:12.154851
1209	Béqaa	BI	127	2021-01-13 23:00:12.188774
1210	Liban-Sud	JA	127	2021-01-13 23:00:12.238932
1211	Mont-Liban	JL	127	2021-01-13 23:00:12.310322
1212	Nabatîyé	NA	127	2021-01-13 23:00:12.340342
1213	Balzers	01	129	2021-01-13 23:00:12.380963
1214	Eschen	02	129	2021-01-13 23:00:12.428812
1215	Gamprin	03	129	2021-01-13 23:00:12.465485
1216	Mauren	04	129	2021-01-13 23:00:12.501823
1217	Planken	05	129	2021-01-13 23:00:12.536529
1218	Ruggell	06	129	2021-01-13 23:00:12.559398
1219	Schaan	07	129	2021-01-13 23:00:12.582399
1220	Schellenberg	08	129	2021-01-13 23:00:12.612158
1221	Triesen	09	129	2021-01-13 23:00:12.637987
1222	Triesenberg	10	129	2021-01-13 23:00:12.663563
1223	Vaduz	11	129	2021-01-13 23:00:12.686866
1224	Basnāhira paḷāta	1	130	2021-01-13 23:00:12.709723
1225	Madhyama paḷāta	2	130	2021-01-13 23:00:12.743481
1226	Dakuṇu paḷāta	3	130	2021-01-13 23:00:12.764103
1227	Uturu paḷāta	4	130	2021-01-13 23:00:12.789674
1228	Næ̆gĕnahira paḷāta	5	130	2021-01-13 23:00:12.813644
1229	Vayamba paḷāta	6	130	2021-01-13 23:00:12.84031
1230	Uturumæ̆da paḷāta	7	130	2021-01-13 23:00:12.870413
1231	Ūva paḷāta	8	130	2021-01-13 23:00:12.898904
1232	Sabaragamuva paḷāta	9	130	2021-01-13 23:00:12.923733
1233	Bong	BG	131	2021-01-13 23:00:12.954392
1234	Bomi	BM	131	2021-01-13 23:00:12.979018
1235	Grand Cape Mount	CM	131	2021-01-13 23:00:13.007703
1236	Grand Bassa	GB	131	2021-01-13 23:00:13.036867
1237	Grand Gedeh	GG	131	2021-01-13 23:00:13.065187
1238	Grand Kru	GK	131	2021-01-13 23:00:13.103891
1239	Lofa	LO	131	2021-01-13 23:00:13.135613
1240	Margibi	MG	131	2021-01-13 23:00:13.164866
1241	Montserrado	MO	131	2021-01-13 23:00:13.194115
1242	Maryland	MY	131	2021-01-13 23:00:13.22763
1243	Nimba	NI	131	2021-01-13 23:00:13.254136
1244	Rivercess	RI	131	2021-01-13 23:00:13.276902
1245	Sinoe	SI	131	2021-01-13 23:00:13.305391
1246	Maseru	A	132	2021-01-13 23:00:13.339432
1247	Butha-Buthe	B	132	2021-01-13 23:00:13.367362
1248	Leribe	C	132	2021-01-13 23:00:13.389234
1249	Berea	D	132	2021-01-13 23:00:13.409948
1250	Mafeteng	E	132	2021-01-13 23:00:13.43578
1251	Mohale's Hoek	F	132	2021-01-13 23:00:13.459232
1252	Quthing	G	132	2021-01-13 23:00:13.48104
1253	Qacha's Nek	H	132	2021-01-13 23:00:13.506156
1254	Mokhotlong	J	132	2021-01-13 23:00:13.532639
1255	Thaba-Tseka	K	132	2021-01-13 23:00:13.553413
1256	Alytaus Apskritis	AL	133	2021-01-13 23:00:13.591973
1257	Klaipėdos Apskritis	KL	133	2021-01-13 23:00:13.613169
1258	Kauno Apskritis	KU	133	2021-01-13 23:00:13.638816
1259	Marijampolės Apskritis	MR	133	2021-01-13 23:00:13.669157
1260	Panevėžio Apskritis	PN	133	2021-01-13 23:00:13.693326
1261	Šiaulių Apskritis	SA	133	2021-01-13 23:00:13.716552
1262	Tauragés Apskritis	TA	133	2021-01-13 23:00:13.740606
1263	Telšių Apskritis	TE	133	2021-01-13 23:00:13.76464
1264	Utenos Apskritis	UT	133	2021-01-13 23:00:13.790649
1265	Vilniaus Apskritis	VL	133	2021-01-13 23:00:13.852248
1266	Diekirch	D	134	2021-01-13 23:00:13.87848
1267	Grevenmacher	G	134	2021-01-13 23:00:13.905265
1268	Luxembourg	L	134	2021-01-13 23:00:13.926353
1269	Aglonas novads	001	135	2021-01-13 23:00:13.954957
1270	Aizkraukles novads	002	135	2021-01-13 23:00:13.977368
1271	Aizputes novads	003	135	2021-01-13 23:00:14.009479
1272	Aknīstes novads	004	135	2021-01-13 23:00:14.038887
1273	Alojas novads	005	135	2021-01-13 23:00:14.066044
1274	Alsungas novads	006	135	2021-01-13 23:00:14.089359
1275	Alūksnes novads	007	135	2021-01-13 23:00:14.114459
1276	Amatas novads	008	135	2021-01-13 23:00:14.138721
1277	Apes novads	009	135	2021-01-13 23:00:14.160049
1278	Auces novads	010	135	2021-01-13 23:00:14.181303
1279	Ādažu novads	011	135	2021-01-13 23:00:14.208779
1280	Babītes novads	012	135	2021-01-13 23:00:14.241833
1281	Baldones novads	013	135	2021-01-13 23:00:14.267111
1282	Baltinavas novads	014	135	2021-01-13 23:00:14.292471
1283	Balvu novads	015	135	2021-01-13 23:00:14.314366
1284	Bauskas novads	016	135	2021-01-13 23:00:14.338801
1285	Beverīnas novads	017	135	2021-01-13 23:00:14.360072
1286	Brocēnu novads	018	135	2021-01-13 23:00:14.380985
1287	Burtnieku novads	019	135	2021-01-13 23:00:14.404697
1288	Carnikavas novads	020	135	2021-01-13 23:00:14.424232
1289	Cesvaines novads	021	135	2021-01-13 23:00:14.448534
1290	Cēsu novads	022	135	2021-01-13 23:00:14.472041
1291	Ciblas novads	023	135	2021-01-13 23:00:14.493662
1292	Dagdas novads	024	135	2021-01-13 23:00:14.51672
1293	Daugavpils novads	025	135	2021-01-13 23:00:14.543385
1294	Dobeles novads	026	135	2021-01-13 23:00:14.569964
1295	Dundagas novads	027	135	2021-01-13 23:00:14.589958
1296	Durbes novads	028	135	2021-01-13 23:00:14.611197
1297	Engures novads	029	135	2021-01-13 23:00:14.637078
1298	Ērgļu novads	030	135	2021-01-13 23:00:14.662549
1299	Garkalnes novads	031	135	2021-01-13 23:00:14.684072
1300	Grobiņas novads	032	135	2021-01-13 23:00:14.708193
1301	Gulbenes novads	033	135	2021-01-13 23:00:14.731358
1302	Iecavas novads	034	135	2021-01-13 23:00:14.759783
1303	Ikšķiles novads	035	135	2021-01-13 23:00:14.787928
1304	Ilūkstes novads	036	135	2021-01-13 23:00:14.810395
1305	Inčukalna novads	037	135	2021-01-13 23:00:14.836845
1306	Jaunjelgavas novads	038	135	2021-01-13 23:00:14.855646
1307	Jaunpiebalgas novads	039	135	2021-01-13 23:00:14.880109
1308	Jaunpils novads	040	135	2021-01-13 23:00:14.90944
1309	Jelgavas novads	041	135	2021-01-13 23:00:14.938356
1310	Jēkabpils novads	042	135	2021-01-13 23:00:14.958384
1311	Kandavas novads	043	135	2021-01-13 23:00:14.980487
1312	Kārsavas novads	044	135	2021-01-13 23:00:15.003461
1313	Kocēnu novads	045	135	2021-01-13 23:00:15.025172
1314	Kokneses novads	046	135	2021-01-13 23:00:15.051469
1315	Krāslavas novads	047	135	2021-01-13 23:00:15.07243
1316	Krimuldas novads	048	135	2021-01-13 23:00:15.098069
1317	Krustpils novads	049	135	2021-01-13 23:00:15.13613
1318	Kuldīgas novads	050	135	2021-01-13 23:00:15.172111
1319	Ķeguma novads	051	135	2021-01-13 23:00:15.223519
1320	Ķekavas novads	052	135	2021-01-13 23:00:15.264301
1321	Lielvārdes novads	053	135	2021-01-13 23:00:15.306195
1322	Limbažu novads	054	135	2021-01-13 23:00:15.339944
1323	Līgatnes novads	055	135	2021-01-13 23:00:15.392302
1324	Līvānu novads	056	135	2021-01-13 23:00:15.431929
1325	Lubānas novads	057	135	2021-01-13 23:00:15.463689
1326	Ludzas novads	058	135	2021-01-13 23:00:15.488925
1327	Madonas novads	059	135	2021-01-13 23:00:15.519389
1328	Mazsalacas novads	060	135	2021-01-13 23:00:15.546535
1329	Mālpils novads	061	135	2021-01-13 23:00:15.564894
1330	Mārupes novads	062	135	2021-01-13 23:00:15.584876
1331	Mērsraga novads	063	135	2021-01-13 23:00:15.608373
1332	Naukšēnu novads	064	135	2021-01-13 23:00:15.623788
1333	Neretas novads	065	135	2021-01-13 23:00:15.644481
1334	Nīcas novads	066	135	2021-01-13 23:00:15.662568
1335	Ogres novads	067	135	2021-01-13 23:00:15.682163
1336	Olaines novads	068	135	2021-01-13 23:00:15.70276
1337	Ozolnieku novads	069	135	2021-01-13 23:00:15.722107
1338	Pārgaujas novads	070	135	2021-01-13 23:00:15.743456
1339	Pāvilostas novads	071	135	2021-01-13 23:00:15.766895
1340	Pļaviņu novads	072	135	2021-01-13 23:00:15.786401
1341	Preiļu novads	073	135	2021-01-13 23:00:15.80809
1342	Priekules novads	074	135	2021-01-13 23:00:15.821448
1343	Priekuļu novads	075	135	2021-01-13 23:00:15.845667
1344	Raunas novads	076	135	2021-01-13 23:00:15.87334
1345	Rēzeknes novads	077	135	2021-01-13 23:00:15.895106
1346	Riebiņu novads	078	135	2021-01-13 23:00:15.913199
1347	Rojas novads	079	135	2021-01-13 23:00:15.935225
1348	Ropažu novads	080	135	2021-01-13 23:00:15.955679
1349	Rucavas novads	081	135	2021-01-13 23:00:15.975882
1350	Rugāju novads	082	135	2021-01-13 23:00:15.993919
1351	Rundāles novads	083	135	2021-01-13 23:00:16.017632
1352	Rūjienas novads	084	135	2021-01-13 23:00:16.037205
1353	Salas novads	085	135	2021-01-13 23:00:16.055658
1354	Salacgrīvas novads	086	135	2021-01-13 23:00:16.081664
1355	Salaspils novads	087	135	2021-01-13 23:00:16.100836
1356	Saldus novads	088	135	2021-01-13 23:00:16.121849
1357	Saulkrastu novads	089	135	2021-01-13 23:00:16.145875
1358	Sējas novads	090	135	2021-01-13 23:00:16.159864
1359	Siguldas novads	091	135	2021-01-13 23:00:16.184282
1360	Skrīveru novads	092	135	2021-01-13 23:00:16.209751
1361	Skrundas novads	093	135	2021-01-13 23:00:16.225311
1362	Smiltenes novads	094	135	2021-01-13 23:00:16.251491
1363	Stopiņu novads	095	135	2021-01-13 23:00:16.272625
1364	Strenču novads	096	135	2021-01-13 23:00:16.291754
1365	Talsu novads	097	135	2021-01-13 23:00:16.309591
1366	Tērvetes novads	098	135	2021-01-13 23:00:16.333666
1367	Tukuma novads	099	135	2021-01-13 23:00:16.359632
1368	Vaiņodes novads	100	135	2021-01-13 23:00:16.383754
1369	Valkas novads	101	135	2021-01-13 23:00:16.403001
1370	Varakļānu novads	102	135	2021-01-13 23:00:16.421276
1371	Vārkavas novads	103	135	2021-01-13 23:00:16.449097
1372	Vecpiebalgas novads	104	135	2021-01-13 23:00:16.465072
1373	Vecumnieku novads	105	135	2021-01-13 23:00:16.488951
1374	Ventspils novads	106	135	2021-01-13 23:00:16.509098
1375	Viesītes novads	107	135	2021-01-13 23:00:16.526926
1376	Viļakas novads	108	135	2021-01-13 23:00:16.551903
1377	Viļānu novads	109	135	2021-01-13 23:00:16.568881
1378	Zilupes novads	110	135	2021-01-13 23:00:16.588423
1379	Daugavpils	DGV	135	2021-01-13 23:00:16.608382
1380	Jelgava	JEL	135	2021-01-13 23:00:16.62463
1381	Jēkabpils	JKB	135	2021-01-13 23:00:16.646188
1382	Jūrmala	JUR	135	2021-01-13 23:00:16.664128
1383	Liepāja	LPX	135	2021-01-13 23:00:16.68633
1384	Rēzekne	REZ	135	2021-01-13 23:00:16.704738
1385	Rīga	RIX	135	2021-01-13 23:00:16.732934
1386	Ventspils	VEN	135	2021-01-13 23:00:16.755793
1387	Valmiera	VMR	135	2021-01-13 23:00:16.779959
1388	Tanger-Tétouan-Al Hoceïma	01	137	2021-01-13 23:00:16.811979
1389	L'Oriental	02	137	2021-01-13 23:00:16.832922
1390	Fès-Meknès	03	137	2021-01-13 23:00:16.855692
1391	Rabat-Salé-Kénitra	04	137	2021-01-13 23:00:16.872806
1392	Béni Mellal-Khénifra	05	137	2021-01-13 23:00:16.893905
1393	Casablanca-Settat	06	137	2021-01-13 23:00:16.919374
1394	Marrakech-Safi	07	137	2021-01-13 23:00:16.935831
1395	Drâa-Tafilalet	08	137	2021-01-13 23:00:16.957158
1396	Souss-Massa	09	137	2021-01-13 23:00:16.987185
1397	Guelmim-Oued Noun	10	137	2021-01-13 23:00:17.003102
1398	Laâyoune-Sakia El Hamra	11	137	2021-01-13 23:00:17.026357
1399	Dakhla-Oued Ed Dahab	12	137	2021-01-13 23:00:17.047233
1400	La Colle	CL	138	2021-01-13 23:00:17.068013
1401	La Condamine	CO	138	2021-01-13 23:00:17.090955
1402	Fontvieille	FO	138	2021-01-13 23:00:17.110618
1403	La Gare	GA	138	2021-01-13 23:00:17.134628
1404	Jardin Exotique	JE	138	2021-01-13 23:00:17.15731
1405	Larvotto	LA	138	2021-01-13 23:00:17.172291
1406	Malbousquet	MA	138	2021-01-13 23:00:17.195594
1407	Monte-Carlo	MC	138	2021-01-13 23:00:17.214235
1408	Moneghetti	MG	138	2021-01-13 23:00:17.235385
1409	Monaco-Ville	MO	138	2021-01-13 23:00:17.258107
1410	Moulins	MU	138	2021-01-13 23:00:17.286714
1411	Port-Hercule	PH	138	2021-01-13 23:00:17.305041
1412	Sainte-Dévote	SD	138	2021-01-13 23:00:17.32285
1413	La Source	SO	138	2021-01-13 23:00:17.340497
1414	Spélugues	SP	138	2021-01-13 23:00:17.366661
1415	Saint-Roman	SR	138	2021-01-13 23:00:17.385761
1416	Vallon de la Rousse	VR	138	2021-01-13 23:00:17.404384
1417	Anenii Noi	AN	139	2021-01-13 23:00:17.432746
1418	Bălți	BA	139	2021-01-13 23:00:17.45136
1419	Tighina	BD	139	2021-01-13 23:00:17.476077
1420	Briceni	BR	139	2021-01-13 23:00:17.499494
1421	Basarabeasca	BS	139	2021-01-13 23:00:17.518457
1422	Cahul	CA	139	2021-01-13 23:00:17.539238
1423	Călărași	CL	139	2021-01-13 23:00:17.562852
1424	Cimișlia	CM	139	2021-01-13 23:00:17.577966
1425	Criuleni	CR	139	2021-01-13 23:00:17.602556
1426	Căușeni	CS	139	2021-01-13 23:00:17.625593
1427	Cantemir	CT	139	2021-01-13 23:00:17.64229
1428	Chișinău	CU	139	2021-01-13 23:00:17.665292
1429	Dondușeni	DO	139	2021-01-13 23:00:17.691605
1430	Drochia	DR	139	2021-01-13 23:00:17.711576
1431	Dubăsari	DU	139	2021-01-13 23:00:17.735881
1432	Edineț	ED	139	2021-01-13 23:00:17.758571
1433	Fălești	FA	139	2021-01-13 23:00:17.776359
1434	Florești	FL	139	2021-01-13 23:00:17.800816
1435	Găgăuzia, Unitatea teritorială autonomă	GA	139	2021-01-13 23:00:17.821029
1436	Glodeni	GL	139	2021-01-13 23:00:17.839409
1437	Hîncești	HI	139	2021-01-13 23:00:17.865987
1438	Ialoveni	IA	139	2021-01-13 23:00:17.882361
1439	Leova	LE	139	2021-01-13 23:00:17.901585
1440	Nisporeni	NI	139	2021-01-13 23:00:17.920712
1441	Ocnița	OC	139	2021-01-13 23:00:17.939933
1442	Orhei	OR	139	2021-01-13 23:00:17.962648
1443	Rezina	RE	139	2021-01-13 23:00:17.976079
1444	Rîșcani	RI	139	2021-01-13 23:00:17.997139
1445	Șoldănești	SD	139	2021-01-13 23:00:18.015841
1446	Sîngerei	SI	139	2021-01-13 23:00:18.037531
1447	Stînga Nistrului, unitatea teritorială din	SN	139	2021-01-13 23:00:18.054866
1448	Soroca	SO	139	2021-01-13 23:00:18.068549
1449	Strășeni	ST	139	2021-01-13 23:00:18.08734
1450	Ștefan Vodă	SV	139	2021-01-13 23:00:18.129024
1451	Taraclia	TA	139	2021-01-13 23:00:18.160853
1452	Telenești	TE	139	2021-01-13 23:00:18.185329
1453	Ungheni	UN	139	2021-01-13 23:00:18.204072
1454	Andrijevica	01	140	2021-01-13 23:00:18.223692
1455	Bar	02	140	2021-01-13 23:00:18.247394
1456	Berane	03	140	2021-01-13 23:00:18.266655
1457	Bijelo Polje	04	140	2021-01-13 23:00:18.29222
1458	Budva	05	140	2021-01-13 23:00:18.30956
1459	Cetinje	06	140	2021-01-13 23:00:18.327136
1460	Danilovgrad	07	140	2021-01-13 23:00:18.350751
1461	Herceg-Novi	08	140	2021-01-13 23:00:18.38474
1462	Kolašin	09	140	2021-01-13 23:00:18.40486
1463	Kotor	10	140	2021-01-13 23:00:18.421766
1464	Mojkovac	11	140	2021-01-13 23:00:18.44641
1465	Nikšić	12	140	2021-01-13 23:00:18.536655
1466	Plav	13	140	2021-01-13 23:00:18.551052
1467	Pljevlja	14	140	2021-01-13 23:00:18.57504
1468	Plužine	15	140	2021-01-13 23:00:18.599455
1469	Podgorica	16	140	2021-01-13 23:00:18.619771
1470	Rožaje	17	140	2021-01-13 23:00:18.641618
1471	Šavnik	18	140	2021-01-13 23:00:18.667406
1472	Tivat	19	140	2021-01-13 23:00:18.689272
1473	Ulcinj	20	140	2021-01-13 23:00:18.709563
1474	Žabljak	21	140	2021-01-13 23:00:18.728298
1475	Toamasina	A	142	2021-01-13 23:00:18.758235
1476	Antsiranana	D	142	2021-01-13 23:00:18.77871
1477	Fianarantsoa	F	142	2021-01-13 23:00:18.799036
1478	Mahajanga	M	142	2021-01-13 23:00:18.820118
1479	Antananarivo	T	142	2021-01-13 23:00:18.840599
1480	Toliara	U	142	2021-01-13 23:00:18.858994
1481	Ralik chain	L	143	2021-01-13 23:00:18.887597
1482	Ratak chain	T	143	2021-01-13 23:00:18.908399
1483	Aerodrom	01	144	2021-01-13 23:00:18.929885
1484	Aračinovo	02	144	2021-01-13 23:00:18.952769
1485	Berovo	03	144	2021-01-13 23:00:18.971143
1486	Bitola	04	144	2021-01-13 23:00:19.000409
1487	Bogdanci	05	144	2021-01-13 23:00:19.024793
1488	Bogovinje	06	144	2021-01-13 23:00:19.051797
1489	Bosilovo	07	144	2021-01-13 23:00:19.069645
1490	Brvenica	08	144	2021-01-13 23:00:19.102281
1491	Butel	09	144	2021-01-13 23:00:19.186448
1492	Valandovo	10	144	2021-01-13 23:00:19.270481
1493	Vasilevo	11	144	2021-01-13 23:00:19.326993
1494	Vevčani	12	144	2021-01-13 23:00:19.396662
1495	Veles	13	144	2021-01-13 23:00:19.457897
1496	Vinica	14	144	2021-01-13 23:00:19.511705
1497	Vraneštica	15	144	2021-01-13 23:00:19.551651
1498	Vrapčište	16	144	2021-01-13 23:00:19.570066
1499	Gazi Baba	17	144	2021-01-13 23:00:19.594204
1500	Gevgelija	18	144	2021-01-13 23:00:19.622415
1501	Gostivar	19	144	2021-01-13 23:00:19.640735
1502	Gradsko	20	144	2021-01-13 23:00:19.666038
1503	Debar	21	144	2021-01-13 23:00:19.690524
1504	Debarca	22	144	2021-01-13 23:00:19.716816
1505	Delčevo	23	144	2021-01-13 23:00:19.736498
1506	Demir Kapija	24	144	2021-01-13 23:00:19.761272
1507	Demir Hisar	25	144	2021-01-13 23:00:19.785402
1508	Dojran	26	144	2021-01-13 23:00:19.80981
1509	Dolneni	27	144	2021-01-13 23:00:19.835186
1510	Drugovo	28	144	2021-01-13 23:00:19.857111
1511	Gjorče Petrov	29	144	2021-01-13 23:00:19.893084
1512	Želino	30	144	2021-01-13 23:00:19.919675
1513	Zajas	31	144	2021-01-13 23:00:19.951222
1514	Zelenikovo	32	144	2021-01-13 23:00:19.973126
1515	Zrnovci	33	144	2021-01-13 23:00:19.993501
1516	Ilinden	34	144	2021-01-13 23:00:20.023311
1517	Jegunovce	35	144	2021-01-13 23:00:20.041416
1518	Kavadarci	36	144	2021-01-13 23:00:20.07096
1519	Karbinci	37	144	2021-01-13 23:00:20.097108
1520	Karpoš	38	144	2021-01-13 23:00:20.124427
1521	Kisela Voda	39	144	2021-01-13 23:00:20.148357
1522	Kičevo	40	144	2021-01-13 23:00:20.169866
1523	Konče	41	144	2021-01-13 23:00:20.193404
1524	Kočani	42	144	2021-01-13 23:00:20.220797
1525	Kratovo	43	144	2021-01-13 23:00:20.239165
1526	Kriva Palanka	44	144	2021-01-13 23:00:20.264346
1527	Krivogaštani	45	144	2021-01-13 23:00:20.299935
1528	Kruševo	46	144	2021-01-13 23:00:20.330266
1529	Kumanovo	47	144	2021-01-13 23:00:20.352835
1530	Lipkovo	48	144	2021-01-13 23:00:20.38085
1531	Lozovo	49	144	2021-01-13 23:00:20.419253
1532	Mavrovo-i-Rostuša	50	144	2021-01-13 23:00:20.441542
1533	Makedonska Kamenica	51	144	2021-01-13 23:00:20.469169
1534	Makedonski Brod	52	144	2021-01-13 23:00:20.495618
1535	Mogila	53	144	2021-01-13 23:00:20.51728
1536	Negotino	54	144	2021-01-13 23:00:20.545689
1537	Novaci	55	144	2021-01-13 23:00:20.57254
1538	Novo Selo	56	144	2021-01-13 23:00:20.601176
1539	Oslomej	57	144	2021-01-13 23:00:20.626161
1540	Ohrid	58	144	2021-01-13 23:00:20.653859
1541	Petrovec	59	144	2021-01-13 23:00:20.675232
1542	Pehčevo	60	144	2021-01-13 23:00:20.701267
1543	Plasnica	61	144	2021-01-13 23:00:20.725746
1544	Prilep	62	144	2021-01-13 23:00:20.742915
1545	Probištip	63	144	2021-01-13 23:00:20.773579
1546	Radoviš	64	144	2021-01-13 23:00:20.800751
1547	Rankovce	65	144	2021-01-13 23:00:20.823807
1548	Resen	66	144	2021-01-13 23:00:20.848478
1549	Rosoman	67	144	2021-01-13 23:00:20.875314
1550	Saraj	68	144	2021-01-13 23:00:20.900915
1551	Sveti Nikole	69	144	2021-01-13 23:00:20.93619
1552	Sopište	70	144	2021-01-13 23:00:20.968982
1553	Staro Nagoričane	71	144	2021-01-13 23:00:20.99107
1554	Struga	72	144	2021-01-13 23:00:21.01968
1555	Strumica	73	144	2021-01-13 23:00:21.050609
1556	Studeničani	74	144	2021-01-13 23:00:21.075175
1557	Tearce	75	144	2021-01-13 23:00:21.105223
1558	Tetovo	76	144	2021-01-13 23:00:21.135731
1559	Centar	77	144	2021-01-13 23:00:21.162431
1560	Centar Župa	78	144	2021-01-13 23:00:21.184092
1561	Čair	79	144	2021-01-13 23:00:21.208853
1562	Čaška	80	144	2021-01-13 23:00:21.236068
1563	Češinovo-Obleševo	81	144	2021-01-13 23:00:21.270848
1564	Čučer Sandevo	82	144	2021-01-13 23:00:21.302143
1565	Štip	83	144	2021-01-13 23:00:21.325714
1566	Šuto Orizari	84	144	2021-01-13 23:00:21.348746
1567	Sagaing	01	146	2021-01-13 23:00:21.377279
1568	Bago	02	146	2021-01-13 23:00:21.407454
1569	Magway	03	146	2021-01-13 23:00:21.437089
1570	Mandalay	04	146	2021-01-13 23:00:21.463176
1571	Tanintharyi	05	146	2021-01-13 23:00:21.484988
1572	Yangon	06	146	2021-01-13 23:00:21.525287
1573	Ayeyarwady	07	146	2021-01-13 23:00:21.551585
1574	Kachin	11	146	2021-01-13 23:00:21.579706
1575	Kayah	12	146	2021-01-13 23:00:21.604517
1576	Kayin	13	146	2021-01-13 23:00:21.629502
1577	Chin	14	146	2021-01-13 23:00:21.654145
1578	Mon	15	146	2021-01-13 23:00:21.678675
1579	Rakhine	16	146	2021-01-13 23:00:21.700524
1580	Shan	17	146	2021-01-13 23:00:21.730442
1581	Orhon	035	147	2021-01-13 23:00:21.763233
1582	Darhan uul	037	147	2021-01-13 23:00:21.786187
1583	Hentiy	039	147	2021-01-13 23:00:21.814458
1584	Hövsgöl	041	147	2021-01-13 23:00:21.840086
1585	Hovd	043	147	2021-01-13 23:00:21.872613
1586	Uvs	046	147	2021-01-13 23:00:21.891057
1587	Töv	047	147	2021-01-13 23:00:21.916851
1588	Selenge	049	147	2021-01-13 23:00:21.944833
1589	Sühbaatar	051	147	2021-01-13 23:00:21.973813
1590	Ömnögovi	053	147	2021-01-13 23:00:22.002827
1591	Övörhangay	055	147	2021-01-13 23:00:22.040363
1592	Dzavhan	057	147	2021-01-13 23:00:22.074901
1593	Dundgovi	059	147	2021-01-13 23:00:22.096543
1594	Dornod	061	147	2021-01-13 23:00:22.123881
1595	Dornogovi	063	147	2021-01-13 23:00:22.14972
1596	Govi-Sumber	064	147	2021-01-13 23:00:22.173402
1597	Govi-Altay	065	147	2021-01-13 23:00:22.198946
1598	Bulgan	067	147	2021-01-13 23:00:22.219509
1599	Bayanhongor	069	147	2021-01-13 23:00:22.255173
1600	Bayan-Ölgiy	071	147	2021-01-13 23:00:22.283754
1601	Arhangay	073	147	2021-01-13 23:00:22.306085
1602	Ulanbaatar	1	147	2021-01-13 23:00:22.331126
1603	Attard	01	153	2021-01-13 23:00:22.369318
1604	Balzan	02	153	2021-01-13 23:00:22.392845
1605	Birgu	03	153	2021-01-13 23:00:22.418498
1606	Birkirkara	04	153	2021-01-13 23:00:22.437893
1607	Birżebbuġa	05	153	2021-01-13 23:00:22.455371
1608	Bormla	06	153	2021-01-13 23:00:22.480098
1609	Dingli	07	153	2021-01-13 23:00:22.499902
1610	Fgura	08	153	2021-01-13 23:00:22.517895
1611	Floriana	09	153	2021-01-13 23:00:22.546317
1612	Fontana	10	153	2021-01-13 23:00:22.56472
1613	Gudja	11	153	2021-01-13 23:00:22.583608
1614	Gżira	12	153	2021-01-13 23:00:22.604666
1615	Għajnsielem	13	153	2021-01-13 23:00:22.620804
1616	Għarb	14	153	2021-01-13 23:00:22.638303
1617	Għargħur	15	153	2021-01-13 23:00:22.656058
1618	Għasri	16	153	2021-01-13 23:00:22.679082
1619	Għaxaq	17	153	2021-01-13 23:00:22.700067
1620	Ħamrun	18	153	2021-01-13 23:00:22.717842
1621	Iklin	19	153	2021-01-13 23:00:22.73924
1622	Isla	20	153	2021-01-13 23:00:22.759598
1623	Kalkara	21	153	2021-01-13 23:00:22.778287
1624	Kerċem	22	153	2021-01-13 23:00:22.796862
1625	Kirkop	23	153	2021-01-13 23:00:22.818472
1626	Lija	24	153	2021-01-13 23:00:22.840312
1627	Luqa	25	153	2021-01-13 23:00:22.861472
1628	Marsa	26	153	2021-01-13 23:00:22.87626
1629	Marsaskala	27	153	2021-01-13 23:00:22.899909
1630	Marsaxlokk	28	153	2021-01-13 23:00:22.916482
1631	Mdina	29	153	2021-01-13 23:00:22.942146
1632	Mellieħa	30	153	2021-01-13 23:00:22.968072
1633	Mġarr	31	153	2021-01-13 23:00:22.982487
1634	Mosta	32	153	2021-01-13 23:00:23.001546
1635	Mqabba	33	153	2021-01-13 23:00:23.019004
1636	Msida	34	153	2021-01-13 23:00:23.040144
1637	Mtarfa	35	153	2021-01-13 23:00:23.060918
1638	Munxar	36	153	2021-01-13 23:00:23.076863
1639	Nadur	37	153	2021-01-13 23:00:23.100321
1640	Naxxar	38	153	2021-01-13 23:00:23.118788
1641	Paola	39	153	2021-01-13 23:00:23.136777
1642	Pembroke	40	153	2021-01-13 23:00:23.16268
1643	Pietà	41	153	2021-01-13 23:00:23.182642
1644	Qala	42	153	2021-01-13 23:00:23.20431
1645	Qormi	43	153	2021-01-13 23:00:23.219781
1646	Qrendi	44	153	2021-01-13 23:00:23.239019
1647	Rabat Għawdex	45	153	2021-01-13 23:00:23.258326
1648	Rabat Malta	46	153	2021-01-13 23:00:23.283427
1649	Safi	47	153	2021-01-13 23:00:23.303025
1650	San Ġiljan	48	153	2021-01-13 23:00:23.322311
1651	San Ġwann	49	153	2021-01-13 23:00:23.346897
1652	San Lawrenz	50	153	2021-01-13 23:00:23.37364
1653	San Pawl il-Baħar	51	153	2021-01-13 23:00:23.391154
1654	Sannat	52	153	2021-01-13 23:00:23.413376
1655	Santa Luċija	53	153	2021-01-13 23:00:23.435309
1656	Santa Venera	54	153	2021-01-13 23:00:23.452198
1657	Siġġiewi	55	153	2021-01-13 23:00:23.471125
1658	Sliema	56	153	2021-01-13 23:00:23.491798
1659	Swieqi	57	153	2021-01-13 23:00:23.511325
1660	Ta’ Xbiex	58	153	2021-01-13 23:00:23.534505
1661	Tarxien	59	153	2021-01-13 23:00:23.563544
1662	Valletta	60	153	2021-01-13 23:00:23.585303
1663	Xagħra	61	153	2021-01-13 23:00:23.626951
1664	Xewkija	62	153	2021-01-13 23:00:23.651658
1665	Xgħajra	63	153	2021-01-13 23:00:23.677972
1666	Żabbar	64	153	2021-01-13 23:00:23.696328
1667	Żebbuġ Għawdex	65	153	2021-01-13 23:00:23.716946
1668	Żebbuġ Malta	66	153	2021-01-13 23:00:23.740305
1669	Żejtun	67	153	2021-01-13 23:00:23.759496
1670	Żurrieq	68	153	2021-01-13 23:00:23.781416
1671	Agalega Islands	AG	154	2021-01-13 23:00:23.813511
1672	Black River	BL	154	2021-01-13 23:00:23.832222
1673	Beau Bassin-Rose Hill	BR	154	2021-01-13 23:00:23.853221
1674	Cargados Carajos Shoals	CC	154	2021-01-13 23:00:23.932591
1675	Curepipe	CU	154	2021-01-13 23:00:23.953329
1676	Flacq	FL	154	2021-01-13 23:00:23.977934
1677	Grand Port	GP	154	2021-01-13 23:00:23.992228
1678	Moka	MO	154	2021-01-13 23:00:24.015903
1679	Pamplemousses	PA	154	2021-01-13 23:00:24.036608
1680	Port Louis	PL	154	2021-01-13 23:00:24.056386
1681	Plaines Wilhems	PW	154	2021-01-13 23:00:24.090041
1682	Quatre Bornes	QB	154	2021-01-13 23:00:24.121032
1683	Rodrigues Island	RO	154	2021-01-13 23:00:24.145114
1684	Rivière du Rempart	RP	154	2021-01-13 23:00:24.16793
1685	Savanne	SA	154	2021-01-13 23:00:24.198713
1686	Vacoas-Phoenix	VP	154	2021-01-13 23:00:24.266048
1687	Central	CE	155	2021-01-13 23:00:24.305621
1688	Male	MLE	155	2021-01-13 23:00:24.325244
1689	North Central	NC	155	2021-01-13 23:00:24.351582
1690	North	NO	155	2021-01-13 23:00:24.369539
1691	South Central	SC	155	2021-01-13 23:00:24.415971
1692	South	SU	155	2021-01-13 23:00:24.43344
1693	Upper North	UN	155	2021-01-13 23:00:24.448203
1694	Upper South	US	155	2021-01-13 23:00:24.469811
1695	Aguascalientes	AGU	157	2021-01-13 23:00:24.492198
1696	Baja California	BCN	157	2021-01-13 23:00:24.521789
1697	Baja California Sur	BCS	157	2021-01-13 23:00:24.564496
1698	Campeche	CAM	157	2021-01-13 23:00:24.61476
1699	Chihuahua	CHH	157	2021-01-13 23:00:24.648004
1700	Chiapas	CHP	157	2021-01-13 23:00:24.666478
1701	Ciudad de México	CMX	157	2021-01-13 23:00:24.688143
1702	Coahuila de Zaragoza	COA	157	2021-01-13 23:00:24.701767
1703	Colima	COL	157	2021-01-13 23:00:24.720952
1704	Durango	DUR	157	2021-01-13 23:00:24.739627
1705	Guerrero	GRO	157	2021-01-13 23:00:24.764546
1706	Guanajuato	GUA	157	2021-01-13 23:00:24.781113
1707	Hidalgo	HID	157	2021-01-13 23:00:24.800721
1708	Jalisco	JAL	157	2021-01-13 23:00:24.830187
1709	México	MEX	157	2021-01-13 23:00:24.848494
1710	Michoacán de Ocampo	MIC	157	2021-01-13 23:00:24.870623
1711	Morelos	MOR	157	2021-01-13 23:00:24.894034
1712	Nayarit	NAY	157	2021-01-13 23:00:24.908381
1713	Nuevo León	NLE	157	2021-01-13 23:00:24.932452
1714	Oaxaca	OAX	157	2021-01-13 23:00:24.96118
1715	Puebla	PUE	157	2021-01-13 23:00:24.985773
1716	Querétaro	QUE	157	2021-01-13 23:00:25.003117
1717	Quintana Roo	ROO	157	2021-01-13 23:00:25.027007
1718	Sinaloa	SIN	157	2021-01-13 23:00:25.042839
1719	San Luis Potosí	SLP	157	2021-01-13 23:00:25.068734
1720	Sonora	SON	157	2021-01-13 23:00:25.100929
1721	Tabasco	TAB	157	2021-01-13 23:00:25.134502
1722	Tamaulipas	TAM	157	2021-01-13 23:00:25.15661
1723	Tlaxcala	TLA	157	2021-01-13 23:00:25.172164
1724	Veracruz de Ignacio de la Llave	VER	157	2021-01-13 23:00:25.190262
1725	Yucatán	YUC	157	2021-01-13 23:00:25.213062
1726	Zacatecas	ZAC	157	2021-01-13 23:00:25.23374
1727	Johor	01	158	2021-01-13 23:00:25.265288
1728	Kedah	02	158	2021-01-13 23:00:25.289471
1729	Kelantan	03	158	2021-01-13 23:00:25.306116
1730	Melaka	04	158	2021-01-13 23:00:25.327135
1731	Negeri Sembilan	05	158	2021-01-13 23:00:25.34754
1732	Pahang	06	158	2021-01-13 23:00:25.367319
1733	Pulau Pinang	07	158	2021-01-13 23:00:25.385791
1734	Perak	08	158	2021-01-13 23:00:25.403731
1735	Perlis	09	158	2021-01-13 23:00:25.431428
1736	Selangor	10	158	2021-01-13 23:00:25.449963
1737	Terengganu	11	158	2021-01-13 23:00:25.469741
1738	Sabah	12	158	2021-01-13 23:00:25.487304
1739	Sarawak	13	158	2021-01-13 23:00:25.505346
1740	Wilayah Persekutuan Kuala Lumpur	14	158	2021-01-13 23:00:25.526619
1741	Wilayah Persekutuan Labuan	15	158	2021-01-13 23:00:25.562971
1742	Wilayah Persekutuan Putrajaya	16	158	2021-01-13 23:00:25.582401
1743	Niassa	A	159	2021-01-13 23:00:25.604764
1744	Manica	B	159	2021-01-13 23:00:25.630417
1745	Gaza	G	159	2021-01-13 23:00:25.649393
1746	Inhambane	I	159	2021-01-13 23:00:25.678586
1747	Maputo	L	159	2021-01-13 23:00:25.698308
1748	Maputo (city)	MPM	159	2021-01-13 23:00:25.720859
1749	Nampula	N	159	2021-01-13 23:00:25.735429
1750	Cabo Delgado	P	159	2021-01-13 23:00:25.759784
1751	Zambézia	Q	159	2021-01-13 23:00:25.777272
1752	Sofala	S	159	2021-01-13 23:00:25.799735
1753	Tete	T	159	2021-01-13 23:00:25.823857
1754	Caprivi	CA	160	2021-01-13 23:00:25.843378
1755	Erongo	ER	160	2021-01-13 23:00:25.869101
1756	Hardap	HA	160	2021-01-13 23:00:25.898765
1757	Karas	KA	160	2021-01-13 23:00:25.937577
1758	Khomas	KH	160	2021-01-13 23:00:25.97063
1759	Kunene	KU	160	2021-01-13 23:00:25.993234
1760	Otjozondjupa	OD	160	2021-01-13 23:00:26.022568
1761	Omaheke	OH	160	2021-01-13 23:00:26.049054
1762	Okavango	OK	160	2021-01-13 23:00:26.077197
1763	Oshana	ON	160	2021-01-13 23:00:26.09895
1764	Omusati	OS	160	2021-01-13 23:00:26.1284
1765	Oshikoto	OT	160	2021-01-13 23:00:26.166789
1766	Ohangwena	OW	160	2021-01-13 23:00:26.189919
1767	Agadez	1	162	2021-01-13 23:00:26.231989
1768	Diffa	2	162	2021-01-13 23:00:26.259944
1769	Dosso	3	162	2021-01-13 23:00:26.296694
1770	Maradi	4	162	2021-01-13 23:00:26.327196
1771	Tahoua	5	162	2021-01-13 23:00:26.362621
1772	Tillabéri	6	162	2021-01-13 23:00:26.387342
1773	Zinder	7	162	2021-01-13 23:00:26.414397
1774	Niamey	8	162	2021-01-13 23:00:26.436386
1775	Abia	AB	164	2021-01-13 23:00:26.465243
1776	Adamawa	AD	164	2021-01-13 23:00:26.499
1777	Akwa Ibom	AK	164	2021-01-13 23:00:26.527821
1778	Anambra	AN	164	2021-01-13 23:00:26.561771
1779	Bauchi	BA	164	2021-01-13 23:00:26.59693
1780	Benue	BE	164	2021-01-13 23:00:26.620038
1781	Borno	BO	164	2021-01-13 23:00:26.650086
1782	Bayelsa	BY	164	2021-01-13 23:00:26.676881
1783	Cross River	CR	164	2021-01-13 23:00:26.713516
1784	Delta	DE	164	2021-01-13 23:00:26.746936
1785	Ebonyi	EB	164	2021-01-13 23:00:26.771396
1786	Edo	ED	164	2021-01-13 23:00:26.801459
1787	Ekiti	EK	164	2021-01-13 23:00:26.828766
1788	Enugu	EN	164	2021-01-13 23:00:26.856683
1789	Abuja Capital Territory	FC	164	2021-01-13 23:00:26.887231
1790	Gombe	GO	164	2021-01-13 23:00:26.917137
1791	Imo	IM	164	2021-01-13 23:00:26.944449
1792	Jigawa	JI	164	2021-01-13 23:00:26.990357
1793	Kaduna	KD	164	2021-01-13 23:00:27.018419
1794	Kebbi	KE	164	2021-01-13 23:00:27.043705
1795	Kano	KN	164	2021-01-13 23:00:27.069541
1796	Kogi	KO	164	2021-01-13 23:00:27.09108
1797	Katsina	KT	164	2021-01-13 23:00:27.120154
1798	Kwara	KW	164	2021-01-13 23:00:27.141084
1799	Lagos	LA	164	2021-01-13 23:00:27.167833
1800	Nassarawa	NA	164	2021-01-13 23:00:27.19005
1801	Niger	NI	164	2021-01-13 23:00:27.215056
1802	Ogun	OG	164	2021-01-13 23:00:27.249943
1803	Ondo	ON	164	2021-01-13 23:00:27.273212
1804	Osun	OS	164	2021-01-13 23:00:27.301481
1805	Oyo	OY	164	2021-01-13 23:00:27.330664
1806	Plateau	PL	164	2021-01-13 23:00:27.356491
1807	Rivers	RI	164	2021-01-13 23:00:27.38402
1808	Sokoto	SO	164	2021-01-13 23:00:27.403566
1809	Taraba	TA	164	2021-01-13 23:00:27.42651
1810	Yobe	YO	164	2021-01-13 23:00:27.451541
1811	Zamfara	ZA	164	2021-01-13 23:00:27.47366
1812	Atlántico Norte	AN	165	2021-01-13 23:00:27.502934
1813	Atlántico Sur	AS	165	2021-01-13 23:00:27.529148
1814	Boaco	BO	165	2021-01-13 23:00:27.550499
1815	Carazo	CA	165	2021-01-13 23:00:27.579582
1816	Chinandega	CI	165	2021-01-13 23:00:27.601634
1817	Chontales	CO	165	2021-01-13 23:00:27.625761
1818	Estelí	ES	165	2021-01-13 23:00:27.653875
1819	Granada	GR	165	2021-01-13 23:00:27.673497
1820	Jinotega	JI	165	2021-01-13 23:00:27.701158
1821	León	LE	165	2021-01-13 23:00:27.734801
1822	Madriz	MD	165	2021-01-13 23:00:27.75643
1823	Managua	MN	165	2021-01-13 23:00:27.780205
1824	Masaya	MS	165	2021-01-13 23:00:27.803706
1825	Matagalpa	MT	165	2021-01-13 23:00:27.823157
1826	Nueva Segovia	NS	165	2021-01-13 23:00:27.84979
1827	Rivas	RI	165	2021-01-13 23:00:27.88667
1828	Río San Juan	SJ	165	2021-01-13 23:00:27.911005
1829	Aruba	AW	166	2021-01-13 23:00:27.933546
1830	Bonaire	BQ1	166	2021-01-13 23:00:27.964909
1831	Saba	BQ2	166	2021-01-13 23:00:27.992327
1832	Sint Eustatius	BQ3	166	2021-01-13 23:00:28.018088
1833	Curaçao	CW	166	2021-01-13 23:00:28.068474
1834	Drenthe	DR	166	2021-01-13 23:00:28.101058
1835	Flevoland	FL	166	2021-01-13 23:00:28.189097
1836	Friesland	FR	166	2021-01-13 23:00:28.228766
1837	Gelderland	GE	166	2021-01-13 23:00:28.265972
1838	Groningen	GR	166	2021-01-13 23:00:28.297626
1839	Limburg	LI	166	2021-01-13 23:00:28.342709
1840	Noord-Brabant	NB	166	2021-01-13 23:00:28.404073
1841	Noord-Holland	NH	166	2021-01-13 23:00:28.480495
1842	Overijssel	OV	166	2021-01-13 23:00:28.518998
1843	Sint Maarten	SX	166	2021-01-13 23:00:28.576852
1844	Utrecht	UT	166	2021-01-13 23:00:28.620642
1845	Zeeland	ZE	166	2021-01-13 23:00:28.649328
1846	Zuid-Holland	ZH	166	2021-01-13 23:00:28.692905
1847	Østfold	01	167	2021-01-13 23:00:28.729853
1848	Akershus	02	167	2021-01-13 23:00:28.754177
1849	Oslo	03	167	2021-01-13 23:00:28.778321
1850	Hedmark	04	167	2021-01-13 23:00:28.800598
1851	Oppland	05	167	2021-01-13 23:00:28.828252
1852	Buskerud	06	167	2021-01-13 23:00:28.856061
1853	Vestfold	07	167	2021-01-13 23:00:28.880304
1854	Telemark	08	167	2021-01-13 23:00:28.947396
1855	Aust-Agder	09	167	2021-01-13 23:00:28.978365
1856	Vest-Agder	10	167	2021-01-13 23:00:29.003057
1857	Rogaland	11	167	2021-01-13 23:00:29.029439
1858	Hordaland	12	167	2021-01-13 23:00:29.061273
1859	Sogn og Fjordane	14	167	2021-01-13 23:00:29.088184
1860	Møre og Romsdal	15	167	2021-01-13 23:00:29.113235
1861	Sør-Trøndelag	16	167	2021-01-13 23:00:29.133423
1862	Nord-Trøndelag	17	167	2021-01-13 23:00:29.158309
1863	Nordland	18	167	2021-01-13 23:00:29.185635
1864	Troms	19	167	2021-01-13 23:00:29.203595
1865	Finnmark	20	167	2021-01-13 23:00:29.224229
1866	Svalbard (Arctic Region)	21	167	2021-01-13 23:00:29.247745
1867	Jan Mayen (Arctic Region)	22	167	2021-01-13 23:00:29.283417
1868	Madhyamanchal	1	168	2021-01-13 23:00:29.316238
1869	Madhya Pashchimanchal	2	168	2021-01-13 23:00:29.336333
1870	Pashchimanchal	3	168	2021-01-13 23:00:29.357959
1871	Purwanchal	4	168	2021-01-13 23:00:29.377513
1872	Sudur Pashchimanchal	5	168	2021-01-13 23:00:29.39918
1873	Chatham Islands Territory	CIT	171	2021-01-13 23:00:29.432306
1874	Auckland	AUK	171	2021-01-13 23:00:29.44935
1875	Bay of Plenty	BOP	171	2021-01-13 23:00:29.477541
1876	Canterbury	CAN	171	2021-01-13 23:00:29.498637
1877	Gisborne	GIS	171	2021-01-13 23:00:29.515943
1878	Hawke's Bay	HKB	171	2021-01-13 23:00:29.58356
1879	Manawatu-Wanganui	MWT	171	2021-01-13 23:00:29.632932
1880	Marlborough	MBH	171	2021-01-13 23:00:29.718433
1881	Nelson	NSN	171	2021-01-13 23:00:29.745141
1882	Northland	NTL	171	2021-01-13 23:00:29.766725
1883	Otago	OTA	171	2021-01-13 23:00:29.78486
1884	Southland	STL	171	2021-01-13 23:00:29.808013
1885	Taranaki	TKI	171	2021-01-13 23:00:29.825564
1886	Tasman	TAS	171	2021-01-13 23:00:29.846683
1887	Wellington	WGN	171	2021-01-13 23:00:29.868816
1888	Waikato	WKO	171	2021-01-13 23:00:29.888243
1889	West Coast	WTC	171	2021-01-13 23:00:29.914481
1890	Al Bāţinah	BA	172	2021-01-13 23:00:29.943519
1891	Al Buraymī	BU	172	2021-01-13 23:00:29.963562
1892	Ad Dākhilīya	DA	172	2021-01-13 23:00:29.982899
1893	Masqaţ	MA	172	2021-01-13 23:00:30.013885
1894	Musandam	MU	172	2021-01-13 23:00:30.033221
1895	Ash Sharqīyah	SH	172	2021-01-13 23:00:30.050546
1896	Al Wusţá	WU	172	2021-01-13 23:00:30.070304
1897	Az̧ Z̧āhirah	ZA	172	2021-01-13 23:00:30.090186
1898	Z̧ufār	ZU	172	2021-01-13 23:00:30.115765
1899	Amazonas	AMA	174	2021-01-13 23:00:30.136838
1900	Ancash	ANC	174	2021-01-13 23:00:30.154405
1901	Apurímac	APU	174	2021-01-13 23:00:30.173342
1902	Arequipa	ARE	174	2021-01-13 23:00:30.190841
1903	Ayacucho	AYA	174	2021-01-13 23:00:30.219578
1904	Cajamarca	CAJ	174	2021-01-13 23:00:30.237696
1905	El Callao	CAL	174	2021-01-13 23:00:30.258242
1906	Cusco [Cuzco]	CUS	174	2021-01-13 23:00:30.2816
1907	Huánuco	HUC	174	2021-01-13 23:00:30.301878
1908	Huancavelica	HUV	174	2021-01-13 23:00:30.320908
1909	Ica	ICA	174	2021-01-13 23:00:30.347885
1910	Junín	JUN	174	2021-01-13 23:00:30.367699
1911	La Libertad	LAL	174	2021-01-13 23:00:30.391189
1912	Lambayeque	LAM	174	2021-01-13 23:00:30.410958
1913	Lima	LIM	174	2021-01-13 23:00:30.430958
1914	Municipalidad Metropolitana de Lima	LMA	174	2021-01-13 23:00:30.45164
1915	Loreto	LOR	174	2021-01-13 23:00:30.470543
1916	Madre de Dios	MDD	174	2021-01-13 23:00:30.492421
1917	Moquegua	MOQ	174	2021-01-13 23:00:30.504907
1918	Pasco	PAS	174	2021-01-13 23:00:30.521658
1919	Piura	PIU	174	2021-01-13 23:00:30.549131
1920	Puno	PUN	174	2021-01-13 23:00:30.578315
1921	San Martín	SAM	174	2021-01-13 23:00:30.599528
1922	Tacna	TAC	174	2021-01-13 23:00:30.617242
1923	Tumbes	TUM	174	2021-01-13 23:00:30.637493
1924	Ucayali	UCA	174	2021-01-13 23:00:30.657648
1925	Chimbu	CPK	176	2021-01-13 23:00:30.682774
1926	Central	CPM	176	2021-01-13 23:00:30.704507
1927	East New Britain	EBR	176	2021-01-13 23:00:30.726855
1928	Eastern Highlands	EHG	176	2021-01-13 23:00:30.744886
1929	Enga	EPW	176	2021-01-13 23:00:30.771123
1930	East Sepik	ESW	176	2021-01-13 23:00:30.791183
1931	Gulf	GPK	176	2021-01-13 23:00:30.811309
1932	Milne Bay	MBA	176	2021-01-13 23:00:30.833617
1933	Morobe	MPL	176	2021-01-13 23:00:30.854225
1934	Madang	MPM	176	2021-01-13 23:00:30.871743
1935	Manus	MRL	176	2021-01-13 23:00:30.896845
1936	National Capital District (Port Moresby)	NCD	176	2021-01-13 23:00:30.921399
1937	New Ireland	NIK	176	2021-01-13 23:00:30.939527
1938	Northern	NPP	176	2021-01-13 23:00:30.96319
1939	Bougainville	NSB	176	2021-01-13 23:00:30.978704
1940	Sandaun	SAN	176	2021-01-13 23:00:30.999612
1941	Southern Highlands	SHM	176	2021-01-13 23:00:31.016286
1942	West New Britain	WBK	176	2021-01-13 23:00:31.039056
1943	Western Highlands	WHM	176	2021-01-13 23:00:31.058164
1944	Western	WPD	176	2021-01-13 23:00:31.078022
1945	National Capital Region	00	177	2021-01-13 23:00:31.106483
1946	Ilocos (Region I)	01	177	2021-01-13 23:00:31.132968
1947	Cagayan Valley (Region II)	02	177	2021-01-13 23:00:31.156919
1948	Central Luzon (Region III)	03	177	2021-01-13 23:00:31.174708
1949	Bicol (Region V)	05	177	2021-01-13 23:00:31.19783
1950	Western Visayas (Region VI)	06	177	2021-01-13 23:00:31.213259
1951	Central Visayas (Region VII)	07	177	2021-01-13 23:00:31.234862
1952	Eastern Visayas (Region VIII)	08	177	2021-01-13 23:00:31.259492
1953	Zamboanga Peninsula (Region IX)	09	177	2021-01-13 23:00:31.273998
1954	Northern Mindanao (Region X)	10	177	2021-01-13 23:00:31.303195
1955	Davao (Region XI)	11	177	2021-01-13 23:00:31.3196
1956	Soccsksargen (Region XII)	12	177	2021-01-13 23:00:31.337745
1957	Caraga (Region XIII)	13	177	2021-01-13 23:00:31.36423
1958	Autonomous Region in Muslim Mindanao (ARMM)	14	177	2021-01-13 23:00:31.384967
1959	Cordillera Administrative Region (CAR)	15	177	2021-01-13 23:00:31.403176
1960	CALABARZON (Region IV-A)	40	177	2021-01-13 23:00:31.42297
1961	MIMAROPA (Region IV-B)	41	177	2021-01-13 23:00:31.446687
1962	Balochistan	BA	178	2021-01-13 23:00:31.478746
1963	Gilgit-Baltistan	GB	178	2021-01-13 23:00:31.511017
1964	Islamabad	IS	178	2021-01-13 23:00:31.54415
1965	Azad Kashmir	JK	178	2021-01-13 23:00:31.566692
1966	Khyber Pakhtunkhwa	KP	178	2021-01-13 23:00:31.582854
1967	Punjab	PB	178	2021-01-13 23:00:31.610721
1968	Sindh	SD	178	2021-01-13 23:00:31.636927
1969	Federally Administered Tribal Areas	TA	178	2021-01-13 23:00:31.660344
1970	Dolnośląskie	DS	179	2021-01-13 23:00:31.688248
1971	Kujawsko-pomorskie	KP	179	2021-01-13 23:00:31.718356
1972	Lubuskie	LB	179	2021-01-13 23:00:31.747093
1973	Łódzkie	LD	179	2021-01-13 23:00:31.772456
1974	Lubelskie	LU	179	2021-01-13 23:00:31.795433
1975	Małopolskie	MA	179	2021-01-13 23:00:31.819269
1976	Mazowieckie	MZ	179	2021-01-13 23:00:31.848441
1977	Opolskie	OP	179	2021-01-13 23:00:31.875575
1978	Podlaskie	PD	179	2021-01-13 23:00:31.902287
1979	Podkarpackie	PK	179	2021-01-13 23:00:31.923502
1980	Pomorskie	PM	179	2021-01-13 23:00:31.949428
1981	Świętokrzyskie	SK	179	2021-01-13 23:00:31.985794
1982	Śląskie	SL	179	2021-01-13 23:00:32.01821
1983	Warmińsko-mazurskie	WN	179	2021-01-13 23:00:32.044419
1984	Wielkopolskie	WP	179	2021-01-13 23:00:32.067429
1985	Zachodniopomorskie	ZP	179	2021-01-13 23:00:32.088782
1986	Bethlehem	BTH	183	2021-01-13 23:00:32.129999
1987	Deir El Balah	DEB	183	2021-01-13 23:00:32.152323
1988	Gaza	GZA	183	2021-01-13 23:00:32.180898
1989	Hebron	HBN	183	2021-01-13 23:00:32.21377
1990	Jerusalem	JEM	183	2021-01-13 23:00:32.258426
1991	Jenin	JEN	183	2021-01-13 23:00:32.291025
1992	Jericho - Al Aghwar	JRH	183	2021-01-13 23:00:32.344209
1993	Khan Yunis	KYS	183	2021-01-13 23:00:32.375458
1994	Nablus	NBS	183	2021-01-13 23:00:32.403281
1995	North Gaza	NGZ	183	2021-01-13 23:00:32.431609
1996	Qalqilya	QQA	183	2021-01-13 23:00:32.4903
1997	Ramallah	RBH	183	2021-01-13 23:00:32.519328
1998	Rafah	RFH	183	2021-01-13 23:00:32.549166
1999	Salfit	SLT	183	2021-01-13 23:00:32.585703
2000	Tubas	TBS	183	2021-01-13 23:00:32.612661
2001	Tulkarm	TKM	183	2021-01-13 23:00:32.634293
2002	Aveiro	01	184	2021-01-13 23:00:32.664913
2003	Beja	02	184	2021-01-13 23:00:32.697742
2004	Braga	03	184	2021-01-13 23:00:32.721437
2005	Bragança	04	184	2021-01-13 23:00:32.747551
2006	Castelo Branco	05	184	2021-01-13 23:00:32.771199
2007	Coimbra	06	184	2021-01-13 23:00:32.791492
2008	Évora	07	184	2021-01-13 23:00:32.819063
2009	Faro	08	184	2021-01-13 23:00:32.843991
2010	Guarda	09	184	2021-01-13 23:00:32.86387
2011	Leiria	10	184	2021-01-13 23:00:32.886279
2012	Lisboa	11	184	2021-01-13 23:00:32.913321
2013	Portalegre	12	184	2021-01-13 23:00:32.942663
2014	Porto	13	184	2021-01-13 23:00:32.966949
2015	Santarém	14	184	2021-01-13 23:00:32.987927
2016	Setúbal	15	184	2021-01-13 23:00:33.014742
2017	Viana do Castelo	16	184	2021-01-13 23:00:33.046457
2018	Vila Real	17	184	2021-01-13 23:00:33.068492
2019	Viseu	18	184	2021-01-13 23:00:33.090191
2020	Região Autónoma dos Açores	20	184	2021-01-13 23:00:33.116675
2021	Região Autónoma da Madeira	30	184	2021-01-13 23:00:33.137182
2022	Aimeliik	002	185	2021-01-13 23:00:33.16748
2023	Airai	004	185	2021-01-13 23:00:33.190335
2024	Angaur	010	185	2021-01-13 23:00:33.21495
2025	Hatobohei	050	185	2021-01-13 23:00:33.233059
2026	Kayangel	100	185	2021-01-13 23:00:33.255551
2027	Koror	150	185	2021-01-13 23:00:33.285885
2028	Melekeok	212	185	2021-01-13 23:00:33.312842
2029	Ngaraard	214	185	2021-01-13 23:00:33.336907
2030	Ngarchelong	218	185	2021-01-13 23:00:33.36017
2031	Ngardmau	222	185	2021-01-13 23:00:33.384679
2032	Ngatpang	224	185	2021-01-13 23:00:33.409778
2033	Ngchesar	226	185	2021-01-13 23:00:33.433769
2034	Ngeremlengui	227	185	2021-01-13 23:00:33.469143
2035	Ngiwal	228	185	2021-01-13 23:00:33.492442
2036	Peleliu	350	185	2021-01-13 23:00:33.518114
2037	Sonsorol	370	185	2021-01-13 23:00:33.54104
2038	Concepción	1	186	2021-01-13 23:00:33.579648
2039	Alto Paraná	10	186	2021-01-13 23:00:33.599855
2040	Central	11	186	2021-01-13 23:00:33.62466
2041	Ñeembucú	12	186	2021-01-13 23:00:33.650606
2042	Amambay	13	186	2021-01-13 23:00:33.67556
2043	Canindeyú	14	186	2021-01-13 23:00:33.694708
2044	Presidente Hayes	15	186	2021-01-13 23:00:33.716411
2045	Alto Paraguay	16	186	2021-01-13 23:00:33.746756
2046	Boquerón	19	186	2021-01-13 23:00:33.774619
2047	San Pedro	2	186	2021-01-13 23:00:33.796456
2048	Cordillera	3	186	2021-01-13 23:00:33.821563
2049	Guairá	4	186	2021-01-13 23:00:33.847067
2050	Caaguazú	5	186	2021-01-13 23:00:33.879685
2051	Caazapá	6	186	2021-01-13 23:00:33.910751
2052	Itapúa	7	186	2021-01-13 23:00:33.962115
2053	Misiones	8	186	2021-01-13 23:00:33.990071
2054	Paraguarí	9	186	2021-01-13 23:00:34.017346
2055	Asunción	ASU	186	2021-01-13 23:00:34.037277
2056	Alba	AB	189	2021-01-13 23:00:34.07186
2057	Argeș	AG	189	2021-01-13 23:00:34.095139
2058	Arad	AR	189	2021-01-13 23:00:34.128127
2059	București	B	189	2021-01-13 23:00:34.153518
2060	Bacău	BC	189	2021-01-13 23:00:34.181894
2061	Bihor	BH	189	2021-01-13 23:00:34.200995
2062	Bistrița-Năsăud	BN	189	2021-01-13 23:00:34.226716
2063	Brăila	BR	189	2021-01-13 23:00:34.256964
2064	Botoșani	BT	189	2021-01-13 23:00:34.28635
2065	Brașov	BV	189	2021-01-13 23:00:34.311313
2066	Buzău	BZ	189	2021-01-13 23:00:34.335385
2067	Cluj	CJ	189	2021-01-13 23:00:34.364621
2068	Călărași	CL	189	2021-01-13 23:00:34.396598
2069	Caraș-Severin	CS	189	2021-01-13 23:00:34.418687
2070	Constanța	CT	189	2021-01-13 23:00:34.440771
2071	Covasna	CV	189	2021-01-13 23:00:34.464627
2072	Dâmbovița	DB	189	2021-01-13 23:00:34.490456
2073	Dolj	DJ	189	2021-01-13 23:00:34.516458
2074	Gorj	GJ	189	2021-01-13 23:00:34.535887
2075	Galați	GL	189	2021-01-13 23:00:34.559432
2076	Giurgiu	GR	189	2021-01-13 23:00:34.586971
2077	Hunedoara	HD	189	2021-01-13 23:00:34.616772
2078	Harghita	HR	189	2021-01-13 23:00:34.637189
2079	Ilfov	IF	189	2021-01-13 23:00:34.666296
2080	Ialomița	IL	189	2021-01-13 23:00:34.693395
2081	Iași	IS	189	2021-01-13 23:00:34.723417
2082	Mehedinți	MH	189	2021-01-13 23:00:34.750971
2083	Maramureș	MM	189	2021-01-13 23:00:34.770943
2084	Mureș	MS	189	2021-01-13 23:00:34.797135
2085	Neamț	NT	189	2021-01-13 23:00:34.825582
2086	Olt	OT	189	2021-01-13 23:00:34.862836
2087	Prahova	PH	189	2021-01-13 23:00:34.892916
2088	Sibiu	SB	189	2021-01-13 23:00:34.920059
2089	Sălaj	SJ	189	2021-01-13 23:00:34.948897
2090	Satu Mare	SM	189	2021-01-13 23:00:34.979433
2091	Suceava	SV	189	2021-01-13 23:00:35.001761
2092	Tulcea	TL	189	2021-01-13 23:00:35.030568
2093	Timiș	TM	189	2021-01-13 23:00:35.051207
2094	Teleorman	TR	189	2021-01-13 23:00:35.069978
2095	Vâlcea	VL	189	2021-01-13 23:00:35.094671
2096	Vrancea	VN	189	2021-01-13 23:00:35.117683
2097	Vaslui	VS	189	2021-01-13 23:00:35.134284
2098	Beograd	00	190	2021-01-13 23:00:35.163187
2099	Mačvanski okrug	08	190	2021-01-13 23:00:35.178445
2100	Kolubarski okrug	09	190	2021-01-13 23:00:35.198685
2101	Podunavski okrug	10	190	2021-01-13 23:00:35.217854
2102	Braničevski okrug	11	190	2021-01-13 23:00:35.23509
2103	Šumadijski okrug	12	190	2021-01-13 23:00:35.263337
2104	Pomoravski okrug	13	190	2021-01-13 23:00:35.284014
2105	Borski okrug	14	190	2021-01-13 23:00:35.30144
2106	Zaječarski okrug	15	190	2021-01-13 23:00:35.323182
2107	Zlatiborski okrug	16	190	2021-01-13 23:00:35.346764
2108	Moravički okrug	17	190	2021-01-13 23:00:35.369511
2109	Raški okrug	18	190	2021-01-13 23:00:35.458448
2110	Rasinski okrug	19	190	2021-01-13 23:00:35.522932
2111	Nišavski okrug	20	190	2021-01-13 23:00:35.554832
2112	Toplički okrug	21	190	2021-01-13 23:00:35.625176
2113	Pirotski okrug	22	190	2021-01-13 23:00:35.64915
2114	Jablanički okrug	23	190	2021-01-13 23:00:35.669576
2115	Pčinjski okrug	24	190	2021-01-13 23:00:35.693864
2116	Kosovo-Metohija	KM	190	2021-01-13 23:00:35.708833
2117	Vojvodina	VO	190	2021-01-13 23:00:35.729956
2118	Adygeya, Respublika	AD	191	2021-01-13 23:00:35.756354
2119	Altay, Respublika	AL	191	2021-01-13 23:00:35.771697
2120	Altayskiy kray	ALT	191	2021-01-13 23:00:35.797975
2121	Amurskaya oblast'	AMU	191	2021-01-13 23:00:35.818611
2122	Arkhangel'skaya oblast'	ARK	191	2021-01-13 23:00:35.836397
2123	Astrakhanskaya oblast'	AST	191	2021-01-13 23:00:35.854344
2124	Bashkortostan, Respublika	BA	191	2021-01-13 23:00:35.87275
2125	Belgorodskaya oblast'	BEL	191	2021-01-13 23:00:35.894626
2126	Bryanskaya oblast'	BRY	191	2021-01-13 23:00:35.91553
2127	Buryatiya, Respublika	BU	191	2021-01-13 23:00:35.937053
2128	Chechenskaya Respublika	CE	191	2021-01-13 23:00:35.9627
2129	Chelyabinskaya oblast'	CHE	191	2021-01-13 23:00:35.979636
2130	Chukotskiy avtonomnyy okrug	CHU	191	2021-01-13 23:00:36.000774
2131	Chuvashskaya Respublika	CU	191	2021-01-13 23:00:36.020056
2132	Dagestan, Respublika	DA	191	2021-01-13 23:00:36.040571
2133	Respublika Ingushetiya	IN	191	2021-01-13 23:00:36.061729
2134	Irkutiskaya oblast'	IRK	191	2021-01-13 23:00:36.078267
2135	Ivanovskaya oblast'	IVA	191	2021-01-13 23:00:36.098746
2136	Kamchatskiy kray	KAM	191	2021-01-13 23:00:36.124865
2137	Kabardino-Balkarskaya Respublika	KB	191	2021-01-13 23:00:36.142541
2138	Karachayevo-Cherkesskaya Respublika	KC	191	2021-01-13 23:00:36.169282
2139	Krasnodarskiy kray	KDA	191	2021-01-13 23:00:36.193864
2140	Kemerovskaya oblast'	KEM	191	2021-01-13 23:00:36.209304
2141	Kaliningradskaya oblast'	KGD	191	2021-01-13 23:00:36.230427
2142	Kurganskaya oblast'	KGN	191	2021-01-13 23:00:36.265654
2143	Khabarovskiy kray	KHA	191	2021-01-13 23:00:36.296883
2144	Khanty-Mansiysky avtonomnyy okrug-Yugra	KHM	191	2021-01-13 23:00:36.317602
2145	Kirovskaya oblast'	KIR	191	2021-01-13 23:00:36.33653
2146	Khakasiya, Respublika	KK	191	2021-01-13 23:00:36.382911
2147	Kalmykiya, Respublika	KL	191	2021-01-13 23:00:36.406355
2148	Kaluzhskaya oblast'	KLU	191	2021-01-13 23:00:36.429976
2149	Komi, Respublika	KO	191	2021-01-13 23:00:36.444913
2150	Kostromskaya oblast'	KOS	191	2021-01-13 23:00:36.463834
2151	Kareliya, Respublika	KR	191	2021-01-13 23:00:36.487138
2152	Kurskaya oblast'	KRS	191	2021-01-13 23:00:36.515384
2153	Krasnoyarskiy kray	KYA	191	2021-01-13 23:00:36.536718
2154	Leningradskaya oblast'	LEN	191	2021-01-13 23:00:36.55621
2155	Lipetskaya oblast'	LIP	191	2021-01-13 23:00:36.589246
2156	Magadanskaya oblast'	MAG	191	2021-01-13 23:00:36.609088
2157	Mariy El, Respublika	ME	191	2021-01-13 23:00:36.632329
2158	Mordoviya, Respublika	MO	191	2021-01-13 23:00:36.647086
2159	Moskovskaya oblast'	MOS	191	2021-01-13 23:00:36.668826
2160	Moskva	MOW	191	2021-01-13 23:00:36.688422
2161	Murmanskaya oblast'	MUR	191	2021-01-13 23:00:36.707924
2162	Nenetskiy avtonomnyy okrug	NEN	191	2021-01-13 23:00:36.730967
2163	Novgorodskaya oblast'	NGR	191	2021-01-13 23:00:36.74987
2164	Nizhegorodskaya oblast'	NIZ	191	2021-01-13 23:00:36.76998
2165	Novosibirskaya oblast'	NVS	191	2021-01-13 23:00:36.790343
2166	Omskaya oblast'	OMS	191	2021-01-13 23:00:36.810393
2167	Orenburgskaya oblast'	ORE	191	2021-01-13 23:00:36.833366
2168	Orlovskaya oblast'	ORL	191	2021-01-13 23:00:36.859413
2169	Permskiy kray	PER	191	2021-01-13 23:00:36.884593
2170	Penzenskaya oblast'	PNZ	191	2021-01-13 23:00:36.899948
2171	Primorskiy kray	PRI	191	2021-01-13 23:00:36.920445
2172	Pskovskaya oblast'	PSK	191	2021-01-13 23:00:36.982632
2173	Rostovskaya oblast'	ROS	191	2021-01-13 23:00:37.011552
2174	Ryazanskaya oblast'	RYA	191	2021-01-13 23:00:37.029769
2175	Sakha, Respublika [Yakutiya]	SA	191	2021-01-13 23:00:37.052722
2176	Sakhalinskaya oblast'	SAK	191	2021-01-13 23:00:37.075183
2177	Samaraskaya oblast'	SAM	191	2021-01-13 23:00:37.109126
2178	Saratovskaya oblast'	SAR	191	2021-01-13 23:00:37.133893
2179	Severnaya Osetiya-Alaniya, Respublika	SE	191	2021-01-13 23:00:37.157223
2180	Smolenskaya oblast'	SMO	191	2021-01-13 23:00:37.18045
2181	Sankt-Peterburg	SPE	191	2021-01-13 23:00:37.196188
2182	Stavropol'skiy kray	STA	191	2021-01-13 23:00:37.222364
2183	Sverdlovskaya oblast'	SVE	191	2021-01-13 23:00:37.240296
2184	Tatarstan, Respublika	TA	191	2021-01-13 23:00:37.261417
2185	Tambovskaya oblast'	TAM	191	2021-01-13 23:00:37.286946
2186	Tomskaya oblast'	TOM	191	2021-01-13 23:00:37.302192
2187	Tul'skaya oblast'	TUL	191	2021-01-13 23:00:37.32615
2188	Tverskaya oblast'	TVE	191	2021-01-13 23:00:37.347929
2189	Tyva, Respublika [Tuva]	TY	191	2021-01-13 23:00:37.36415
2190	Tyumenskaya oblast'	TYU	191	2021-01-13 23:00:37.392724
2191	Udmurtskaya Respublika	UD	191	2021-01-13 23:00:37.415907
2192	Ul'yanovskaya oblast'	ULY	191	2021-01-13 23:00:37.433999
2193	Volgogradskaya oblast'	VGG	191	2021-01-13 23:00:37.45215
2194	Vladimirskaya oblast'	VLA	191	2021-01-13 23:00:37.469125
2195	Vologodskaya oblast'	VLG	191	2021-01-13 23:00:37.493574
2196	Voronezhskaya oblast'	VOR	191	2021-01-13 23:00:37.515067
2197	Yamalo-Nenetskiy avtonomnyy okrug	YAN	191	2021-01-13 23:00:37.533479
2198	Yaroslavskaya oblast'	YAR	191	2021-01-13 23:00:37.560952
2199	Yevreyskaya avtonomnaya oblast'	YEV	191	2021-01-13 23:00:37.584886
2200	Zabajkal'skij kraj	ZAB	191	2021-01-13 23:00:37.599996
2201	Ar Riyāḍ	01	193	2021-01-13 23:00:37.628795
2202	Makkah	02	193	2021-01-13 23:00:37.650618
2203	Al Madīnah	03	193	2021-01-13 23:00:37.677097
2204	Ash Sharqīyah	04	193	2021-01-13 23:00:37.697243
2205	Al Qaşīm	05	193	2021-01-13 23:00:37.721
2206	Ḥā'il	06	193	2021-01-13 23:00:37.749897
2207	Tabūk	07	193	2021-01-13 23:00:37.765905
2208	Al Ḥudūd ash Shamāliyah	08	193	2021-01-13 23:00:37.790979
2209	Jīzan	09	193	2021-01-13 23:00:37.810883
2210	Najrān	10	193	2021-01-13 23:00:37.829662
2211	Al Bāhah	11	193	2021-01-13 23:00:37.851447
2212	Al Jawf	12	193	2021-01-13 23:00:37.871031
2213	`Asīr	14	193	2021-01-13 23:00:37.893915
2214	Zalingei	DC	196	2021-01-13 23:00:37.924707
2215	Sharq Dārfūr	DE	196	2021-01-13 23:00:37.946814
2216	Shamāl Dārfūr	DN	196	2021-01-13 23:00:37.963132
2217	Janūb Dārfūr	DS	196	2021-01-13 23:00:37.981136
2218	Gharb Dārfūr	DW	196	2021-01-13 23:00:37.998548
2219	Al Qaḑārif	GD	196	2021-01-13 23:00:38.027738
2220	Al Jazīrah	GZ	196	2021-01-13 23:00:38.04613
2221	Kassalā	KA	196	2021-01-13 23:00:38.064292
2222	Al Kharţūm	KH	196	2021-01-13 23:00:38.085706
2223	Shamāl Kurdufān	KN	196	2021-01-13 23:00:38.112134
2224	Janūb Kurdufān	KS	196	2021-01-13 23:00:38.133274
2225	An Nīl al Azraq	NB	196	2021-01-13 23:00:38.158339
2226	Ash Shamālīyah	NO	196	2021-01-13 23:00:38.178149
2227	An Nīl	NR	196	2021-01-13 23:00:38.196337
2228	An Nīl al Abyaḑ	NW	196	2021-01-13 23:00:38.218082
2229	Al Baḩr al Aḩmar	RS	196	2021-01-13 23:00:38.233278
2230	Sinnār	SI	196	2021-01-13 23:00:38.260415
2231	Stockholms län	AB	197	2021-01-13 23:00:38.291017
2232	Västerbottens län	AC	197	2021-01-13 23:00:38.313408
2233	Norrbottens län	BD	197	2021-01-13 23:00:38.329882
2234	Uppsala län	C	197	2021-01-13 23:00:38.352796
2235	Södermanlands län	D	197	2021-01-13 23:00:38.377103
2236	Östergötlands län	E	197	2021-01-13 23:00:38.415715
2237	Jönköpings län	F	197	2021-01-13 23:00:38.450783
2238	Kronobergs län	G	197	2021-01-13 23:00:38.46943
2239	Kalmar län	H	197	2021-01-13 23:00:38.500501
2240	Gotlands län	I	197	2021-01-13 23:00:38.523134
2241	Blekinge län	K	197	2021-01-13 23:00:38.56432
2242	Skåne län	M	197	2021-01-13 23:00:38.591047
2243	Hallands län	N	197	2021-01-13 23:00:38.618949
2244	Västra Götalands län	O	197	2021-01-13 23:00:38.645044
2245	Värmlands län	S	197	2021-01-13 23:00:38.67374
2246	Örebro län	T	197	2021-01-13 23:00:38.701412
2247	Västmanlands län	U	197	2021-01-13 23:00:38.729936
2248	Dalarnas län	W	197	2021-01-13 23:00:38.755563
2249	Gävleborgs län	X	197	2021-01-13 23:00:38.780311
2250	Västernorrlands län	Y	197	2021-01-13 23:00:38.806045
2251	Jämtlands län	Z	197	2021-01-13 23:00:38.831496
2252	Central Singapore	01	198	2021-01-13 23:00:38.878594
2253	North East	02	198	2021-01-13 23:00:38.898825
2254	North West	03	198	2021-01-13 23:00:38.925184
2255	South East	04	198	2021-01-13 23:00:38.966817
2256	South West	05	198	2021-01-13 23:00:39.029379
2257	Ascension	AC	199	2021-01-13 23:00:39.066851
2258	Saint Helena	HL	199	2021-01-13 23:00:39.095228
2259	Tristan da Cunha	TA	199	2021-01-13 23:00:39.135484
2260	Ajdovščina	001	200	2021-01-13 23:00:39.184019
2261	Beltinci	002	200	2021-01-13 23:00:39.216059
2262	Bled	003	200	2021-01-13 23:00:39.24429
2263	Bohinj	004	200	2021-01-13 23:00:39.289513
2264	Borovnica	005	200	2021-01-13 23:00:39.324296
2265	Bovec	006	200	2021-01-13 23:00:39.360448
2266	Brda	007	200	2021-01-13 23:00:39.401994
2267	Brezovica	008	200	2021-01-13 23:00:39.43599
2268	Brežice	009	200	2021-01-13 23:00:39.467522
2269	Tišina	010	200	2021-01-13 23:00:39.497443
2270	Celje	011	200	2021-01-13 23:00:39.530911
2271	Cerklje na Gorenjskem	012	200	2021-01-13 23:00:39.549672
2272	Cerknica	013	200	2021-01-13 23:00:39.577319
2273	Cerkno	014	200	2021-01-13 23:00:39.602255
2274	Črenšovci	015	200	2021-01-13 23:00:39.633548
2275	Črna na Koroškem	016	200	2021-01-13 23:00:39.655451
2276	Črnomelj	017	200	2021-01-13 23:00:39.678094
2277	Destrnik	018	200	2021-01-13 23:00:39.702318
2278	Divača	019	200	2021-01-13 23:00:39.7328
2279	Dobrepolje	020	200	2021-01-13 23:00:39.75613
2280	Dobrova-Polhov Gradec	021	200	2021-01-13 23:00:39.779271
2281	Dol pri Ljubljani	022	200	2021-01-13 23:00:39.806282
2282	Domžale	023	200	2021-01-13 23:00:39.833306
2283	Dornava	024	200	2021-01-13 23:00:39.856027
2284	Dravograd	025	200	2021-01-13 23:00:39.879103
2285	Duplek	026	200	2021-01-13 23:00:39.910721
2286	Gorenja vas-Poljane	027	200	2021-01-13 23:00:39.939284
2287	Gorišnica	028	200	2021-01-13 23:00:39.977674
2288	Gornja Radgona	029	200	2021-01-13 23:00:39.998873
2289	Gornji Grad	030	200	2021-01-13 23:00:40.019596
2290	Gornji Petrovci	031	200	2021-01-13 23:00:40.044538
2291	Grosuplje	032	200	2021-01-13 23:00:40.068843
2292	Šalovci	033	200	2021-01-13 23:00:40.102006
2293	Hrastnik	034	200	2021-01-13 23:00:40.125721
2294	Hrpelje-Kozina	035	200	2021-01-13 23:00:40.146563
2295	Idrija	036	200	2021-01-13 23:00:40.173307
2296	Ig	037	200	2021-01-13 23:00:40.19475
2297	Ilirska Bistrica	038	200	2021-01-13 23:00:40.228971
2298	Ivančna Gorica	039	200	2021-01-13 23:00:40.249989
2299	Izola/Isola	040	200	2021-01-13 23:00:40.279029
2300	Jesenice	041	200	2021-01-13 23:00:40.307994
2301	Juršinci	042	200	2021-01-13 23:00:40.340201
2302	Kamnik	043	200	2021-01-13 23:00:40.366574
2303	Kanal	044	200	2021-01-13 23:00:40.384675
2304	Kidričevo	045	200	2021-01-13 23:00:40.418104
2305	Kobarid	046	200	2021-01-13 23:00:40.442575
2306	Kobilje	047	200	2021-01-13 23:00:40.466486
2307	Kočevje	048	200	2021-01-13 23:00:40.488751
2308	Komen	049	200	2021-01-13 23:00:40.515571
2309	Koper/Capodistria	050	200	2021-01-13 23:00:40.543087
2310	Kozje	051	200	2021-01-13 23:00:40.572968
2311	Kranj	052	200	2021-01-13 23:00:40.599345
2312	Kranjska Gora	053	200	2021-01-13 23:00:40.6231
2313	Krško	054	200	2021-01-13 23:00:40.645141
2314	Kungota	055	200	2021-01-13 23:00:40.673047
2315	Kuzma	056	200	2021-01-13 23:00:40.703102
2316	Laško	057	200	2021-01-13 23:00:40.725543
2317	Lenart	058	200	2021-01-13 23:00:40.749092
2318	Lendava/Lendva	059	200	2021-01-13 23:00:40.793431
2319	Litija	060	200	2021-01-13 23:00:40.836863
2320	Ljubljana	061	200	2021-01-13 23:00:40.876552
2321	Ljubno	062	200	2021-01-13 23:00:40.907026
2322	Ljutomer	063	200	2021-01-13 23:00:40.931017
2323	Logatec	064	200	2021-01-13 23:00:40.96254
2324	Loška dolina	065	200	2021-01-13 23:00:40.990917
2325	Loški Potok	066	200	2021-01-13 23:00:41.010709
2326	Luče	067	200	2021-01-13 23:00:41.036914
2327	Lukovica	068	200	2021-01-13 23:00:41.055454
2328	Majšperk	069	200	2021-01-13 23:00:41.088686
2329	Maribor	070	200	2021-01-13 23:00:41.122392
2330	Medvode	071	200	2021-01-13 23:00:41.145857
2331	Mengeš	072	200	2021-01-13 23:00:41.17214
2332	Metlika	073	200	2021-01-13 23:00:41.199916
2333	Mežica	074	200	2021-01-13 23:00:41.229267
2334	Miren-Kostanjevica	075	200	2021-01-13 23:00:41.251668
2335	Mislinja	076	200	2021-01-13 23:00:41.27701
2336	Moravče	077	200	2021-01-13 23:00:41.309677
2337	Moravske Toplice	078	200	2021-01-13 23:00:41.343566
2338	Mozirje	079	200	2021-01-13 23:00:41.368561
2339	Murska Sobota	080	200	2021-01-13 23:00:41.394253
2340	Muta	081	200	2021-01-13 23:00:41.422998
2341	Naklo	082	200	2021-01-13 23:00:41.453888
2342	Nazarje	083	200	2021-01-13 23:00:41.475864
2343	Nova Gorica	084	200	2021-01-13 23:00:41.501707
2344	Novo mesto	085	200	2021-01-13 23:00:41.530302
2345	Odranci	086	200	2021-01-13 23:00:41.55716
2346	Ormož	087	200	2021-01-13 23:00:41.585075
2347	Osilnica	088	200	2021-01-13 23:00:41.609459
2348	Pesnica	089	200	2021-01-13 23:00:41.635261
2349	Piran/Pirano	090	200	2021-01-13 23:00:41.663136
2350	Pivka	091	200	2021-01-13 23:00:41.686135
2351	Podčetrtek	092	200	2021-01-13 23:00:41.705704
2352	Podvelka	093	200	2021-01-13 23:00:41.732019
2353	Postojna	094	200	2021-01-13 23:00:41.766073
2354	Preddvor	095	200	2021-01-13 23:00:41.793151
2355	Ptuj	096	200	2021-01-13 23:00:41.822539
2356	Puconci	097	200	2021-01-13 23:00:41.844401
2357	Rače-Fram	098	200	2021-01-13 23:00:41.871114
2358	Radeče	099	200	2021-01-13 23:00:41.895678
2359	Radenci	100	200	2021-01-13 23:00:41.92211
2360	Radlje ob Dravi	101	200	2021-01-13 23:00:41.939603
2361	Radovljica	102	200	2021-01-13 23:00:41.96224
2362	Ravne na Koroškem	103	200	2021-01-13 23:00:41.985833
2363	Ribnica	104	200	2021-01-13 23:00:42.011538
2364	Rogašovci	105	200	2021-01-13 23:00:42.034585
2365	Rogaška Slatina	106	200	2021-01-13 23:00:42.060831
2366	Rogatec	107	200	2021-01-13 23:00:42.07968
2367	Ruše	108	200	2021-01-13 23:00:42.102517
2368	Semič	109	200	2021-01-13 23:00:42.124232
2369	Sevnica	110	200	2021-01-13 23:00:42.143323
2370	Sežana	111	200	2021-01-13 23:00:42.174098
2371	Slovenj Gradec	112	200	2021-01-13 23:00:42.196254
2372	Slovenska Bistrica	113	200	2021-01-13 23:00:42.212541
2373	Slovenske Konjice	114	200	2021-01-13 23:00:42.235242
2374	Starče	115	200	2021-01-13 23:00:42.257748
2375	Sveti Jurij	116	200	2021-01-13 23:00:42.279657
2376	Šenčur	117	200	2021-01-13 23:00:42.301112
2377	Šentilj	118	200	2021-01-13 23:00:42.321945
2378	Šentjernej	119	200	2021-01-13 23:00:42.341358
2379	Šentjur	120	200	2021-01-13 23:00:42.365063
2380	Škocjan	121	200	2021-01-13 23:00:42.380856
2381	Škofja Loka	122	200	2021-01-13 23:00:42.406088
2382	Škofljica	123	200	2021-01-13 23:00:42.425472
2383	Šmarje pri Jelšah	124	200	2021-01-13 23:00:42.444037
2384	Šmartno ob Paki	125	200	2021-01-13 23:00:42.466814
2385	Šoštanj	126	200	2021-01-13 23:00:42.488895
2386	Štore	127	200	2021-01-13 23:00:42.515866
2387	Tolmin	128	200	2021-01-13 23:00:42.537131
2388	Trbovlje	129	200	2021-01-13 23:00:42.555927
2389	Trebnje	130	200	2021-01-13 23:00:42.570209
2390	Tržič	131	200	2021-01-13 23:00:42.595672
2391	Turnišče	132	200	2021-01-13 23:00:42.612112
2392	Velenje	133	200	2021-01-13 23:00:42.629307
2393	Velike Lašče	134	200	2021-01-13 23:00:42.647766
2394	Videm	135	200	2021-01-13 23:00:42.67018
2395	Vipava	136	200	2021-01-13 23:00:42.695517
2396	Vitanje	137	200	2021-01-13 23:00:42.714502
2397	Vodice	138	200	2021-01-13 23:00:42.739361
2398	Vojnik	139	200	2021-01-13 23:00:42.762309
2399	Vrhnika	140	200	2021-01-13 23:00:42.777793
2400	Vuzenica	141	200	2021-01-13 23:00:42.798696
2401	Zagorje ob Savi	142	200	2021-01-13 23:00:42.813976
2402	Zavrč	143	200	2021-01-13 23:00:42.844653
2403	Zreče	144	200	2021-01-13 23:00:42.865221
2404	Železniki	146	200	2021-01-13 23:00:42.8831
2405	Žiri	147	200	2021-01-13 23:00:42.907232
2406	Benedikt	148	200	2021-01-13 23:00:42.927345
2407	Bistrica ob Sotli	149	200	2021-01-13 23:00:42.947817
2408	Bloke	150	200	2021-01-13 23:00:42.973273
2409	Braslovče	151	200	2021-01-13 23:00:42.998009
2410	Cankova	152	200	2021-01-13 23:00:43.015839
2411	Cerkvenjak	153	200	2021-01-13 23:00:43.039012
2412	Dobje	154	200	2021-01-13 23:00:43.06531
2413	Dobrna	155	200	2021-01-13 23:00:43.086534
2414	Dobrovnik/Dobronak	156	200	2021-01-13 23:00:43.114755
2415	Dolenjske Toplice	157	200	2021-01-13 23:00:43.141749
2416	Grad	158	200	2021-01-13 23:00:43.170382
2417	Hajdina	159	200	2021-01-13 23:00:43.306688
2418	Hoče-Slivnica	160	200	2021-01-13 23:00:43.376824
2419	Hodoš/Hodos	161	200	2021-01-13 23:00:43.416157
2420	Horjul	162	200	2021-01-13 23:00:43.50608
2421	Jezersko	163	200	2021-01-13 23:00:43.527459
2422	Komenda	164	200	2021-01-13 23:00:43.547801
2423	Kostel	165	200	2021-01-13 23:00:43.573238
2424	Križevci	166	200	2021-01-13 23:00:43.588455
2425	Lovrenc na Pohorju	167	200	2021-01-13 23:00:43.609539
2426	Markovci	168	200	2021-01-13 23:00:43.636419
2427	Miklavž na Dravskem polju	169	200	2021-01-13 23:00:43.649793
2428	Mirna Peč	170	200	2021-01-13 23:00:43.673989
2429	Oplotnica	171	200	2021-01-13 23:00:43.740672
2430	Podlehnik	172	200	2021-01-13 23:00:43.767452
2431	Polzela	173	200	2021-01-13 23:00:43.809037
2432	Prebold	174	200	2021-01-13 23:00:43.856148
2433	Prevalje	175	200	2021-01-13 23:00:43.886862
2434	Razkrižje	176	200	2021-01-13 23:00:43.916512
2435	Ribnica na Pohorju	177	200	2021-01-13 23:00:43.940181
2436	Selnica ob Dravi	178	200	2021-01-13 23:00:43.962699
2437	Sodražica	179	200	2021-01-13 23:00:43.986086
2438	Solčava	180	200	2021-01-13 23:00:44.010057
2439	Sveta Ana	181	200	2021-01-13 23:00:44.057434
2440	Sveta Andraž v Slovenskih Goricah	182	200	2021-01-13 23:00:44.075392
2441	Šempeter-Vrtojba	183	200	2021-01-13 23:00:44.099607
2442	Tabor	184	200	2021-01-13 23:00:44.126202
2443	Trnovska vas	185	200	2021-01-13 23:00:44.142366
2444	Trzin	186	200	2021-01-13 23:00:44.165427
2445	Velika Polana	187	200	2021-01-13 23:00:44.184065
2446	Veržej	188	200	2021-01-13 23:00:44.201104
2447	Vransko	189	200	2021-01-13 23:00:44.232315
2448	Žalec	190	200	2021-01-13 23:00:44.25654
2449	Žetale	191	200	2021-01-13 23:00:44.286379
2450	Žirovnica	192	200	2021-01-13 23:00:44.313326
2451	Žužemberk	193	200	2021-01-13 23:00:44.348757
2452	Šmartno pri Litiji	194	200	2021-01-13 23:00:44.373721
2453	Apače	195	200	2021-01-13 23:00:44.399457
2454	Cirkulane	196	200	2021-01-13 23:00:44.428319
2455	Kosanjevica na Krki	197	200	2021-01-13 23:00:44.452619
2456	Makole	198	200	2021-01-13 23:00:44.47812
2457	Mokronog-Trebelno	199	200	2021-01-13 23:00:44.505227
2458	Poljčane	200	200	2021-01-13 23:00:44.52889
2459	Renče-Vogrsko	201	200	2021-01-13 23:00:44.55336
2460	Središče ob Dravi	202	200	2021-01-13 23:00:44.588872
2461	Straža	203	200	2021-01-13 23:00:44.62038
2462	Sveta Trojica v Slovenskih Goricah	204	200	2021-01-13 23:00:44.646113
2463	Sveti Tomaž	205	200	2021-01-13 23:00:44.676415
2464	Šmarjeske Topliče	206	200	2021-01-13 23:00:44.708518
2465	Gorje	207	200	2021-01-13 23:00:44.737466
2466	Log-Dragomer	208	200	2021-01-13 23:00:44.761318
2467	Rečica ob Savinji	209	200	2021-01-13 23:00:44.793404
2468	Sveti Jurij v Slovenskih Goricah	210	200	2021-01-13 23:00:44.821936
2469	Šentrupert	211	200	2021-01-13 23:00:44.847527
2470	Banskobystrický kraj	BC	202	2021-01-13 23:00:44.882268
2471	Bratislavský kraj	BL	202	2021-01-13 23:00:44.915407
2472	Košický kraj	KI	202	2021-01-13 23:00:44.94576
2473	Nitriansky kraj	NI	202	2021-01-13 23:00:44.978543
2474	Prešovský kraj	PV	202	2021-01-13 23:00:45.026589
2475	Trnavský kraj	TA	202	2021-01-13 23:00:45.079286
2476	Trenčiansky kraj	TC	202	2021-01-13 23:00:45.141022
2477	Žilinský kraj	ZI	202	2021-01-13 23:00:45.196503
2478	Acquaviva	01	204	2021-01-13 23:00:45.329201
2479	Chiesanuova	02	204	2021-01-13 23:00:45.403023
2480	Domagnano	03	204	2021-01-13 23:00:45.443785
2481	Faetano	04	204	2021-01-13 23:00:45.498361
2482	Fiorentino	05	204	2021-01-13 23:00:45.520005
2483	Borgo Maggiore	06	204	2021-01-13 23:00:45.545642
2484	San Marino	07	204	2021-01-13 23:00:45.57645
2485	Montegiardino	08	204	2021-01-13 23:00:45.603465
2486	Serravalle	09	204	2021-01-13 23:00:45.627897
2487	Diourbel	DB	205	2021-01-13 23:00:45.655596
2488	Dakar	DK	205	2021-01-13 23:00:45.686708
2489	Fatick	FK	205	2021-01-13 23:00:45.712045
2490	Kaffrine	KA	205	2021-01-13 23:00:45.740887
2491	Kolda	KD	205	2021-01-13 23:00:45.76833
2492	Kédougou	KE	205	2021-01-13 23:00:45.798266
2493	Kaolack	KL	205	2021-01-13 23:00:45.823815
2494	Louga	LG	205	2021-01-13 23:00:45.849442
2495	Matam	MT	205	2021-01-13 23:00:45.878441
2496	Sédhiou	SE	205	2021-01-13 23:00:45.903589
2497	Saint-Louis	SL	205	2021-01-13 23:00:45.936672
2498	Tambacounda	TC	205	2021-01-13 23:00:45.963674
2499	Thiès	TH	205	2021-01-13 23:00:45.987138
2500	Ziguinchor	ZG	205	2021-01-13 23:00:46.019074
2501	Northern Bahr el-Ghazal	BN	208	2021-01-13 23:00:46.056966
2502	Western Bahr el-Ghazal	BW	208	2021-01-13 23:00:46.081752
2503	Central Equatoria	EC	208	2021-01-13 23:00:46.111069
2504	Eastern Equatoria	EE8	208	2021-01-13 23:00:46.136043
2505	Western Equatoria	EW	208	2021-01-13 23:00:46.169785
2506	Jonglei	JG	208	2021-01-13 23:00:46.195709
2507	Lakes	LK	208	2021-01-13 23:00:46.221856
2508	Upper Nile	NU	208	2021-01-13 23:00:46.246657
2509	Unity	UY	208	2021-01-13 23:00:46.279395
2510	Warrap	WR	208	2021-01-13 23:00:46.308115
2511	Ahuachapán	AH	210	2021-01-13 23:00:46.345296
2512	Cabañas	CA	210	2021-01-13 23:00:46.373644
2513	Chalatenango	CH	210	2021-01-13 23:00:46.392056
2514	Cuscatlán	CU	210	2021-01-13 23:00:46.418383
2515	La Libertad	LI	210	2021-01-13 23:00:46.443419
2516	Morazán	MO	210	2021-01-13 23:00:46.465728
2517	La Paz	PA	210	2021-01-13 23:00:46.488047
2518	Santa Ana	SA	210	2021-01-13 23:00:46.513216
2519	San Miguel	SM	210	2021-01-13 23:00:46.540016
2520	Sonsonate	SO	210	2021-01-13 23:00:46.566928
2521	San Salvador	SS	210	2021-01-13 23:00:46.596157
2522	San Vicente	SV	210	2021-01-13 23:00:46.623275
2523	La Unión	UN	210	2021-01-13 23:00:46.650677
2524	Usulután	US	210	2021-01-13 23:00:46.679812
2525	Hhohho	HH	213	2021-01-13 23:00:46.704951
2526	Lubombo	LU	213	2021-01-13 23:00:46.732476
2527	Manzini	MA	213	2021-01-13 23:00:46.767031
2528	Shiselweni	SH	213	2021-01-13 23:00:46.788314
2529	Al Baṭḩah	BA	215	2021-01-13 23:00:46.820347
2530	Baḩr al Ghazāl	BG	215	2021-01-13 23:00:46.844925
2531	Būrkū	BO	215	2021-01-13 23:00:46.876327
2532	Shārī Bāqirmī	CB	215	2021-01-13 23:00:46.901197
2533	Innīdī	EN	215	2021-01-13 23:00:46.925226
2534	Qīrā	GR	215	2021-01-13 23:00:46.946922
2535	Ḥajjar Lamīs	HL	215	2021-01-13 23:00:46.980697
2536	Kānim	KA	215	2021-01-13 23:00:47.009984
2537	Al Buḩayrah	LC	215	2021-01-13 23:00:47.033369
2538	Lūqūn al Gharbī	LO	215	2021-01-13 23:00:47.057717
2539	Lūqūn ash Sharqī	LR	215	2021-01-13 23:00:47.082
2540	Māndūl	MA	215	2021-01-13 23:00:47.113207
2541	Shārī al Awsaṭ	MC	215	2021-01-13 23:00:47.143819
2542	Māyū Kībbī ash Sharqī	ME	215	2021-01-13 23:00:47.175885
2543	Māyū Kībbī al Gharbī	MO	215	2021-01-13 23:00:47.207805
2544	Madīnat Injamīnā	ND	215	2021-01-13 23:00:47.239119
2545	Waddāy	OD	215	2021-01-13 23:00:47.274588
2546	Salāmāt	SA	215	2021-01-13 23:00:47.302751
2547	Sīlā	SI	215	2021-01-13 23:00:47.325256
2548	Tānjilī	TA	215	2021-01-13 23:00:47.349928
2549	Tibastī	TI	215	2021-01-13 23:00:47.381595
2550	Wādī Fīrā	WF	215	2021-01-13 23:00:47.409705
2551	Krung Thep Maha Nakhon Bangkok	10	218	2021-01-13 23:00:47.440256
2552	Samut Prakan	11	218	2021-01-13 23:00:47.46305
2553	Nonthaburi	12	218	2021-01-13 23:00:47.485516
2554	Pathum Thani	13	218	2021-01-13 23:00:47.510727
2555	Phra Nakhon Si Ayutthaya	14	218	2021-01-13 23:00:47.53751
2556	Ang Thong	15	218	2021-01-13 23:00:47.556848
2557	Lop Buri	16	218	2021-01-13 23:00:47.585274
2558	Sing Buri	17	218	2021-01-13 23:00:47.620152
2559	Chai Nat	18	218	2021-01-13 23:00:47.64647
2560	Saraburi	19	218	2021-01-13 23:00:47.666905
2561	Chon Buri	20	218	2021-01-13 23:00:47.685303
2562	Rayong	21	218	2021-01-13 23:00:47.707743
2563	Chanthaburi	22	218	2021-01-13 23:00:47.722688
2564	Trat	23	218	2021-01-13 23:00:47.744393
2565	Chachoengsao	24	218	2021-01-13 23:00:47.777921
2566	Prachin Buri	25	218	2021-01-13 23:00:47.80355
2567	Nakhon Nayok	26	218	2021-01-13 23:00:47.820585
2568	Sa Kaeo	27	218	2021-01-13 23:00:47.844963
2569	Nakhon Ratchasima	30	218	2021-01-13 23:00:47.863275
2570	Buri Ram	31	218	2021-01-13 23:00:47.881474
2571	Surin	32	218	2021-01-13 23:00:47.915147
2572	Si Sa Ket	33	218	2021-01-13 23:00:47.942536
2573	Ubon Ratchathani	34	218	2021-01-13 23:00:47.95875
2574	Yasothon	35	218	2021-01-13 23:00:47.980081
2575	Chaiyaphum	36	218	2021-01-13 23:00:48.008328
2576	Amnat Charoen	37	218	2021-01-13 23:00:48.025027
2577	Nong Bua Lam Phu	39	218	2021-01-13 23:00:48.046323
2578	Khon Kaen	40	218	2021-01-13 23:00:48.065528
2579	Udon Thani	41	218	2021-01-13 23:00:48.086615
2580	Loei	42	218	2021-01-13 23:00:48.11158
2581	Nong Khai	43	218	2021-01-13 23:00:48.138811
2582	Maha Sarakham	44	218	2021-01-13 23:00:48.166673
2583	Roi Et	45	218	2021-01-13 23:00:48.223528
2584	Kalasin	46	218	2021-01-13 23:00:48.24339
2585	Sakon Nakhon	47	218	2021-01-13 23:00:48.279872
2586	Nakhon Phanom	48	218	2021-01-13 23:00:48.30704
2587	Mukdahan	49	218	2021-01-13 23:00:48.381448
2588	Chiang Mai	50	218	2021-01-13 23:00:48.416506
2589	Lamphun	51	218	2021-01-13 23:00:48.439455
2590	Lampang	52	218	2021-01-13 23:00:48.457051
2591	Uttaradit	53	218	2021-01-13 23:00:48.483174
2592	Phrae	54	218	2021-01-13 23:00:48.498459
2593	Nan	55	218	2021-01-13 23:00:48.517262
2594	Phayao	56	218	2021-01-13 23:00:48.545287
2595	Chiang Rai	57	218	2021-01-13 23:00:48.563187
2596	Mae Hong Son	58	218	2021-01-13 23:00:48.58059
2597	Nakhon Sawan	60	218	2021-01-13 23:00:48.597499
2598	Uthai Thani	61	218	2021-01-13 23:00:48.61936
2599	Kamphaeng Phet	62	218	2021-01-13 23:00:48.640718
2600	Tak	63	218	2021-01-13 23:00:48.715634
2601	Sukhothai	64	218	2021-01-13 23:00:48.735189
2602	Phitsanulok	65	218	2021-01-13 23:00:48.761031
2603	Phichit	66	218	2021-01-13 23:00:48.784521
2604	Phetchabun	67	218	2021-01-13 23:00:48.805199
2605	Ratchaburi	70	218	2021-01-13 23:00:48.824991
2606	Kanchanaburi	71	218	2021-01-13 23:00:48.847717
2607	Suphan Buri	72	218	2021-01-13 23:00:48.874671
2608	Nakhon Pathom	73	218	2021-01-13 23:00:48.892026
2609	Samut Sakhon	74	218	2021-01-13 23:00:48.913643
2610	Samut Songkhram	75	218	2021-01-13 23:00:48.927449
2611	Phetchaburi	76	218	2021-01-13 23:00:48.948646
2612	Prachuap Khiri Khan	77	218	2021-01-13 23:00:48.969188
2613	Nakhon Si Thammarat	80	218	2021-01-13 23:00:48.99187
2614	Krabi	81	218	2021-01-13 23:00:49.012521
2615	Phangnga	82	218	2021-01-13 23:00:49.030344
2616	Phuket	83	218	2021-01-13 23:00:49.137884
2617	Surat Thani	84	218	2021-01-13 23:00:49.164655
2618	Ranong	85	218	2021-01-13 23:00:49.188675
2619	Chumphon	86	218	2021-01-13 23:00:49.206512
2620	Songkhla	90	218	2021-01-13 23:00:49.22803
2621	Satun	91	218	2021-01-13 23:00:49.250019
2622	Trang	92	218	2021-01-13 23:00:49.270667
2623	Phatthalung	93	218	2021-01-13 23:00:49.302603
2624	Pattani	94	218	2021-01-13 23:00:49.324683
2625	Yala	95	218	2021-01-13 23:00:49.34498
2626	Narathiwat	96	218	2021-01-13 23:00:49.370804
2627	Phatthaya	S	218	2021-01-13 23:00:49.393718
2628	Gorno-Badakhshan	GB	219	2021-01-13 23:00:49.422781
2629	Khatlon	KT	219	2021-01-13 23:00:49.444228
2630	Sughd	SU	219	2021-01-13 23:00:49.468931
2631	Ahal	A	222	2021-01-13 23:00:49.499284
2632	Balkan	B	222	2021-01-13 23:00:49.52735
2633	Daşoguz	D	222	2021-01-13 23:00:49.543607
2634	Lebap	L	222	2021-01-13 23:00:49.568804
2635	Mary	M	222	2021-01-13 23:00:49.588311
2636	Aşgabat	S	222	2021-01-13 23:00:49.610424
2637	Tunis	11	223	2021-01-13 23:00:49.643061
2638	Ariana	12	223	2021-01-13 23:00:49.667876
2639	Ben Arous	13	223	2021-01-13 23:00:49.6876
2640	La Manouba	14	223	2021-01-13 23:00:49.708019
2641	Nabeul	21	223	2021-01-13 23:00:49.730209
2642	Zaghouan	22	223	2021-01-13 23:00:49.745154
2643	Bizerte	23	223	2021-01-13 23:00:49.768928
2644	Béja	31	223	2021-01-13 23:00:49.795893
2645	Jendouba	32	223	2021-01-13 23:00:49.810708
2646	Le Kef	33	223	2021-01-13 23:00:49.837535
2647	Siliana	34	223	2021-01-13 23:00:49.860189
2648	Kairouan	41	223	2021-01-13 23:00:49.878243
2649	Kasserine	42	223	2021-01-13 23:00:49.904483
2650	Sidi Bouzid	43	223	2021-01-13 23:00:49.929855
2651	Sousse	51	223	2021-01-13 23:00:49.95542
2652	Monastir	52	223	2021-01-13 23:00:49.976199
2653	Mahdia	53	223	2021-01-13 23:00:50.004422
2654	Sfax	61	223	2021-01-13 23:00:50.026294
2655	Gafsa	71	223	2021-01-13 23:00:50.042805
2656	Tozeur	72	223	2021-01-13 23:00:50.072201
2657	Kebili	73	223	2021-01-13 23:00:50.095175
2658	Gabès	81	223	2021-01-13 23:00:50.127842
2659	Medenine	82	223	2021-01-13 23:00:50.178097
2660	Tataouine	83	223	2021-01-13 23:00:50.295961
2661	Adana	01	225	2021-01-13 23:00:50.388997
2662	Adıyaman	02	225	2021-01-13 23:00:50.423767
2663	Afyonkarahisar	03	225	2021-01-13 23:00:50.447997
2664	Ağrı	04	225	2021-01-13 23:00:50.513642
2665	Amasya	05	225	2021-01-13 23:00:50.548568
2666	Ankara	06	225	2021-01-13 23:00:50.578806
2667	Antalya	07	225	2021-01-13 23:00:50.613197
2668	Artvin	08	225	2021-01-13 23:00:50.680484
2669	Aydın	09	225	2021-01-13 23:00:50.709275
2670	Balıkesir	10	225	2021-01-13 23:00:50.736806
2671	Bilecik	11	225	2021-01-13 23:00:50.758469
2672	Bingöl	12	225	2021-01-13 23:00:50.778957
2673	Bitlis	13	225	2021-01-13 23:00:50.803805
2674	Bolu	14	225	2021-01-13 23:00:50.82668
2675	Burdur	15	225	2021-01-13 23:00:50.848172
2676	Bursa	16	225	2021-01-13 23:00:50.886823
2677	Çanakkale	17	225	2021-01-13 23:00:50.928233
2678	Çankırı	18	225	2021-01-13 23:00:50.963359
2679	Çorum	19	225	2021-01-13 23:00:50.996458
2680	Denizli	20	225	2021-01-13 23:00:51.035798
2681	Diyarbakır	21	225	2021-01-13 23:00:51.073458
2682	Edirne	22	225	2021-01-13 23:00:51.109916
2683	Elazığ	23	225	2021-01-13 23:00:51.17362
2684	Erzincan	24	225	2021-01-13 23:00:51.197178
2685	Erzurum	25	225	2021-01-13 23:00:51.215411
2686	Eskişehir	26	225	2021-01-13 23:00:51.23869
2687	Gaziantep	27	225	2021-01-13 23:00:51.267155
2688	Giresun	28	225	2021-01-13 23:00:51.299623
2689	Gümüşhane	29	225	2021-01-13 23:00:51.323577
2690	Hakkâri	30	225	2021-01-13 23:00:51.343971
2691	Hatay	31	225	2021-01-13 23:00:51.373735
2692	Isparta	32	225	2021-01-13 23:00:51.401728
2693	Mersin	33	225	2021-01-13 23:00:51.424226
2694	İstanbul	34	225	2021-01-13 23:00:51.443546
2695	İzmir	35	225	2021-01-13 23:00:51.470368
2696	Kars	36	225	2021-01-13 23:00:51.493531
2697	Kastamonu	37	225	2021-01-13 23:00:51.514471
2698	Kayseri	38	225	2021-01-13 23:00:51.540454
2699	Kırklareli	39	225	2021-01-13 23:00:51.562032
2700	Kırşehir	40	225	2021-01-13 23:00:51.584839
2701	Kocaeli	41	225	2021-01-13 23:00:51.61172
2702	Konya	42	225	2021-01-13 23:00:51.640992
2703	Kütahya	43	225	2021-01-13 23:00:51.668597
2704	Malatya	44	225	2021-01-13 23:00:51.693022
2705	Manisa	45	225	2021-01-13 23:00:51.71596
2706	Kahramanmaraş	46	225	2021-01-13 23:00:51.753496
2707	Mardin	47	225	2021-01-13 23:00:51.778115
2708	Muğla	48	225	2021-01-13 23:00:51.805645
2709	Muş	49	225	2021-01-13 23:00:51.8266
2710	Nevşehir	50	225	2021-01-13 23:00:51.852406
2711	Niğde	51	225	2021-01-13 23:00:51.880229
2712	Ordu	52	225	2021-01-13 23:00:51.908196
2713	Rize	53	225	2021-01-13 23:00:51.935261
2714	Sakarya	54	225	2021-01-13 23:00:51.956887
2715	Samsun	55	225	2021-01-13 23:00:51.997549
2716	Siirt	56	225	2021-01-13 23:00:52.023559
2717	Sinop	57	225	2021-01-13 23:00:52.045401
2718	Sivas	58	225	2021-01-13 23:00:52.073606
2719	Tekirdağ	59	225	2021-01-13 23:00:52.10433
2720	Tokat	60	225	2021-01-13 23:00:52.133481
2721	Trabzon	61	225	2021-01-13 23:00:52.150917
2722	Tunceli	62	225	2021-01-13 23:00:52.177539
2723	Şanlıurfa	63	225	2021-01-13 23:00:52.20461
2724	Uşak	64	225	2021-01-13 23:00:52.230944
2725	Van	65	225	2021-01-13 23:00:52.255355
2726	Yozgat	66	225	2021-01-13 23:00:52.289159
2727	Zonguldak	67	225	2021-01-13 23:00:52.316758
2728	Aksaray	68	225	2021-01-13 23:00:52.343605
2729	Bayburt	69	225	2021-01-13 23:00:52.371481
2730	Karaman	70	225	2021-01-13 23:00:52.393803
2731	Kırıkkale	71	225	2021-01-13 23:00:52.418172
2732	Batman	72	225	2021-01-13 23:00:52.445306
2733	Şırnak	73	225	2021-01-13 23:00:52.475425
2734	Bartın	74	225	2021-01-13 23:00:52.500115
2735	Ardahan	75	225	2021-01-13 23:00:52.51897
2736	Iğdır	76	225	2021-01-13 23:00:52.542206
2737	Yalova	77	225	2021-01-13 23:00:52.566502
2738	Karabük	78	225	2021-01-13 23:00:52.589735
2739	Kilis	79	225	2021-01-13 23:00:52.613028
2740	Osmaniye	80	225	2021-01-13 23:00:52.63985
2741	Düzce	81	225	2021-01-13 23:00:52.662952
2742	Arima	ARI	226	2021-01-13 23:00:52.690163
2743	Chaguanas	CHA	226	2021-01-13 23:00:52.718582
2744	Couva-Tabaquite-Talparo	CTT	226	2021-01-13 23:00:52.74361
2745	Diego Martin	DMN	226	2021-01-13 23:00:52.765938
2746	Eastern Tobago	ETO	226	2021-01-13 23:00:52.785882
2747	Penal-Debe	PED	226	2021-01-13 23:00:52.809588
2748	Port of Spain	POS	226	2021-01-13 23:00:52.835131
2749	Princes Town	PRT	226	2021-01-13 23:00:52.859519
2750	Point Fortin	PTF	226	2021-01-13 23:00:52.883199
2751	Rio Claro-Mayaro	RCM	226	2021-01-13 23:00:52.913685
2752	San Fernando	SFO	226	2021-01-13 23:00:52.937524
2753	Sangre Grande	SGE	226	2021-01-13 23:00:52.962717
2754	Siparia	SIP	226	2021-01-13 23:00:52.987879
2755	San Juan-Laventille	SJL	226	2021-01-13 23:00:53.016535
2756	Tunapuna-Piarco	TUP	226	2021-01-13 23:00:53.039843
2757	Western Tobago	WTO	226	2021-01-13 23:00:53.066151
2758	Changhua	CHA	228	2021-01-13 23:00:53.111425
2759	Chiay City	CYI	228	2021-01-13 23:00:53.159068
2760	Chiayi	CYQ	228	2021-01-13 23:00:53.223366
2761	Hsinchu	HSQ	228	2021-01-13 23:00:53.319519
2762	Hsinchui City	HSZ	228	2021-01-13 23:00:53.390917
2763	Hualien	HUA	228	2021-01-13 23:00:53.420022
2764	Ilan	ILA	228	2021-01-13 23:00:53.459245
2765	Keelung City	KEE	228	2021-01-13 23:00:53.489794
2766	Kaohsiung City	KHH	228	2021-01-13 23:00:53.526025
2767	Kaohsiung	KHQ	228	2021-01-13 23:00:53.547679
2768	Miaoli	MIA	228	2021-01-13 23:00:53.590326
2769	Nantou	NAN	228	2021-01-13 23:00:53.662927
2770	Penghu	PEN	228	2021-01-13 23:00:53.713202
2771	Pingtung	PIF	228	2021-01-13 23:00:53.780353
2772	Taoyuan	TAO	228	2021-01-13 23:00:53.842956
2773	Tainan City	TNN	228	2021-01-13 23:00:53.87031
2774	Tainan	TNQ	228	2021-01-13 23:00:53.89349
2775	Taipei City	TPE	228	2021-01-13 23:00:53.933783
2776	Taipei	TPQ	228	2021-01-13 23:00:53.98934
2777	Taitung	TTT	228	2021-01-13 23:00:54.022975
2778	Taichung City	TXG	228	2021-01-13 23:00:54.05359
2779	Taichung	TXQ	228	2021-01-13 23:00:54.083567
2780	Yunlin	YUN	228	2021-01-13 23:00:54.145543
2781	Vinnyts'ka Oblast'	05	230	2021-01-13 23:00:54.172505
2782	Volyns'ka Oblast'	07	230	2021-01-13 23:00:54.193148
2783	Luhans'ka Oblast'	09	230	2021-01-13 23:00:54.218518
2784	Dnipropetrovs'ka Oblast'	12	230	2021-01-13 23:00:54.240709
2785	Donets'ka Oblast'	14	230	2021-01-13 23:00:54.262911
2786	Zhytomyrs'ka Oblast'	18	230	2021-01-13 23:00:54.290852
2787	Zakarpats'ka Oblast'	21	230	2021-01-13 23:00:54.319985
2788	Zaporiz'ka Oblast'	23	230	2021-01-13 23:00:54.341306
2789	Ivano-Frankivs'ka Oblast'	26	230	2021-01-13 23:00:54.362397
2790	Kyïvs'ka mis'ka rada	30	230	2021-01-13 23:00:54.387735
2791	Kyïvs'ka Oblast'	32	230	2021-01-13 23:00:54.410289
2792	Kirovohrads'ka Oblast'	35	230	2021-01-13 23:00:54.431917
2793	Sevastopol	40	230	2021-01-13 23:00:54.459675
2794	Respublika Krym	43	230	2021-01-13 23:00:54.486485
2795	L'vivs'ka Oblast'	46	230	2021-01-13 23:00:54.512382
2796	Mykolaïvs'ka Oblast'	48	230	2021-01-13 23:00:54.534848
2797	Odes'ka Oblast'	51	230	2021-01-13 23:00:54.556994
2798	Poltavs'ka Oblast'	53	230	2021-01-13 23:00:54.579574
2799	Rivnens'ka Oblast'	56	230	2021-01-13 23:00:54.594772
2800	Sums 'ka Oblast'	59	230	2021-01-13 23:00:54.617749
2801	Ternopil's'ka Oblast'	61	230	2021-01-13 23:00:54.63256
2802	Kharkivs'ka Oblast'	63	230	2021-01-13 23:00:54.658679
2803	Khersons'ka Oblast'	65	230	2021-01-13 23:00:54.680255
2804	Khmel'nyts'ka Oblast'	68	230	2021-01-13 23:00:54.694808
2805	Cherkas'ka Oblast'	71	230	2021-01-13 23:00:54.714002
2806	Chernihivs'ka Oblast'	74	230	2021-01-13 23:00:54.733039
2807	Chernivets'ka Oblast'	77	230	2021-01-13 23:00:54.768819
2808	Johnston Atoll	67	232	2021-01-13 23:00:54.791536
2809	Midway Islands	71	232	2021-01-13 23:00:54.810106
2810	Navassa Island	76	232	2021-01-13 23:00:54.82776
2811	Wake Island	79	232	2021-01-13 23:00:54.850943
2812	Baker Island	81	232	2021-01-13 23:00:54.866714
2813	Howland Island	84	232	2021-01-13 23:00:54.891714
2814	Jarvis Island	86	232	2021-01-13 23:00:54.915854
2815	Kingman Reef	89	232	2021-01-13 23:00:54.930281
2816	Palmyra Atoll	95	232	2021-01-13 23:00:54.954728
2817	Alaska	AK	233	2021-01-13 23:00:54.978726
2818	Alabama	AL	233	2021-01-13 23:00:55.00169
2819	Arkansas	AR	233	2021-01-13 23:00:55.02322
2820	American Samoa	AS	233	2021-01-13 23:00:55.040064
2821	Arizona	AZ	233	2021-01-13 23:00:55.057595
2822	California	CA	233	2021-01-13 23:00:55.079394
2823	Colorado	CO	233	2021-01-13 23:00:55.092894
2824	Connecticut	CT	233	2021-01-13 23:00:55.121369
2825	District of Columbia	DC	233	2021-01-13 23:00:55.139252
2826	Delaware	DE	233	2021-01-13 23:00:55.157666
2827	Florida	FL	233	2021-01-13 23:00:55.173459
2828	Georgia	GA	233	2021-01-13 23:00:55.194851
2829	Guam	GU	233	2021-01-13 23:00:55.218146
2830	Hawaii	HI	233	2021-01-13 23:00:55.233403
2831	Iowa	IA	233	2021-01-13 23:00:55.256942
2832	Idaho	ID	233	2021-01-13 23:00:55.279707
2833	Illinois	IL	233	2021-01-13 23:00:55.296348
2834	Indiana	IN	233	2021-01-13 23:00:55.320115
2835	Kansas	KS	233	2021-01-13 23:00:55.337489
2836	Kentucky	KY	233	2021-01-13 23:00:55.360273
2837	Louisiana	LA	233	2021-01-13 23:00:55.379754
2838	Massachusetts	MA	233	2021-01-13 23:00:55.39575
2839	Maryland	MD	233	2021-01-13 23:00:55.419336
2840	Maine	ME	233	2021-01-13 23:00:55.433924
2841	Michigan	MI	233	2021-01-13 23:00:55.457562
2842	Minnesota	MN	233	2021-01-13 23:00:55.483786
2843	Missouri	MO	233	2021-01-13 23:00:55.497692
2844	Northern Mariana Islands	MP	233	2021-01-13 23:00:55.520716
2845	Mississippi	MS	233	2021-01-13 23:00:55.53701
2846	Montana	MT	233	2021-01-13 23:00:55.558142
2847	North Carolina	NC	233	2021-01-13 23:00:55.588104
2848	North Dakota	ND	233	2021-01-13 23:00:55.603588
2849	Nebraska	NE	233	2021-01-13 23:00:55.623867
2850	New Hampshire	NH	233	2021-01-13 23:00:55.641892
2851	New Jersey	NJ	233	2021-01-13 23:00:55.660078
2852	New Mexico	NM	233	2021-01-13 23:00:55.681885
2853	Nevada	NV	233	2021-01-13 23:00:55.69649
2854	New York	NY	233	2021-01-13 23:00:55.716211
2855	Ohio	OH	233	2021-01-13 23:00:55.732844
2856	Oklahoma	OK	233	2021-01-13 23:00:55.755456
2857	Oregon	OR	233	2021-01-13 23:00:55.774704
2858	Pennsylvania	PA	233	2021-01-13 23:00:55.794879
2859	Puerto Rico	PR	233	2021-01-13 23:00:55.81695
2860	Rhode Island	RI	233	2021-01-13 23:00:55.837783
2861	South Carolina	SC	233	2021-01-13 23:00:55.858392
2862	South Dakota	SD	233	2021-01-13 23:00:55.876522
2863	Tennessee	TN	233	2021-01-13 23:00:55.894773
2864	Texas	TX	233	2021-01-13 23:00:55.921318
2865	United States Minor Outlying Islands	UM	233	2021-01-13 23:00:55.941269
2866	Utah	UT	233	2021-01-13 23:00:55.959516
2867	Virginia	VA	233	2021-01-13 23:00:55.977473
2868	Virgin Islands	VI	233	2021-01-13 23:00:56.002344
2869	Vermont	VT	233	2021-01-13 23:00:56.040419
2870	Washington	WA	233	2021-01-13 23:00:56.060402
2871	Wisconsin	WI	233	2021-01-13 23:00:56.104948
2872	West Virginia	WV	233	2021-01-13 23:00:56.141153
2873	Wyoming	WY	233	2021-01-13 23:00:56.186271
2874	Armed Forces Americas (except Canada)	AA	233	2021-01-13 23:00:56.221572
2875	Armed Forces Africa, Canada, Europe, Middle East	AE	233	2021-01-13 23:00:56.278608
2876	Armed Forces Pacific	AP	233	2021-01-13 23:00:56.318483
2877	Artigas	AR	234	2021-01-13 23:00:56.358565
2878	Canelones	CA	234	2021-01-13 23:00:56.384627
2879	Cerro Largo	CL	234	2021-01-13 23:00:56.404451
2880	Colonia	CO	234	2021-01-13 23:00:56.428197
2881	Durazno	DU	234	2021-01-13 23:00:56.449472
2882	Florida	FD	234	2021-01-13 23:00:56.474466
2883	Flores	FS	234	2021-01-13 23:00:56.503413
2884	Lavalleja	LA	234	2021-01-13 23:00:56.527386
2885	Maldonado	MA	234	2021-01-13 23:00:56.547346
2886	Montevideo	MO	234	2021-01-13 23:00:56.574685
2887	Paysandú	PA	234	2021-01-13 23:00:56.607972
2888	Río Negro	RN	234	2021-01-13 23:00:56.632955
2889	Rocha	RO	234	2021-01-13 23:00:56.660862
2890	Rivera	RV	234	2021-01-13 23:00:56.680771
2891	Salto	SA	234	2021-01-13 23:00:56.701007
2892	San José	SJ	234	2021-01-13 23:00:56.724024
2893	Soriano	SO	234	2021-01-13 23:00:56.74492
2894	Tacuarembó	TA	234	2021-01-13 23:00:56.762757
2895	Treinta y Tres	TT	234	2021-01-13 23:00:56.78304
2896	Andijon	AN	235	2021-01-13 23:00:56.805917
2897	Buxoro	BU	235	2021-01-13 23:00:56.828514
2898	Farg'ona	FA	235	2021-01-13 23:00:56.854183
2899	Jizzax	JI	235	2021-01-13 23:00:56.876903
2900	Namangan	NG	235	2021-01-13 23:00:56.900802
2901	Navoiy	NW	235	2021-01-13 23:00:56.9253
2902	Qashqadaryo	QA	235	2021-01-13 23:00:56.942843
2903	Qoraqalpog'iston Respublikasi	QR	235	2021-01-13 23:00:56.966336
2904	Samarqand	SA	235	2021-01-13 23:00:57.005957
2905	Sirdaryo	SI	235	2021-01-13 23:00:57.030188
2906	Surxondaryo	SU	235	2021-01-13 23:00:57.053511
2907	Toshkent	TK	235	2021-01-13 23:00:57.073129
2908	Xorazm	XO	235	2021-01-13 23:00:57.126761
2909	Charlotte	01	237	2021-01-13 23:00:57.159889
2910	Saint Andrew	02	237	2021-01-13 23:00:57.214516
2911	Saint David	03	237	2021-01-13 23:00:57.240426
2912	Saint George	04	237	2021-01-13 23:00:57.261392
2913	Saint Patrick	05	237	2021-01-13 23:00:57.294768
2914	Grenadines	06	237	2021-01-13 23:00:57.316254
2915	Distrito Federal	A	238	2021-01-13 23:00:57.34524
2916	Anzoátegui	B	238	2021-01-13 23:00:57.371647
2917	Apure	C	238	2021-01-13 23:00:57.393102
2918	Aragua	D	238	2021-01-13 23:00:57.415675
2919	Barinas	E	238	2021-01-13 23:00:57.439009
2920	Bolívar	F	238	2021-01-13 23:00:57.462993
2921	Carabobo	G	238	2021-01-13 23:00:57.488794
2922	Cojedes	H	238	2021-01-13 23:00:57.512257
2923	Falcón	I	238	2021-01-13 23:00:57.539727
2924	Guárico	J	238	2021-01-13 23:00:57.569936
2925	Lara	K	238	2021-01-13 23:00:57.607873
2926	Mérida	L	238	2021-01-13 23:00:57.634759
2927	Miranda	M	238	2021-01-13 23:00:57.657837
2928	Monagas	N	238	2021-01-13 23:00:57.678267
2929	Nueva Esparta	O	238	2021-01-13 23:00:57.706193
2930	Portuguesa	P	238	2021-01-13 23:00:57.728046
2931	Sucre	R	238	2021-01-13 23:00:57.756567
2932	Táchira	S	238	2021-01-13 23:00:57.777094
2933	Trujillo	T	238	2021-01-13 23:00:57.797078
2934	Yaracuy	U	238	2021-01-13 23:00:57.825352
2935	Zulia	V	238	2021-01-13 23:00:57.845031
2936	Dependencias Federales	W	238	2021-01-13 23:00:57.870171
2937	Vargas	X	238	2021-01-13 23:00:57.894138
2938	Delta Amacuro	Y	238	2021-01-13 23:00:57.9116
2939	Amazonas	Z	238	2021-01-13 23:00:57.936052
2940	Lai Châu	01	241	2021-01-13 23:00:57.967629
2941	Lào Cai	02	241	2021-01-13 23:00:57.987213
2942	Hà Giang	03	241	2021-01-13 23:00:58.025917
2943	Cao Bằng	04	241	2021-01-13 23:00:58.04599
2944	Sơn La	05	241	2021-01-13 23:00:58.07241
2945	Yên Bái	06	241	2021-01-13 23:00:58.098842
2946	Tuyên Quang	07	241	2021-01-13 23:00:58.122915
2947	Lạng Sơn	09	241	2021-01-13 23:00:58.145705
2948	Quảng Ninh	13	241	2021-01-13 23:00:58.186308
2949	Hoà Bình	14	241	2021-01-13 23:00:58.209329
2950	Hà Tây	15	241	2021-01-13 23:00:58.237358
2951	Ninh Bình	18	241	2021-01-13 23:00:58.26346
2952	Thái Bình	20	241	2021-01-13 23:00:58.294826
2953	Thanh Hóa	21	241	2021-01-13 23:00:58.317215
2954	Nghệ An	22	241	2021-01-13 23:00:58.34032
2955	Hà Tỉnh	23	241	2021-01-13 23:00:58.366893
2956	Quảng Bình	24	241	2021-01-13 23:00:58.384407
2957	Quảng Trị	25	241	2021-01-13 23:00:58.409164
2958	Thừa Thiên-Huế	26	241	2021-01-13 23:00:58.434405
2959	Quảng Nam	27	241	2021-01-13 23:00:58.47268
2960	Kon Tum	28	241	2021-01-13 23:00:58.496091
2961	Quảng Ngãi	29	241	2021-01-13 23:00:58.517371
2962	Gia Lai	30	241	2021-01-13 23:00:58.544302
2963	Bình Định	31	241	2021-01-13 23:00:58.572077
2964	Phú Yên	32	241	2021-01-13 23:00:58.593143
2965	Đắc Lắk	33	241	2021-01-13 23:00:58.619717
2966	Khánh Hòa	34	241	2021-01-13 23:00:58.649363
2967	Lâm Đồng	35	241	2021-01-13 23:00:58.673535
2968	Ninh Thuận	36	241	2021-01-13 23:00:58.697687
2969	Tây Ninh	37	241	2021-01-13 23:00:58.718238
2970	Đồng Nai	39	241	2021-01-13 23:00:58.743218
2971	Bình Thuận	40	241	2021-01-13 23:00:58.771863
2972	Long An	41	241	2021-01-13 23:00:58.789754
2973	Bà Rịa-Vũng Tàu	43	241	2021-01-13 23:00:58.811884
2974	An Giang	44	241	2021-01-13 23:00:58.846083
2975	Đồng Tháp	45	241	2021-01-13 23:00:58.875785
2976	Tiền Giang	46	241	2021-01-13 23:00:58.89922
2977	Kiên Giang	47	241	2021-01-13 23:00:58.921903
2978	Vĩnh Long	49	241	2021-01-13 23:00:58.94597
2979	Bến Tre	50	241	2021-01-13 23:00:58.97433
2980	Trà Vinh	51	241	2021-01-13 23:00:58.998887
2981	Sóc Trăng	52	241	2021-01-13 23:00:59.021513
2982	Bắc Kạn	53	241	2021-01-13 23:00:59.051199
2983	Bắc Giang	54	241	2021-01-13 23:00:59.076981
2984	Bạc Liêu	55	241	2021-01-13 23:00:59.098365
2985	Bắc Ninh	56	241	2021-01-13 23:00:59.143918
2986	Bình Dương	57	241	2021-01-13 23:00:59.181412
2987	Bình Phước	58	241	2021-01-13 23:00:59.248598
2988	Cà Mau	59	241	2021-01-13 23:00:59.300901
2989	Hải Duong	61	241	2021-01-13 23:00:59.370553
2990	Hà Nam	63	241	2021-01-13 23:00:59.415285
2991	Hưng Yên	66	241	2021-01-13 23:00:59.474189
2992	Nam Định	67	241	2021-01-13 23:00:59.520531
2993	Phú Thọ	68	241	2021-01-13 23:00:59.603727
2994	Thái Nguyên	69	241	2021-01-13 23:00:59.644854
2995	Vĩnh Phúc	70	241	2021-01-13 23:00:59.668217
2996	Điện Biên	71	241	2021-01-13 23:00:59.689993
2997	Đắk Nông	72	241	2021-01-13 23:00:59.712144
2998	Hậu Giang	73	241	2021-01-13 23:00:59.740172
2999	Cần Thơ	CT	241	2021-01-13 23:00:59.772418
3000	Đà Nẵng	DN	241	2021-01-13 23:00:59.793444
3001	Hà Nội	HN	241	2021-01-13 23:00:59.820117
3002	Hải Phòng	HP	241	2021-01-13 23:00:59.843149
3003	Hồ Chí Minh [Sài Gòn]	SG	241	2021-01-13 23:00:59.866915
3004	A'ana	AA	244	2021-01-13 23:00:59.905897
3005	Aiga-i-le-Tai	AL	244	2021-01-13 23:00:59.943517
3006	Atua	AT	244	2021-01-13 23:00:59.96579
3007	Fa'asaleleaga	FA	244	2021-01-13 23:01:00.018517
3008	Gaga'emauga	GE	244	2021-01-13 23:01:00.043902
3009	Gagaifomauga	GI	244	2021-01-13 23:01:00.158578
3010	Palauli	PA	244	2021-01-13 23:01:00.228969
3011	Satupa'itea	SA	244	2021-01-13 23:01:00.27816
3012	Tuamasaga	TU	244	2021-01-13 23:01:00.304864
3013	Va'a-o-Fonoti	VF	244	2021-01-13 23:01:00.32191
3014	Vaisigano	VS	244	2021-01-13 23:01:00.34383
3015	Eastern Cape	EC	247	2021-01-13 23:01:00.371012
3016	Free State	FS	247	2021-01-13 23:01:00.387671
3017	Gauteng	GT	247	2021-01-13 23:01:00.412152
3018	Limpopo	LP	247	2021-01-13 23:01:00.459989
3019	Mpumalanga	MP	247	2021-01-13 23:01:00.517592
3020	Northern Cape	NC	247	2021-01-13 23:01:00.586907
3021	Kwazulu-Natal	NL	247	2021-01-13 23:01:00.609416
3022	North-West (South Africa)	NW	247	2021-01-13 23:01:00.632379
3023	Western Cape	WC	247	2021-01-13 23:01:00.676203
3024	Western	01	248	2021-01-13 23:01:00.701168
3025	Central	02	248	2021-01-13 23:01:00.719792
3026	Eastern	03	248	2021-01-13 23:01:00.74498
3027	Luapula	04	248	2021-01-13 23:01:00.764253
3028	Northern	05	248	2021-01-13 23:01:00.784864
3029	North-Western	06	248	2021-01-13 23:01:00.807393
3030	Southern (Zambia)	07	248	2021-01-13 23:01:00.824849
3031	Copperbelt	08	248	2021-01-13 23:01:00.846113
3032	Lusaka	09	248	2021-01-13 23:01:00.873329
3033	Saint George	03	4	2021-01-13 23:01:00.888651
3034	Saint John	04	4	2021-01-13 23:01:00.91005
3035	Saint Mary	05	4	2021-01-13 23:01:00.926878
3036	Saint Paul	06	4	2021-01-13 23:01:00.949062
3037	Saint Peter	07	4	2021-01-13 23:01:00.973071
3038	Saint Philip	08	4	2021-01-13 23:01:00.989246
3039	Barbuda	10	4	2021-01-13 23:01:01.011135
3040	Redonda	11	4	2021-01-13 23:01:01.031284
3041	Bengo	BGO	8	2021-01-13 23:01:01.050992
3042	Benguela	BGU	8	2021-01-13 23:01:01.071351
3043	Bié	BIE	8	2021-01-13 23:01:01.094855
3044	Cabinda	CAB	8	2021-01-13 23:01:01.121216
3045	Cuando-Cubango	CCU	8	2021-01-13 23:01:01.139647
3046	Cunene	CNN	8	2021-01-13 23:01:01.15695
3047	Cuanza Norte	CNO	8	2021-01-13 23:01:01.177831
3048	Cuanza Sul	CUS	8	2021-01-13 23:01:01.193709
3049	Huambo	HUA	8	2021-01-13 23:01:01.211809
3050	Huíla	HUI	8	2021-01-13 23:01:01.230776
3051	Lunda Norte	LNO	8	2021-01-13 23:01:01.251764
3052	Lunda Sul	LSU	8	2021-01-13 23:01:01.271964
3053	Luanda	LUA	8	2021-01-13 23:01:01.290031
3054	Malange	MAL	8	2021-01-13 23:01:01.311087
3055	Moxico	MOX	8	2021-01-13 23:01:01.32867
3056	Namibe	NAM	8	2021-01-13 23:01:01.347269
3057	Uíge	UIG	8	2021-01-13 23:01:01.366304
3058	Zaire	ZAI	8	2021-01-13 23:01:01.3855
3059	Boucle du Mouhoun	01	21	2021-01-13 23:01:01.404576
3060	Cascades	02	21	2021-01-13 23:01:01.424105
3061	Centre	03	21	2021-01-13 23:01:01.4487
3062	Centre-Est	04	21	2021-01-13 23:01:01.4614
3063	Centre-Nord	05	21	2021-01-13 23:01:01.479277
3064	Centre-Ouest	06	21	2021-01-13 23:01:01.496357
3065	Centre-Sud	07	21	2021-01-13 23:01:01.519536
3066	Est	08	21	2021-01-13 23:01:01.537209
3067	Hauts-Bassins	09	21	2021-01-13 23:01:01.555737
3068	Nord	10	21	2021-01-13 23:01:01.576542
3069	Plateau-Central	11	21	2021-01-13 23:01:01.592961
3070	Sahel	12	21	2021-01-13 23:01:01.61004
3071	Sud-Ouest	13	21	2021-01-13 23:01:01.627294
3072	Bubanza	BB	24	2021-01-13 23:01:01.651785
3073	Bujumbura Rural	BL	24	2021-01-13 23:01:01.67271
3074	Bujumbura Mairie	BM	24	2021-01-13 23:01:01.694908
3075	Bururi	BR	24	2021-01-13 23:01:01.727885
3076	Cankuzo	CA	24	2021-01-13 23:01:01.754832
3077	Cibitoke	CI	24	2021-01-13 23:01:01.788118
3078	Gitega	GI	24	2021-01-13 23:01:01.816191
3079	Kirundo	KI	24	2021-01-13 23:01:01.835009
3080	Karuzi	KR	24	2021-01-13 23:01:01.856163
3081	Kayanza	KY	24	2021-01-13 23:01:01.879205
3082	Makamba	MA	24	2021-01-13 23:01:01.894012
3083	Muramvya	MU	24	2021-01-13 23:01:01.911093
3084	Mwaro	MW	24	2021-01-13 23:01:01.942647
3085	Ngozi	NG	24	2021-01-13 23:01:01.958101
3086	Rutana	RT	24	2021-01-13 23:01:01.990532
3087	Ruyigi	RY	24	2021-01-13 23:01:02.010237
3088	Atakora	AK	25	2021-01-13 23:01:02.027741
3089	Alibori	AL	25	2021-01-13 23:01:02.046905
3090	Atlantique	AQ	25	2021-01-13 23:01:02.07187
3091	Borgou	BO	25	2021-01-13 23:01:02.089719
3092	Collines	CO	25	2021-01-13 23:01:02.113209
3093	Donga	DO	25	2021-01-13 23:01:02.145279
3094	Kouffo	KO	25	2021-01-13 23:01:02.173042
3095	Littoral	LI	25	2021-01-13 23:01:02.237582
3096	Mono	MO	25	2021-01-13 23:01:02.259707
3097	Ouémé	OU	25	2021-01-13 23:01:02.295741
3098	Plateau	PL	25	2021-01-13 23:01:02.320985
3099	Zou	ZO	25	2021-01-13 23:01:02.380308
3100	Devenshire	DEV	27	2021-01-13 23:01:02.42926
3101	Hamilton	HAM	27	2021-01-13 23:01:02.498089
3102	Paget	PAG	27	2021-01-13 23:01:02.555793
3103	Pembroke	PEM	27	2021-01-13 23:01:02.611695
3104	Saint George's	SGE	27	2021-01-13 23:01:02.633092
3105	Sandys	SAN	27	2021-01-13 23:01:02.979553
3106	Smiths	SMI	27	2021-01-13 23:01:02.997921
3107	Southampton	SOU	27	2021-01-13 23:01:03.022659
3108	Warwick	WAR	27	2021-01-13 23:01:03.038665
3109	El Beni	B	29	2021-01-13 23:01:03.058352
3110	Cochabamba	C	29	2021-01-13 23:01:03.077557
3111	Chuquisaca	H	29	2021-01-13 23:01:03.096491
3112	La Paz	L	29	2021-01-13 23:01:03.118989
3113	Pando	N	29	2021-01-13 23:01:03.134202
3114	Oruro	O	29	2021-01-13 23:01:03.15417
3115	Potosí	P	29	2021-01-13 23:01:03.170321
3116	Santa Cruz	S	29	2021-01-13 23:01:03.193142
3117	Tarija	T	29	2021-01-13 23:01:03.212486
3118	Acklins	AK	32	2021-01-13 23:01:03.231748
3119	Bimini	BI	32	2021-01-13 23:01:03.254062
3120	Black Point	BP	32	2021-01-13 23:01:03.270917
3121	Berry Islands	BY	32	2021-01-13 23:01:03.296391
3122	Central Eleuthera	CE	32	2021-01-13 23:01:03.321289
3123	Cat Island	CI	32	2021-01-13 23:01:03.336172
3124	Crooked Island and Long Cay	CK	32	2021-01-13 23:01:03.363738
3125	Central Abaco	CO	32	2021-01-13 23:01:03.386422
3126	Central Andros	CS	32	2021-01-13 23:01:03.402826
3127	East Grand Bahama	EG	32	2021-01-13 23:01:03.423876
3128	Exuma	EX	32	2021-01-13 23:01:03.439444
3129	City of Freeport	FP	32	2021-01-13 23:01:03.46018
3130	Grand Cay	GC	32	2021-01-13 23:01:03.482072
3131	Harbour Island	HI	32	2021-01-13 23:01:03.500679
3132	Hope Town	HT	32	2021-01-13 23:01:03.521827
3133	Inagua	IN	32	2021-01-13 23:01:03.537956
3134	Long Island	LI	32	2021-01-13 23:01:03.557764
3135	Mangrove Cay	MC	32	2021-01-13 23:01:03.578713
3136	Mayaguana	MG	32	2021-01-13 23:01:03.598269
3137	Moore's Island	MI	32	2021-01-13 23:01:03.619948
3138	North Eleuthera	NE	32	2021-01-13 23:01:03.634071
3139	North Abaco	NO	32	2021-01-13 23:01:03.654868
3140	North Andros	NS	32	2021-01-13 23:01:03.668975
3141	Rum Cay	RC	32	2021-01-13 23:01:03.68942
3142	Ragged Island	RI	32	2021-01-13 23:01:03.709808
3143	South Andros	SA	32	2021-01-13 23:01:03.731509
3144	South Eleuthera	SE	32	2021-01-13 23:01:03.756331
3145	South Abaco	SO	32	2021-01-13 23:01:03.776502
3146	San Salvador	SS	32	2021-01-13 23:01:03.799913
3147	Spanish Wells	SW	32	2021-01-13 23:01:03.826405
3148	West Grand Bahama	WG	32	2021-01-13 23:01:03.851604
3149	Central	CE	35	2021-01-13 23:01:03.871603
3150	Ghanzi	GH	35	2021-01-13 23:01:03.896099
3151	Kgalagadi	KG	35	2021-01-13 23:01:03.924318
3152	Kgatleng	KL	35	2021-01-13 23:01:03.950588
3153	Kweneng	KW	35	2021-01-13 23:01:03.96818
3154	North-East	NE	35	2021-01-13 23:01:03.992612
3155	North-West	NW	35	2021-01-13 23:01:04.021216
3156	South-East	SE	35	2021-01-13 23:01:04.051316
3157	Southern	SO	35	2021-01-13 23:01:04.072249
3158	Belize	BZ	37	2021-01-13 23:01:04.097741
3159	Cayo	CY	37	2021-01-13 23:01:04.123069
3160	Corozal	CZL	37	2021-01-13 23:01:04.193319
3161	Orange Walk	OW	37	2021-01-13 23:01:04.215496
3162	Stann Creek	SC	37	2021-01-13 23:01:04.238309
3163	Toledo	TOL	37	2021-01-13 23:01:04.269738
3164	Bas-Congo	BC	40	2021-01-13 23:01:04.300866
3165	Bandundu	BN	40	2021-01-13 23:01:04.333173
3166	Équateur	EQ	40	2021-01-13 23:01:04.357458
3167	Katanga	KA	40	2021-01-13 23:01:04.374331
3168	Kasai-Oriental	KE	40	2021-01-13 23:01:04.393662
3169	Kinshasa	KN	40	2021-01-13 23:01:04.431
3170	Kasai-Occidental	KW	40	2021-01-13 23:01:04.45304
3171	Maniema	MA	40	2021-01-13 23:01:04.473786
3172	Nord-Kivu	NK	40	2021-01-13 23:01:04.499412
3173	Orientale	OR	40	2021-01-13 23:01:04.521338
3174	Sud-Kivu	SK	40	2021-01-13 23:01:04.546789
3175	Ouham	AC	41	2021-01-13 23:01:04.571845
3176	Bamingui-Bangoran	BB	41	2021-01-13 23:01:04.593435
3177	Bangui	BGF	41	2021-01-13 23:01:04.621387
3178	Basse-Kotto	BK	41	2021-01-13 23:01:04.639724
3179	Haute-Kotto	HK	41	2021-01-13 23:01:04.671554
3180	Haut-Mbomou	HM	41	2021-01-13 23:01:04.696669
3181	Haute-Sangha / Mambéré-Kadéï	HS	41	2021-01-13 23:01:04.716918
3182	Gribingui	KB	41	2021-01-13 23:01:04.744453
3183	Kémo-Gribingui	KG	41	2021-01-13 23:01:04.77252
3184	Lobaye	LB	41	2021-01-13 23:01:04.808515
3185	Mbomou	MB	41	2021-01-13 23:01:04.834226
3186	Ombella-M'poko	MP	41	2021-01-13 23:01:04.857442
3187	Nana-Mambéré	NM	41	2021-01-13 23:01:04.877638
3188	Ouham-Pendé	OP	41	2021-01-13 23:01:04.909957
3189	Sangha	SE	41	2021-01-13 23:01:04.93636
3190	Ouaka	UK	41	2021-01-13 23:01:04.962672
3191	Vakaga	VK	41	2021-01-13 23:01:04.988483
3192	Bouenza	11	42	2021-01-13 23:01:05.015795
3193	Pool	12	42	2021-01-13 23:01:05.039695
3194	Sangha	13	42	2021-01-13 23:01:05.067902
3195	Plateaux	14	42	2021-01-13 23:01:05.092397
3196	Cuvette-Ouest	15	42	2021-01-13 23:01:05.119856
3197	Lékoumou	2	42	2021-01-13 23:01:05.14397
3198	Kouilou	5	42	2021-01-13 23:01:05.173088
3199	Likouala	7	42	2021-01-13 23:01:05.200224
3200	Cuvette	8	42	2021-01-13 23:01:05.227553
3201	Niari	9	42	2021-01-13 23:01:05.255849
3202	Brazzaville	BZV	42	2021-01-13 23:01:05.287701
3203	Lagunes (Région des)	01	44	2021-01-13 23:01:05.325919
3204	Haut-Sassandra (Région du)	02	44	2021-01-13 23:01:05.350809
3205	Savanes (Région des)	03	44	2021-01-13 23:01:05.376774
3206	Vallée du Bandama (Région de la)	04	44	2021-01-13 23:01:05.406756
3207	Moyen-Comoé (Région du)	05	44	2021-01-13 23:01:05.43225
3208	18 Montagnes (Région des)	06	44	2021-01-13 23:01:05.452804
3209	Lacs (Région des)	07	44	2021-01-13 23:01:05.478375
3210	Zanzan (Région du)	08	44	2021-01-13 23:01:05.505741
3211	Bas-Sassandra (Région du)	09	44	2021-01-13 23:01:05.529498
3212	Denguélé (Région du)	10	44	2021-01-13 23:01:05.554153
3213	Nzi-Comoé (Région)	11	44	2021-01-13 23:01:05.579967
3214	Marahoué (Région de la)	12	44	2021-01-13 23:01:05.605284
3215	Sud-Comoé (Région du)	13	44	2021-01-13 23:01:05.632233
3216	Worodouqou (Région du)	14	44	2021-01-13 23:01:05.656068
3217	Sud-Bandama (Région du)	15	44	2021-01-13 23:01:05.680201
3218	Agnébi (Région de l')	16	44	2021-01-13 23:01:05.704681
3219	Bafing (Région du)	17	44	2021-01-13 23:01:05.722387
3220	Fromager (Région du)	18	44	2021-01-13 23:01:05.749943
3221	Moyen-Cavally (Région du)	19	44	2021-01-13 23:01:05.773981
3222	Ad Dawhah	DA	187	2021-01-13 23:01:05.802673
3223	Al Khawr wa adh Dhakhīrah	KH	187	2021-01-13 23:01:05.819935
3224	Ash Shamal	MS	187	2021-01-13 23:01:05.839964
3225	Ar Rayyan	RA	187	2021-01-13 23:01:05.870487
3226	Umm Salal	US	187	2021-01-13 23:01:05.891747
3227	Al Wakrah	WA	187	2021-01-13 23:01:05.913603
3228	Az̧ Z̧a‘āyin	ZA	187	2021-01-13 23:01:05.938649
3229	Adamaoua	AD	47	2021-01-13 23:01:05.966792
3230	Centre	CE	47	2021-01-13 23:01:05.985045
3231	Far North	EN	47	2021-01-13 23:01:06.00851
3232	East	ES	47	2021-01-13 23:01:06.032914
3233	Littoral	LT	47	2021-01-13 23:01:06.054094
3234	North	NO	47	2021-01-13 23:01:06.079109
3235	North-West (Cameroon)	NW	47	2021-01-13 23:01:06.109772
3236	West	OU	47	2021-01-13 23:01:06.154972
3237	South	SU	47	2021-01-13 23:01:06.191062
3238	South-West	SW	47	2021-01-13 23:01:06.272567
3239	Arta	AR	58	2021-01-13 23:01:06.340047
3240	Ali Sabieh	AS	58	2021-01-13 23:01:06.387675
3241	Dikhil	DI	58	2021-01-13 23:01:06.434668
3242	Djibouti	DJ	58	2021-01-13 23:01:06.493748
3243	Obock	OB	58	2021-01-13 23:01:06.554139
3244	Tadjourah	TA	58	2021-01-13 23:01:06.617067
3245	Saint Peter	01	60	2021-01-13 23:01:06.676612
3246	Saint Andrew	02	60	2021-01-13 23:01:06.703881
3247	Saint David	03	60	2021-01-13 23:01:06.729969
3248	Saint George	04	60	2021-01-13 23:01:06.758536
3249	Saint John	05	60	2021-01-13 23:01:06.785255
3250	Saint Joseph	06	60	2021-01-13 23:01:06.807364
3251	Saint Luke	07	60	2021-01-13 23:01:06.832762
3252	Saint Mark	08	60	2021-01-13 23:01:06.85957
3253	Saint Patrick	09	60	2021-01-13 23:01:06.888641
3254	Saint Paul	10	60	2021-01-13 23:01:06.915942
3255	Ansabā	AN	67	2021-01-13 23:01:06.947042
3256	Janūbī al Baḩrī al Aḩmar	DK	67	2021-01-13 23:01:07.006848
3257	Al Janūbī	DU	67	2021-01-13 23:01:07.031588
3258	Qāsh-Barkah	GB	67	2021-01-13 23:01:07.055931
3259	Al Awsaţ	MA	67	2021-01-13 23:01:07.084155
3260	Shimālī al Baḩrī al Aḩmar	SK	67	2021-01-13 23:01:07.11461
3261	Central	C	71	2021-01-13 23:01:07.146776
3262	Eastern	E	71	2021-01-13 23:01:07.172322
3263	Northern	N	71	2021-01-13 23:01:07.190771
3264	Rotuma	R	71	2021-01-13 23:01:07.214745
3265	Western	W	71	2021-01-13 23:01:07.238837
3266	Saint Andrew	01	78	2021-01-13 23:01:07.259074
3267	Saint David	02	78	2021-01-13 23:01:07.284403
3268	Saint George	03	78	2021-01-13 23:01:07.305907
3269	Saint John	04	78	2021-01-13 23:01:07.324443
3270	Saint Mark	05	78	2021-01-13 23:01:07.347514
3271	Saint Patrick	06	78	2021-01-13 23:01:07.368401
3272	Southern Grenadine Islands	10	78	2021-01-13 23:01:07.390937
3273	Greater Accra	AA	82	2021-01-13 23:01:07.410686
3274	Ashanti	AH	82	2021-01-13 23:01:07.432595
3275	Brong-Ahafo	BA	82	2021-01-13 23:01:07.456051
3276	Central	CP	82	2021-01-13 23:01:07.471151
3277	Eastern	EP	82	2021-01-13 23:01:07.488547
3278	Northern	NP	82	2021-01-13 23:01:07.508538
3279	Volta	TV	82	2021-01-13 23:01:07.532318
3280	Upper East	UE	82	2021-01-13 23:01:07.547747
3281	Upper West	UW	82	2021-01-13 23:01:07.566729
3282	Western	WP	82	2021-01-13 23:01:07.589479
3283	Banjul	B	85	2021-01-13 23:01:07.619828
3284	Lower River	L	85	2021-01-13 23:01:07.637938
3285	Central River	M	85	2021-01-13 23:01:07.657814
3286	North Bank	N	85	2021-01-13 23:01:07.678442
3287	Upper River	U	85	2021-01-13 23:01:07.706204
3288	Western	W	85	2021-01-13 23:01:07.72701
3289	Boké	B	86	2021-01-13 23:01:07.756878
3290	Conakry	C	86	2021-01-13 23:01:07.775301
3291	Kindia	D	86	2021-01-13 23:01:07.796131
3292	Faranah	F	86	2021-01-13 23:01:07.815727
3293	Kankan	K	86	2021-01-13 23:01:07.837199
3294	Labé	L	86	2021-01-13 23:01:07.860054
3295	Mamou	M	86	2021-01-13 23:01:07.880709
3296	Nzérékoré	N	86	2021-01-13 23:01:07.903332
3297	Región Continental	C	88	2021-01-13 23:01:07.925111
3298	Región Insular	I	88	2021-01-13 23:01:07.941744
3299	Barima-Waini	BA	94	2021-01-13 23:01:07.971298
3300	Cuyuni-Mazaruni	CU	94	2021-01-13 23:01:07.99103
3301	Demerara-Mahaica	DE	94	2021-01-13 23:01:08.009299
3302	East Berbice-Corentyne	EB	94	2021-01-13 23:01:08.028239
3303	Essequibo Islands-West Demerara	ES	94	2021-01-13 23:01:08.07236
3304	Mahaica-Berbice	MA	94	2021-01-13 23:01:08.096214
3305	Pomeroon-Supenaam	PM	94	2021-01-13 23:01:08.116189
3306	Potaro-Siparuni	PT	94	2021-01-13 23:01:08.137852
3307	Upper Demerara-Berbice	UD	94	2021-01-13 23:01:08.155975
3308	Upper Takutu-Upper Essequibo	UT	94	2021-01-13 23:01:08.176752
3309	Connacht	C	102	2021-01-13 23:01:08.204746
3310	Leinster	L	102	2021-01-13 23:01:08.227259
3311	Munster	M	102	2021-01-13 23:01:08.24937
3312	Ulster	U	102	2021-01-13 23:01:08.317368
3313	Gilbert Islands	G	118	2021-01-13 23:01:08.34486
3314	Line Islands	L	118	2021-01-13 23:01:08.368744
3315	Phoenix Islands	P	118	2021-01-13 23:01:08.383771
3316	Andjouân (Anjwān)	A	119	2021-01-13 23:01:08.413967
3317	Andjazîdja (Anjazījah)	G	119	2021-01-13 23:01:08.440696
3318	Moûhîlî (Mūhīlī)	M	119	2021-01-13 23:01:08.457174
3319	Saint Kitts	K	120	2021-01-13 23:01:08.480503
3320	Nevis	N	120	2021-01-13 23:01:08.501132
3321	P’yŏngyang	01	121	2021-01-13 23:01:08.517868
3322	P’yŏngan-namdo	02	121	2021-01-13 23:01:08.53854
3323	P’yŏngan-bukto	03	121	2021-01-13 23:01:08.555747
3324	Chagang-do	04	121	2021-01-13 23:01:08.576083
3325	Hwanghae-namdo	05	121	2021-01-13 23:01:08.596917
3326	Hwanghae-bukto	06	121	2021-01-13 23:01:08.616037
3327	Kangwŏn-do	07	121	2021-01-13 23:01:08.638039
3328	Hamgyŏng-namdo	08	121	2021-01-13 23:01:08.658443
3329	Hamgyŏng-bukto	09	121	2021-01-13 23:01:08.680877
3330	Yanggang-do	10	121	2021-01-13 23:01:08.703521
3331	Nasŏn (Najin-Sŏnbong)	13	121	2021-01-13 23:01:08.719383
3332	Banghāzī	BA	136	2021-01-13 23:01:08.744183
3333	Al Buţnān	BU	136	2021-01-13 23:01:08.768457
3334	Darnah	DR	136	2021-01-13 23:01:08.787993
3335	Ghāt	GT	136	2021-01-13 23:01:08.809463
3336	Al Jabal al Akhḑar	JA	136	2021-01-13 23:01:08.83049
3337	Jaghbūb	JB	136	2021-01-13 23:01:08.850679
3338	Al Jabal al Gharbī	JG	136	2021-01-13 23:01:08.872286
3339	Al Jifārah	JI	136	2021-01-13 23:01:08.887397
3340	Al Jufrah	JU	136	2021-01-13 23:01:08.911243
3341	Al Kufrah	KF	136	2021-01-13 23:01:08.928389
3342	Al Marqab	MB	136	2021-01-13 23:01:08.94583
3343	Mişrātah	MI	136	2021-01-13 23:01:08.970871
3344	Al Marj	MJ	136	2021-01-13 23:01:08.986626
3345	Murzuq	MQ	136	2021-01-13 23:01:09.019352
3346	Nālūt	NL	136	2021-01-13 23:01:09.040639
3347	An Nuqaţ al Khams	NQ	136	2021-01-13 23:01:09.056512
3348	Sabhā	SB	136	2021-01-13 23:01:09.077986
3349	Surt	SR	136	2021-01-13 23:01:09.09257
3350	Ţarābulus	TB	136	2021-01-13 23:01:09.118553
3351	Al Wāḩāt	WA	136	2021-01-13 23:01:09.150966
3352	Wādī al Ḩayāt	WD	136	2021-01-13 23:01:09.173409
3353	Wādī ash Shāţiʾ	WS	136	2021-01-13 23:01:09.204601
3354	Az Zāwiyah	ZA	136	2021-01-13 23:01:09.225794
3355	Kayes	1	145	2021-01-13 23:01:09.269196
3356	Koulikoro	2	145	2021-01-13 23:01:09.294278
3357	Sikasso	3	145	2021-01-13 23:01:09.316174
3358	Ségou	4	145	2021-01-13 23:01:09.342005
3359	Mopti	5	145	2021-01-13 23:01:09.369477
3360	Tombouctou	6	145	2021-01-13 23:01:09.396466
3361	Gao	7	145	2021-01-13 23:01:09.420644
3362	Kidal	8	145	2021-01-13 23:01:09.447726
3363	Bamako	BK0	145	2021-01-13 23:01:09.468304
3364	Hodh ech Chargui	01	151	2021-01-13 23:01:09.490202
3365	Hodh el Charbi	02	151	2021-01-13 23:01:09.516113
3366	Assaba	03	151	2021-01-13 23:01:09.539351
3367	Gorgol	04	151	2021-01-13 23:01:09.575386
3368	Brakna	05	151	2021-01-13 23:01:09.602475
3369	Trarza	06	151	2021-01-13 23:01:09.633486
3370	Adrar	07	151	2021-01-13 23:01:09.655651
3371	Dakhlet Nouadhibou	08	151	2021-01-13 23:01:09.675315
3372	Tagant	09	151	2021-01-13 23:01:09.69787
3373	Guidimaka	10	151	2021-01-13 23:01:09.720349
3374	Tiris Zemmour	11	151	2021-01-13 23:01:09.761499
3375	Inchiri	12	151	2021-01-13 23:01:09.788388
3376	Nouakchott	NKC	151	2021-01-13 23:01:09.82042
3377	Central Region	C	156	2021-01-13 23:01:09.841678
3378	Northern Region	N	156	2021-01-13 23:01:09.863619
3379	Southern Region	S	156	2021-01-13 23:01:09.888435
3380	Aiwo	01	169	2021-01-13 23:01:09.935379
3381	Anabar	02	169	2021-01-13 23:01:09.961401
3382	Anetan	03	169	2021-01-13 23:01:09.988498
3383	Anibare	04	169	2021-01-13 23:01:10.00766
3384	Baiti	05	169	2021-01-13 23:01:10.030315
3385	Boe	06	169	2021-01-13 23:01:10.054821
3386	Buada	07	169	2021-01-13 23:01:10.072352
3387	Denigomodu	08	169	2021-01-13 23:01:10.096762
3388	Ewa	09	169	2021-01-13 23:01:10.130458
3389	Ijuw	10	169	2021-01-13 23:01:10.163884
3390	Meneng	11	169	2021-01-13 23:01:10.257164
3391	Nibok	12	169	2021-01-13 23:01:10.304383
3392	Uaboe	13	169	2021-01-13 23:01:10.349333
3393	Yaren	14	169	2021-01-13 23:01:10.383078
3394	Bocas del Toro	1	173	2021-01-13 23:01:10.447603
3395	Coclé	2	173	2021-01-13 23:01:10.4953
3396	Colón	3	173	2021-01-13 23:01:10.52035
3397	Chiriquí	4	173	2021-01-13 23:01:10.539202
3398	Darién	5	173	2021-01-13 23:01:10.558193
3399	Herrera	6	173	2021-01-13 23:01:10.578848
3400	Los Santos	7	173	2021-01-13 23:01:10.607223
3401	Panamá	8	173	2021-01-13 23:01:10.634991
3402	Veraguas	9	173	2021-01-13 23:01:10.659356
3403	Emberá	EM	173	2021-01-13 23:01:10.685292
3404	Kuna Yala	KY	173	2021-01-13 23:01:10.730882
3405	Ngöbe-Buglé	NB	173	2021-01-13 23:01:10.75676
3406	Ville de Kigali	01	192	2021-01-13 23:01:10.785886
3407	Est	02	192	2021-01-13 23:01:10.807567
3408	Nord	03	192	2021-01-13 23:01:10.834133
3409	Ouest	04	192	2021-01-13 23:01:10.862449
3410	Sud	05	192	2021-01-13 23:01:10.891501
3411	Central	CE	194	2021-01-13 23:01:10.920729
3412	Choiseul	CH	194	2021-01-13 23:01:10.947249
3413	Capital Territory (Honiara)	CT	194	2021-01-13 23:01:10.975193
3414	Guadalcanal	GU	194	2021-01-13 23:01:11.002461
3415	Isabel	IS	194	2021-01-13 23:01:11.025702
3416	Makira	MK	194	2021-01-13 23:01:11.047304
3417	Malaita	ML	194	2021-01-13 23:01:11.073938
3418	Rennell and Bellona	RB	194	2021-01-13 23:01:11.11088
3419	Temotu	TE	194	2021-01-13 23:01:11.136303
3420	Western	WE	194	2021-01-13 23:01:11.161992
3421	Anse aux Pins	01	195	2021-01-13 23:01:11.195413
3422	Anse Boileau	02	195	2021-01-13 23:01:11.219465
3423	Anse Etoile	03	195	2021-01-13 23:01:11.240164
3424	Anse Louis	04	195	2021-01-13 23:01:11.272633
3425	Anse Royale	05	195	2021-01-13 23:01:11.307354
3426	Baie Lazare	06	195	2021-01-13 23:01:11.336826
3427	Baie Sainte Anne	07	195	2021-01-13 23:01:11.365483
3428	Beau Vallon	08	195	2021-01-13 23:01:11.396859
3429	Bel Air	09	195	2021-01-13 23:01:11.418869
3430	Bel Ombre	10	195	2021-01-13 23:01:11.447244
3431	Cascade	11	195	2021-01-13 23:01:11.474251
3432	Glacis	12	195	2021-01-13 23:01:11.502162
3433	Grand Anse Mahe	13	195	2021-01-13 23:01:11.529137
3434	Grand Anse Praslin	14	195	2021-01-13 23:01:11.550915
3435	La Digue	15	195	2021-01-13 23:01:11.578795
3436	English River	16	195	2021-01-13 23:01:11.605076
3437	Mont Buxton	17	195	2021-01-13 23:01:11.630903
3438	Mont Fleuri	18	195	2021-01-13 23:01:11.652539
3439	Plaisance	19	195	2021-01-13 23:01:11.67493
3440	Pointe Larue	20	195	2021-01-13 23:01:11.703519
3441	Port Glaud	21	195	2021-01-13 23:01:11.724322
3442	Saint Louis	22	195	2021-01-13 23:01:11.750633
3443	Takamaka	23	195	2021-01-13 23:01:11.772569
3444	Les Mamelles	24	195	2021-01-13 23:01:11.793922
3445	Roche Caiman	25	195	2021-01-13 23:01:11.827557
3446	Eastern	E	203	2021-01-13 23:01:11.854463
3447	Northern	N	203	2021-01-13 23:01:11.873969
3448	Southern (Sierra Leone)	S	203	2021-01-13 23:01:11.900024
3449	Western Area (Freetown)	W	203	2021-01-13 23:01:11.925019
3450	Awdal	AW	206	2021-01-13 23:01:11.959808
3451	Bakool	BK	206	2021-01-13 23:01:11.989506
3452	Banaadir	BN	206	2021-01-13 23:01:12.010666
3453	Bari	BR	206	2021-01-13 23:01:12.035222
3454	Bay	BY	206	2021-01-13 23:01:12.058081
3455	Galguduud	GA	206	2021-01-13 23:01:12.082916
3456	Gedo	GE	206	2021-01-13 23:01:12.11116
3457	Hiirsan	HI	206	2021-01-13 23:01:12.195686
3458	Jubbada Dhexe	JD	206	2021-01-13 23:01:12.242472
3459	Jubbada Hoose	JH	206	2021-01-13 23:01:12.360084
3460	Mudug	MU	206	2021-01-13 23:01:12.403015
3461	Nugaal	NU	206	2021-01-13 23:01:12.435894
3462	Saneag	SA	206	2021-01-13 23:01:12.458811
3463	Shabeellaha Dhexe	SD	206	2021-01-13 23:01:12.479445
3464	Shabeellaha Hoose	SH	206	2021-01-13 23:01:12.503069
3465	Sool	SO	206	2021-01-13 23:01:12.52586
3466	Togdheer	TO	206	2021-01-13 23:01:12.547894
3467	Woqooyi Galbeed	WO	206	2021-01-13 23:01:12.571871
3468	Brokopondo	BR	207	2021-01-13 23:01:12.600469
3469	Commewijne	CM	207	2021-01-13 23:01:12.618458
3470	Coronie	CR	207	2021-01-13 23:01:12.643493
3471	Marowijne	MA	207	2021-01-13 23:01:12.67753
3472	Nickerie	NI	207	2021-01-13 23:01:12.705148
3473	Paramaribo	PM	207	2021-01-13 23:01:12.725623
3474	Para	PR	207	2021-01-13 23:01:12.749067
3475	Saramacca	SA	207	2021-01-13 23:01:12.775571
3476	Sipaliwini	SI	207	2021-01-13 23:01:12.800664
3477	Wanica	WA	207	2021-01-13 23:01:12.818448
3478	Príncipe	P	209	2021-01-13 23:01:12.848724
3479	São Tomé	S	209	2021-01-13 23:01:12.872731
3480	Dimashq	DI	212	2021-01-13 23:01:12.901901
3481	Dar'a	DR	212	2021-01-13 23:01:12.91944
3482	Dayr az Zawr	DY	212	2021-01-13 23:01:12.942326
3483	Al Hasakah	HA	212	2021-01-13 23:01:12.968827
3484	Homs	HI	212	2021-01-13 23:01:12.995383
3485	Halab	HL	212	2021-01-13 23:01:13.014857
3486	Hamah	HM	212	2021-01-13 23:01:13.038529
3487	Idlib	ID	212	2021-01-13 23:01:13.072487
3488	Al Ladhiqiyah	LA	212	2021-01-13 23:01:13.097819
3489	Al Qunaytirah	QU	212	2021-01-13 23:01:13.127521
3490	Ar Raqqah	RA	212	2021-01-13 23:01:13.151108
3491	Rif Dimashq	RD	212	2021-01-13 23:01:13.177346
3492	As Suwayda'	SU	212	2021-01-13 23:01:13.202007
3493	Tartus	TA	212	2021-01-13 23:01:13.22085
3494	Région du Centre	C	217	2021-01-13 23:01:13.256539
3495	Région de la Kara	K	217	2021-01-13 23:01:13.286832
3496	Région Maritime	M	217	2021-01-13 23:01:13.319057
3497	Région des Plateaux	P	217	2021-01-13 23:01:13.348685
3498	Région des Savannes	S	217	2021-01-13 23:01:13.3754
3499	Aileu	AL	221	2021-01-13 23:01:13.407782
3500	Ainaro	AN	221	2021-01-13 23:01:13.432145
3501	Baucau	BA	221	2021-01-13 23:01:13.457849
3502	Bobonaro	BO	221	2021-01-13 23:01:13.482923
3503	Cova Lima	CO	221	2021-01-13 23:01:13.50871
3504	Díli	DI	221	2021-01-13 23:01:13.529084
3505	Ermera	ER	221	2021-01-13 23:01:13.551073
3506	Lautem	LA	221	2021-01-13 23:01:13.577631
3507	Liquiça	LI	221	2021-01-13 23:01:13.59996
3508	Manufahi	MF	221	2021-01-13 23:01:13.621684
3509	Manatuto	MT	221	2021-01-13 23:01:13.648117
3510	Oecussi	OE	221	2021-01-13 23:01:13.669371
3511	Viqueque	VI	221	2021-01-13 23:01:13.691764
3512	'Eua	01	224	2021-01-13 23:01:13.723863
3513	Ha'apai	02	224	2021-01-13 23:01:13.74757
3514	Niuas	03	224	2021-01-13 23:01:13.772501
3515	Tongatapu	04	224	2021-01-13 23:01:13.793063
3516	Vava'u	05	224	2021-01-13 23:01:13.821237
3517	Funafuti	FUN	227	2021-01-13 23:01:13.857393
3518	Niutao	NIT	227	2021-01-13 23:01:13.883587
3519	Nukufetau	NKF	227	2021-01-13 23:01:13.91317
3520	Nukulaelae	NKL	227	2021-01-13 23:01:13.93709
3521	Nanumea	NMA	227	2021-01-13 23:01:13.966834
3522	Nanumanga	NMG	227	2021-01-13 23:01:13.991548
3523	Nui	NUI	227	2021-01-13 23:01:14.020053
3524	Vaitupu	VAI	227	2021-01-13 23:01:14.040951
3525	Arusha	01	229	2021-01-13 23:01:14.07582
3526	Dar-es-Salaam	02	229	2021-01-13 23:01:14.096808
3527	Dodoma	03	229	2021-01-13 23:01:14.1185
3528	Iringa	04	229	2021-01-13 23:01:14.139501
3529	Kagera	05	229	2021-01-13 23:01:14.156291
3530	Kaskazini Pemba	06	229	2021-01-13 23:01:14.186915
3531	Kaskazini Unguja	07	229	2021-01-13 23:01:14.213955
3532	Kigoma	08	229	2021-01-13 23:01:14.228341
3533	Kilimanjaro	09	229	2021-01-13 23:01:14.249105
3534	Kusini Pemba	10	229	2021-01-13 23:01:14.269201
3535	Kusini Unguja	11	229	2021-01-13 23:01:14.296561
3536	Lindi	12	229	2021-01-13 23:01:14.317301
3537	Mara	13	229	2021-01-13 23:01:14.336667
3538	Mbeya	14	229	2021-01-13 23:01:14.354894
3539	Mjini Magharibi	15	229	2021-01-13 23:01:14.372809
3540	Morogoro	16	229	2021-01-13 23:01:14.389891
3541	Mtwara	17	229	2021-01-13 23:01:14.415701
3542	Mwanza	18	229	2021-01-13 23:01:14.430069
3543	Pwani	19	229	2021-01-13 23:01:14.451227
3544	Rukwa	20	229	2021-01-13 23:01:14.485082
3545	Ruvuma	21	229	2021-01-13 23:01:14.511993
3546	Shinyanga	22	229	2021-01-13 23:01:14.526191
3547	Singida	23	229	2021-01-13 23:01:14.543172
3548	Tabora	24	229	2021-01-13 23:01:14.560663
3549	Tanga	25	229	2021-01-13 23:01:14.58221
3550	Manyara	26	229	2021-01-13 23:01:14.602208
3551	Central	C	231	2021-01-13 23:01:14.628593
3552	Eastern	E	231	2021-01-13 23:01:14.650261
3553	Northern	N	231	2021-01-13 23:01:14.666298
3554	Western	W	231	2021-01-13 23:01:14.688947
3555	Malampa	MAP	242	2021-01-13 23:01:14.718346
3556	Pénama	PAM	242	2021-01-13 23:01:14.743637
3557	Sanma	SAM	242	2021-01-13 23:01:14.790671
3558	Shéfa	SEE	242	2021-01-13 23:01:14.818237
3559	Taféa	TAE	242	2021-01-13 23:01:14.838486
3560	Torba	TOB	242	2021-01-13 23:01:14.862187
3561	Abyān	AB	245	2021-01-13 23:01:14.892991
3562	'Adan	AD	245	2021-01-13 23:01:14.910992
3563	'Amrān	AM	245	2021-01-13 23:01:14.935458
3564	Al Bayḑā'	BA	245	2021-01-13 23:01:14.959759
3565	Aḑ Ḑāli‘	DA	245	2021-01-13 23:01:14.992075
3566	Dhamār	DH	245	2021-01-13 23:01:15.01505
3567	Ḩaḑramawt	HD	245	2021-01-13 23:01:15.035692
3568	Ḩajjah	HJ	245	2021-01-13 23:01:15.057005
3569	Ibb	IB	245	2021-01-13 23:01:15.079164
3570	Al Jawf	JA	245	2021-01-13 23:01:15.103644
3571	Laḩij	LA	245	2021-01-13 23:01:15.136295
3572	Ma'rib	MA	245	2021-01-13 23:01:15.158995
3573	Al Mahrah	MR	245	2021-01-13 23:01:15.178267
3574	Al Ḩudaydah	MU	245	2021-01-13 23:01:15.201741
3575	Al Maḩwīt	MW	245	2021-01-13 23:01:15.235558
3576	Raymah	RA	245	2021-01-13 23:01:15.269864
3577	Şa'dah	SD	245	2021-01-13 23:01:15.304036
3578	Shabwah	SH	245	2021-01-13 23:01:15.3213
3579	Şan'ā'	SN	245	2021-01-13 23:01:15.339449
3580	Tā'izz	TA	245	2021-01-13 23:01:15.368636
3581	Bulawayo	BU	249	2021-01-13 23:01:15.423918
3582	Harare	HA	249	2021-01-13 23:01:15.482587
3583	Manicaland	MA	249	2021-01-13 23:01:15.50713
3584	Mashonaland Central	MC	249	2021-01-13 23:01:15.532475
3585	Mashonaland East	ME	249	2021-01-13 23:01:15.551596
3586	Midlands	MI	249	2021-01-13 23:01:15.572383
3587	Matabeleland North	MN	249	2021-01-13 23:01:15.600039
3588	Matabeleland South	MS	249	2021-01-13 23:01:15.621751
3589	Masvingo	MV	249	2021-01-13 23:01:15.645403
3590	Mashonaland West	MW	249	2021-01-13 23:01:15.666399
\.


--
-- Data for Name: spree_stock_items; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_stock_items (id, stock_location_id, variant_id, count_on_hand, created_at, updated_at, backorderable, deleted_at) FROM stdin;
61	1	61	0	2021-01-13 23:19:40.006937	2021-01-17 19:58:07.842355	t	2021-01-17 19:58:07.842345
77	1	77	0	2021-01-13 23:19:43.216883	2021-01-17 19:58:12.052318	t	2021-01-17 19:58:12.052308
53	1	53	0	2021-01-13 23:19:38.584084	2021-01-17 19:58:17.663276	t	2021-01-17 19:58:17.663266
8	1	8	0	2021-01-13 23:19:29.888466	2021-01-17 20:01:10.66187	t	2021-01-17 20:01:10.66186
6	1	6	0	2021-01-13 23:19:29.531237	2021-01-17 19:58:21.662885	t	2021-01-17 19:58:21.662876
85	1	85	0	2021-01-13 23:19:45.871287	2021-01-17 20:01:13.6531	t	2021-01-17 20:01:13.65309
63	1	63	0	2021-01-13 23:19:40.498465	2021-01-17 20:01:15.934934	t	2021-01-17 20:01:15.934924
81	1	81	0	2021-01-13 23:19:44.219247	2021-01-17 20:01:18.801495	t	2021-01-17 20:01:18.801483
76	1	76	0	2021-01-13 23:19:43.020704	2021-01-17 20:01:20.855911	t	2021-01-17 20:01:20.855902
69	1	69	0	2021-01-13 23:19:41.624452	2021-01-17 19:58:27.296887	t	2021-01-17 19:58:27.296875
11	1	11	0	2021-01-13 23:19:30.429407	2021-01-17 19:58:30.777755	t	2021-01-17 19:58:30.777745
3	1	3	0	2021-01-13 23:19:28.98889	2021-01-17 20:01:22.898454	t	2021-01-17 20:01:22.898445
52	1	52	0	2021-01-13 23:19:38.395135	2021-01-17 19:58:46.012032	t	2021-01-17 19:58:46.012022
12	1	12	0	2021-01-13 23:19:30.610642	2021-01-17 19:58:50.012859	t	2021-01-17 19:58:50.012847
62	1	62	0	2021-01-13 23:19:40.195337	2021-01-17 19:58:52.484014	t	2021-01-17 19:58:52.484004
95	1	95	0	2021-01-13 23:19:49.470389	2021-01-17 20:01:26.541452	t	2021-01-17 20:01:26.541442
45	1	45	0	2021-01-13 23:19:37.064837	2021-01-17 19:58:56.071627	t	2021-01-17 19:58:56.071618
31	1	31	0	2021-01-13 23:19:34.262327	2021-01-17 20:01:28.333405	t	2021-01-17 20:01:28.333396
9	1	9	0	2021-01-13 23:19:30.072838	2021-01-17 20:01:33.101648	t	2021-01-17 20:01:33.101636
35	1	35	0	2021-01-13 23:19:35.067429	2021-01-17 20:01:35.60253	t	2021-01-17 20:01:35.602522
55	1	55	0	2021-01-13 23:19:38.936701	2021-01-17 20:01:40.290668	t	2021-01-17 20:01:40.290659
72	1	72	0	2021-01-13 23:19:42.197099	2021-01-17 19:59:01.021604	t	2021-01-17 19:59:01.021594
54	1	54	0	2021-01-13 23:19:38.758933	2021-01-17 20:01:43.332515	t	2021-01-17 20:01:43.332506
71	1	71	0	2021-01-13 23:19:41.99922	2021-01-17 19:59:03.170293	t	2021-01-17 19:59:03.170283
106	1	106	0	2021-01-13 23:19:52.589404	2021-01-17 20:01:46.268046	t	2021-01-17 20:01:46.268037
99	1	99	0	2021-01-13 23:19:50.667041	2021-01-17 19:59:05.191554	t	2021-01-17 19:59:05.191542
107	1	107	0	2021-01-13 23:19:52.819802	2021-01-17 19:59:07.069042	t	2021-01-17 19:59:07.069032
68	1	68	0	2021-01-13 23:19:41.436679	2021-01-17 22:45:34.499629	t	2021-01-17 22:45:34.49962
37	1	37	0	2021-01-13 23:19:35.500492	2021-01-17 19:59:10.71175	t	2021-01-17 19:59:10.711739
47	1	47	0	2021-01-13 23:19:37.481135	2021-01-17 22:45:49.893065	t	2021-01-17 22:45:49.893055
39	1	39	0	2021-01-13 23:19:35.885351	2021-01-13 23:19:35.885351	t	\N
82	1	82	0	2021-01-13 23:19:44.498598	2021-01-17 19:59:13.831105	t	2021-01-17 19:59:13.831096
91	1	91	0	2021-01-13 23:19:48.08537	2021-01-17 19:59:15.871261	t	2021-01-17 19:59:15.87125
86	1	86	0	2021-01-13 23:19:46.122743	2021-01-17 19:59:17.957836	t	2021-01-17 19:59:17.957825
100	1	100	0	2021-01-13 23:19:50.955006	2021-01-17 19:59:23.427793	t	2021-01-17 19:59:23.427783
13	1	13	0	2021-01-13 23:19:30.794219	2021-01-17 19:59:25.597797	t	2021-01-17 19:59:25.597788
24	1	24	0	2021-01-13 23:19:32.91623	2021-01-17 19:59:27.680987	t	2021-01-17 19:59:27.680975
50	1	50	0	2021-01-13 23:19:38.031071	2021-01-17 19:59:29.714651	t	2021-01-17 19:59:29.714642
22	1	22	0	2021-01-13 23:19:32.564401	2021-01-17 19:59:32.076686	t	2021-01-17 19:59:32.076677
27	1	27	0	2021-01-13 23:19:33.488169	2021-01-17 19:59:35.084642	t	2021-01-17 19:59:35.084626
88	1	88	0	2021-01-13 23:19:46.62393	2021-01-17 19:59:37.486962	t	2021-01-17 19:59:37.486952
10	1	10	0	2021-01-13 23:19:30.252585	2021-01-17 19:59:39.70804	t	2021-01-17 19:59:39.708029
40	1	40	0	2021-01-13 23:19:36.084015	2021-01-17 19:59:44.500343	t	2021-01-17 19:59:44.500334
101	1	101	0	2021-01-13 23:19:51.192899	2021-01-17 19:59:48.653307	t	2021-01-17 19:59:48.653292
74	1	74	0	2021-01-13 23:19:42.631659	2021-01-17 19:59:50.549144	t	2021-01-17 19:59:50.549133
73	1	73	0	2021-01-13 23:19:42.444926	2021-01-17 19:59:54.399513	t	2021-01-17 19:59:54.399504
23	1	23	0	2021-01-13 23:19:32.740637	2021-01-17 20:00:01.254577	t	2021-01-17 20:00:01.254564
25	1	25	0	2021-01-13 23:19:33.095935	2021-01-17 20:00:05.833406	t	2021-01-17 20:00:05.833396
29	1	29	0	2021-01-13 23:19:33.885662	2021-01-17 20:00:09.522866	t	2021-01-17 20:00:09.522855
20	1	20	0	2021-01-13 23:19:32.099944	2021-01-17 20:00:18.138519	t	2021-01-17 20:00:18.13851
56	1	56	0	2021-01-13 23:19:39.123933	2021-01-17 20:00:20.47902	t	2021-01-17 20:00:20.479011
46	1	46	0	2021-01-13 23:19:37.293139	2021-01-17 20:00:23.938425	t	2021-01-17 20:00:23.938416
44	1	44	0	2021-01-13 23:19:36.871886	2021-01-17 20:00:30.051256	t	2021-01-17 20:00:30.051247
41	1	41	0	2021-01-13 23:19:36.283778	2021-01-17 20:00:33.274829	t	2021-01-17 20:00:33.27482
2	1	2	1	2021-01-13 23:19:28.80977	2021-01-13 23:21:47.463419	t	\N
14	1	14	0	2021-01-13 23:19:30.963833	2021-01-14 21:18:28.493878	t	2021-01-14 21:18:28.493865
30	1	30	0	2021-01-13 23:19:34.061963	2021-01-14 21:18:50.978787	t	2021-01-14 21:18:50.978777
70	1	70	0	2021-01-13 23:19:41.800845	2021-01-14 21:21:18.062762	t	2021-01-14 21:21:18.062751
84	1	84	0	2021-01-13 23:19:45.142928	2021-01-14 21:21:21.932127	t	2021-01-14 21:21:21.932117
19	1	19	0	2021-01-13 23:19:31.919358	2021-01-14 21:21:25.332388	t	2021-01-14 21:21:25.332379
64	1	64	0	2021-01-13 23:19:40.684514	2021-01-14 21:21:36.162935	t	2021-01-14 21:21:36.162926
96	1	96	0	2021-01-13 23:19:49.80353	2021-01-14 21:21:39.544557	t	2021-01-14 21:21:39.544548
90	1	90	0	2021-01-13 23:19:47.732785	2021-01-17 19:55:10.159378	t	2021-01-17 19:55:10.159365
32	1	32	0	2021-01-13 23:19:34.463474	2021-01-17 19:55:19.757019	t	2021-01-17 19:55:19.757008
94	1	94	0	2021-01-13 23:19:49.117095	2021-01-17 19:55:23.795046	t	2021-01-17 19:55:23.795036
34	1	34	0	2021-01-13 23:19:34.862194	2021-01-17 19:55:27.472018	t	2021-01-17 19:55:27.472008
60	1	60	0	2021-01-13 23:19:39.823722	2021-01-17 19:55:34.547214	t	2021-01-17 19:55:34.547204
17	1	17	0	2021-01-13 23:19:31.504743	2021-01-17 19:56:11.755426	t	2021-01-17 19:56:11.755416
21	1	21	0	2021-01-13 23:19:32.351627	2021-01-17 19:56:17.804666	t	2021-01-17 19:56:17.80465
28	1	28	0	2021-01-13 23:19:33.699218	2021-01-17 19:56:29.213308	t	2021-01-17 19:56:29.213272
15	1	15	0	2021-01-13 23:19:31.146832	2021-01-17 19:56:33.41329	t	2021-01-17 19:56:33.41328
59	1	59	0	2021-01-13 23:19:39.646123	2021-01-17 19:56:37.466648	t	2021-01-17 19:56:37.466602
102	1	102	0	2021-01-13 23:19:51.447855	2021-01-17 19:56:42.072963	t	2021-01-17 19:56:42.072953
97	1	97	0	2021-01-13 23:19:50.081825	2021-01-17 19:56:45.133216	t	2021-01-17 19:56:45.133204
18	1	18	0	2021-01-13 23:19:31.715545	2021-01-17 19:56:49.896281	t	2021-01-17 19:56:49.896272
104	1	104	0	2021-01-13 23:19:52.023343	2021-01-17 19:57:04.434176	t	2021-01-17 19:57:04.434167
57	1	57	0	2021-01-13 23:19:39.294652	2021-01-17 19:57:08.207444	t	2021-01-17 19:57:08.207435
4	1	4	0	2021-01-13 23:19:29.167334	2021-01-17 19:57:11.55755	t	2021-01-17 19:57:11.557541
83	1	83	0	2021-01-13 23:19:44.843057	2021-01-17 19:57:15.626161	t	2021-01-17 19:57:15.626151
43	1	43	0	2021-01-13 23:19:36.677007	2021-01-17 19:57:19.168531	t	2021-01-17 19:57:19.168521
42	1	42	0	2021-01-13 23:19:36.484979	2021-01-17 19:57:23.534774	t	2021-01-17 19:57:23.53476
67	1	67	0	2021-01-13 23:19:41.241088	2021-01-17 19:57:39.33154	t	2021-01-17 19:57:39.331531
58	1	58	0	2021-01-13 23:19:39.472799	2021-01-17 19:57:43.4636	t	2021-01-17 19:57:43.46359
105	1	105	0	2021-01-13 23:19:52.317534	2021-01-17 19:57:48.470815	t	2021-01-17 19:57:48.470805
80	1	80	0	2021-01-13 23:19:43.845517	2021-01-17 19:57:52.64463	t	2021-01-17 19:57:52.64462
78	1	78	0	2021-01-13 23:19:43.398516	2021-01-17 19:57:56.55324	t	2021-01-17 19:57:56.55323
7	1	7	0	2021-01-13 23:19:29.718921	2021-01-17 19:57:59.786014	t	2021-01-17 19:57:59.785996
36	1	36	0	2021-01-13 23:19:35.300004	2021-01-17 20:00:36.24311	t	2021-01-17 20:00:36.2431
48	1	48	0	2021-01-13 23:19:37.669695	2021-01-17 20:00:38.933516	t	2021-01-17 20:00:38.933507
38	1	38	0	2021-01-13 23:19:35.698935	2021-01-17 20:00:41.43966	t	2021-01-17 20:00:41.43965
49	1	49	0	2021-01-13 23:19:37.85083	2021-01-17 20:00:44.011129	t	2021-01-17 20:00:44.011117
65	1	65	0	2021-01-13 23:19:40.870311	2021-01-17 20:00:47.62298	t	2021-01-17 20:00:47.62297
89	1	89	0	2021-01-13 23:19:47.018096	2021-01-17 20:00:53.384208	t	2021-01-17 20:00:53.384197
92	1	92	0	2021-01-13 23:19:48.397805	2021-01-17 20:00:58.129467	t	2021-01-17 20:00:58.129457
16	1	16	0	2021-01-13 23:19:31.329903	2021-01-17 19:58:03.591947	t	2021-01-17 19:58:03.591937
177	1	177	42	2021-01-13 23:21:37.142406	2021-01-17 19:58:07.909335	t	2021-01-17 19:58:07.909327
193	1	193	46	2021-01-13 23:21:40.415687	2021-01-17 19:58:12.130272	t	2021-01-17 19:58:12.130263
169	1	169	32	2021-01-13 23:21:35.473262	2021-01-17 19:58:17.741704	t	2021-01-17 19:58:17.741696
124	1	124	38	2021-01-13 23:21:26.046796	2021-01-17 20:01:10.737859	t	2021-01-17 20:01:10.73785
201	1	201	46	2021-01-13 23:21:41.673074	2021-01-17 20:01:13.727069	t	2021-01-17 20:01:13.72706
179	1	179	46	2021-01-13 23:21:37.470015	2021-01-17 20:01:16.00314	t	2021-01-17 20:01:16.003131
197	1	197	44	2021-01-13 23:21:40.966665	2021-01-17 20:01:18.901583	t	2021-01-17 20:01:18.901572
192	1	192	24	2021-01-13 23:21:40.279601	2021-01-17 20:01:20.93774	t	2021-01-17 20:01:20.937731
122	1	122	48	2021-01-13 23:21:25.700632	2021-01-17 19:58:21.729378	t	2021-01-17 19:58:21.72937
185	1	185	40	2021-01-13 23:21:39.011283	2021-01-17 19:58:27.362481	t	2021-01-17 19:58:27.362473
112	1	112	0	2021-01-13 23:19:54.591463	2021-01-17 19:58:34.037397	t	2021-01-17 19:58:34.037387
119	1	119	42	2021-01-13 23:21:24.954463	2021-01-17 20:01:22.965265	t	2021-01-17 20:01:22.965252
168	1	168	29	2021-01-13 23:21:35.076309	2021-01-17 19:58:46.086349	t	2021-01-17 19:58:46.086341
75	1	75	0	2021-01-13 23:19:42.826183	2021-01-17 20:01:24.645574	t	2021-01-17 20:01:24.645564
128	1	128	28	2021-01-13 23:21:26.732743	2021-01-17 19:58:50.086014	t	2021-01-17 19:58:50.085979
147	1	147	45	2021-01-13 23:21:29.386853	2021-01-17 20:01:28.399635	t	2021-01-17 20:01:28.399627
125	1	125	44	2021-01-13 23:21:26.270294	2021-01-17 20:01:33.197686	t	2021-01-17 20:01:33.197675
178	1	178	31	2021-01-13 23:21:37.31267	2021-01-17 19:58:52.525439	t	2021-01-17 19:58:52.52543
195	1	195	45	2021-01-13 23:21:40.681512	2021-01-17 19:58:54.458087	t	2021-01-17 19:58:54.45804
151	1	151	47	2021-01-13 23:21:29.971465	2021-01-17 20:01:35.668673	t	2021-01-17 20:01:35.668664
161	1	161	48	2021-01-13 23:21:32.137102	2021-01-17 19:58:56.134166	t	2021-01-17 19:58:56.134157
113	1	113	0	2021-01-13 23:19:54.939969	2021-01-17 19:58:58.768979	t	2021-01-17 19:58:58.768958
188	1	188	23	2021-01-13 23:21:39.561388	2021-01-17 19:59:01.089914	t	2021-01-17 19:59:01.089906
171	1	171	44	2021-01-13 23:21:36.039941	2021-01-17 20:01:40.360084	t	2021-01-17 20:01:40.360075
187	1	187	24	2021-01-13 23:21:39.387503	2021-01-17 19:59:03.232948	t	2021-01-17 19:59:03.232926
170	1	170	24	2021-01-13 23:21:35.850041	2021-01-17 20:01:43.392379	t	2021-01-17 20:01:43.392371
163	1	163	36	2021-01-13 23:21:32.725366	2021-01-17 22:45:49.99629	t	2021-01-17 22:45:49.996282
153	1	153	39	2021-01-13 23:21:30.315118	2021-01-17 19:59:10.775301	t	2021-01-17 19:59:10.775291
207	1	207	28	2021-01-13 23:21:42.587429	2021-01-17 19:59:15.937179	t	2021-01-17 19:59:15.937169
202	1	202	26	2021-01-13 23:21:41.870062	2021-01-17 19:59:18.059566	t	2021-01-17 19:59:18.059556
214	1	214	24	2021-01-13 23:21:43.555947	2021-01-17 19:59:21.465948	t	2021-01-17 19:59:21.465939
129	1	129	39	2021-01-13 23:21:26.884229	2021-01-17 19:59:25.655735	t	2021-01-17 19:59:25.655726
140	1	140	26	2021-01-13 23:21:28.411994	2021-01-17 19:59:27.764216	t	2021-01-17 19:59:27.764198
166	1	166	23	2021-01-13 23:21:34.588923	2021-01-17 19:59:29.782542	t	2021-01-17 19:59:29.782533
138	1	138	40	2021-01-13 23:21:28.158938	2021-01-17 19:59:32.136634	t	2021-01-17 19:59:32.136626
143	1	143	22	2021-01-13 23:21:28.790524	2021-01-17 19:59:35.150109	t	2021-01-17 19:59:35.150099
204	1	204	38	2021-01-13 23:21:42.164436	2021-01-17 19:59:37.570081	t	2021-01-17 19:59:37.570073
156	1	156	35	2021-01-13 23:21:31.024494	2021-01-17 19:59:44.563704	t	2021-01-17 19:59:44.563694
209	1	209	24	2021-01-13 23:21:42.832411	2021-01-17 19:59:46.799248	t	2021-01-17 19:59:46.79924
190	1	190	31	2021-01-13 23:21:39.948432	2021-01-17 19:59:50.636892	t	2021-01-17 19:59:50.636881
189	1	189	41	2021-01-13 23:21:39.767061	2021-01-17 19:59:54.467568	t	2021-01-17 19:59:54.467559
139	1	139	44	2021-01-13 23:21:28.27148	2021-01-17 20:00:01.31865	t	2021-01-17 20:00:01.318641
141	1	141	45	2021-01-13 23:21:28.56563	2021-01-17 20:00:05.906548	t	2021-01-17 20:00:05.906536
145	1	145	48	2021-01-13 23:21:29.107803	2021-01-17 20:00:09.610607	t	2021-01-17 20:00:09.610597
115	1	115	0	2021-01-13 23:19:55.659518	2021-01-17 20:00:12.2926	t	2021-01-17 20:00:12.292589
116	1	116	0	2021-01-13 23:19:56.036037	2021-01-17 20:00:15.587045	t	2021-01-17 20:00:15.587036
172	1	172	41	2021-01-13 23:21:36.282313	2021-01-17 20:00:20.545536	t	2021-01-17 20:00:20.545528
162	1	162	45	2021-01-13 23:21:32.543172	2021-01-17 20:00:24.026687	t	2021-01-17 20:00:24.026679
182	1	182	49	2021-01-13 23:21:38.157554	2021-01-17 20:00:26.684124	t	2021-01-17 20:00:26.684115
160	1	160	48	2021-01-13 23:21:31.872067	2021-01-17 20:00:30.116398	t	2021-01-17 20:00:30.11639
157	1	157	48	2021-01-13 23:21:31.244158	2021-01-17 20:00:33.341639	t	2021-01-17 20:00:33.341631
152	1	152	23	2021-01-13 23:21:30.123239	2021-01-17 20:00:36.34957	t	2021-01-17 20:00:36.349562
164	1	164	30	2021-01-13 23:21:34.131802	2021-01-17 20:00:39.002996	t	2021-01-17 20:00:39.002989
154	1	154	49	2021-01-13 23:21:30.601039	2021-01-17 20:00:41.506258	t	2021-01-17 20:00:41.50625
118	1	118	42	2021-01-13 23:21:24.748413	2021-01-13 23:21:48.413472	t	\N
199	1	199	25	2021-01-13 23:21:41.243372	2021-01-17 19:57:15.689311	t	2021-01-17 19:57:15.689302
111	1	111	0	2021-01-13 23:19:54.204225	2021-01-17 19:57:31.9221	t	2021-01-17 19:57:31.92209
181	1	181	24	2021-01-13 23:21:37.880273	2021-01-17 20:00:47.699923	t	2021-01-17 20:00:47.699915
205	1	205	49	2021-01-13 23:21:42.337984	2021-01-17 20:00:53.449447	t	2021-01-17 20:00:53.449439
208	1	208	37	2021-01-13 23:21:42.709939	2021-01-17 20:00:58.199773	t	2021-01-17 20:00:58.199765
186	1	186	24	2021-01-13 23:21:39.167398	2021-01-14 21:21:18.141385	t	2021-01-14 21:21:18.141376
175	1	175	27	2021-01-13 23:21:36.724709	2021-01-17 19:56:37.533293	t	2021-01-17 19:56:37.533284
137	1	137	47	2021-01-13 23:21:28.033482	2021-01-17 19:56:17.883601	t	2021-01-17 19:56:17.883592
108	1	108	0	2021-01-13 23:19:53.097441	2021-01-17 19:56:57.760227	t	2021-01-17 19:56:57.760218
180	1	180	37	2021-01-13 23:21:37.640568	2021-01-14 21:21:36.225903	t	2021-01-14 21:21:36.225894
167	1	167	45	2021-01-13 23:21:34.805661	2021-01-17 19:56:21.403025	t	2021-01-17 19:56:21.403016
148	1	148	32	2021-01-13 23:21:29.505258	2021-01-17 19:55:19.842894	t	2021-01-17 19:55:19.842878
131	1	131	46	2021-01-13 23:21:27.132148	2021-01-17 19:56:33.508753	t	2021-01-17 19:56:33.508745
210	1	210	32	2021-01-13 23:21:42.951605	2021-01-17 19:55:23.840822	t	2021-01-17 19:55:23.840814
176	1	176	31	2021-01-13 23:21:36.910594	2021-01-17 19:55:34.638066	t	2021-01-17 19:55:34.638044
155	1	155	49	2021-01-13 23:21:30.797067	2021-01-14 20:34:27.055325	f	\N
121	1	121	37	2021-01-13 23:21:25.538545	2021-01-17 19:57:27.568611	t	2021-01-17 19:57:27.568603
158	1	158	47	2021-01-13 23:21:31.47005	2021-01-17 19:57:23.5961	t	2021-01-17 19:57:23.59609
144	1	144	38	2021-01-13 23:21:28.985002	2021-01-17 19:56:29.278188	t	2021-01-17 19:56:29.278179
120	1	120	42	2021-01-13 23:21:25.206737	2021-01-17 19:57:11.600404	t	2021-01-17 19:57:11.600395
194	1	194	49	2021-01-13 23:21:40.547853	2021-01-17 19:57:56.616559	t	2021-01-17 19:57:56.616551
213	1	213	35	2021-01-13 23:21:43.390457	2021-01-17 19:56:45.211499	t	2021-01-17 19:56:45.211491
134	1	134	24	2021-01-13 23:21:27.647862	2021-01-17 19:56:49.959735	t	2021-01-17 19:56:49.959727
212	1	212	38	2021-01-13 23:21:43.283834	2021-01-14 21:21:39.629035	t	2021-01-14 21:21:39.629027
174	1	174	50	2021-01-13 23:21:36.56062	2021-01-17 19:57:43.521289	t	2021-01-17 19:57:43.521281
135	1	135	23	2021-01-13 23:21:27.76986	2021-01-14 21:21:25.429313	t	2021-01-14 21:21:25.429304
123	1	123	27	2021-01-13 23:21:25.895547	2021-01-17 19:57:59.849645	t	2021-01-17 19:57:59.849636
159	1	159	31	2021-01-13 23:21:31.664641	2021-01-17 19:57:19.24346	t	2021-01-17 19:57:19.243402
206	1	206	36	2021-01-13 23:21:42.466601	2021-01-17 19:55:10.362462	t	2021-01-17 19:55:10.362454
142	1	142	22	2021-01-13 23:21:28.688231	2021-01-17 19:55:15.540237	t	2021-01-17 19:55:15.540228
150	1	150	47	2021-01-13 23:21:29.830349	2021-01-17 19:55:27.541459	t	2021-01-17 19:55:27.54145
109	1	109	0	2021-01-13 23:19:53.462175	2021-01-17 19:57:01.036254	t	2021-01-17 19:57:01.036237
110	1	110	0	2021-01-13 23:19:53.833806	2021-01-17 19:57:36.023769	t	2021-01-17 19:57:36.023759
130	1	130	24	2021-01-13 23:21:27.000042	2021-01-14 21:18:28.558813	t	2021-01-14 21:18:28.558805
183	1	183	37	2021-01-13 23:21:38.418984	2021-01-17 19:57:39.393661	t	2021-01-17 19:57:39.393651
191	1	191	49	2021-01-13 23:21:40.146573	2021-01-17 20:01:24.709662	t	2021-01-17 20:01:24.709653
211	1	211	49	2021-01-13 23:21:43.1364	2021-01-17 20:01:26.629325	t	2021-01-17 20:01:26.629315
222	1	222	25	2021-01-13 23:21:44.95809	2021-01-17 20:01:46.351798	t	2021-01-17 20:01:46.351788
132	1	132	47	2021-01-13 23:21:27.394568	2021-01-17 19:58:03.658436	t	2021-01-17 19:58:03.658427
127	1	127	30	2021-01-13 23:21:26.613677	2021-01-17 19:58:30.849755	t	2021-01-17 19:58:30.849747
228	1	228	20	2021-01-13 23:21:46.273593	2021-01-17 19:58:34.439718	t	2021-01-17 19:58:34.439707
114	1	114	0	2021-01-13 23:19:55.269557	2021-01-17 19:58:37.753294	t	2021-01-17 19:58:37.753285
230	1	230	27	2021-01-13 23:21:46.671257	2021-01-17 19:58:37.821701	t	2021-01-17 19:58:37.821693
79	1	79	0	2021-01-13 23:19:43.591893	2021-01-17 19:58:54.411864	t	2021-01-17 19:58:54.411855
229	1	229	37	2021-01-13 23:21:46.422051	2021-01-17 19:58:58.876544	t	2021-01-17 19:58:58.876534
215	1	215	31	2021-01-13 23:21:43.739348	2021-01-17 19:59:05.28906	t	2021-01-17 19:59:05.289051
235	1	235	101	2021-01-14 16:53:12.208481	2021-01-17 22:24:37.167769	f	\N
184	1	184	21	2021-01-13 23:21:38.667938	2021-01-17 22:45:34.727216	t	2021-01-17 22:45:34.727208
237	1	237	0	2021-01-17 22:47:02.367791	2021-01-17 22:47:02.367791	t	\N
1	1	1	1	2021-01-13 23:19:28.622711	2021-01-13 23:21:47.412246	t	\N
117	1	117	26	2021-01-13 23:21:24.532913	2021-01-13 23:21:48.329105	t	\N
238	1	238	30	2021-01-17 22:55:28.08308	2021-01-17 23:03:43.296848	t	\N
223	1	223	37	2021-01-13 23:21:45.260929	2021-01-17 19:59:07.133571	t	2021-01-17 19:59:07.133563
239	1	239	40	2021-01-17 22:56:11.12745	2021-01-17 23:04:03.248728	t	\N
198	1	198	27	2021-01-13 23:21:41.092813	2021-01-17 19:59:13.901245	t	2021-01-17 19:59:13.901234
240	1	240	0	2021-01-17 23:05:13.555026	2021-01-17 23:05:13.555026	t	\N
98	1	98	0	2021-01-13 23:19:50.349722	2021-01-17 19:59:21.401276	t	2021-01-17 19:59:21.401267
216	1	216	49	2021-01-13 23:21:43.887477	2021-01-17 19:59:23.499386	t	2021-01-17 19:59:23.499378
126	1	126	40	2021-01-13 23:21:26.465473	2021-01-17 19:59:39.814814	t	2021-01-17 19:59:39.814803
93	1	93	0	2021-01-13 23:19:48.76607	2021-01-17 19:59:46.710473	t	2021-01-17 19:59:46.710464
243	1	243	0	2021-01-17 23:12:21.495037	2021-01-17 23:12:21.495037	t	\N
217	1	217	48	2021-01-13 23:21:44.045131	2021-01-17 19:59:48.725965	t	2021-01-17 19:59:48.725956
231	1	231	25	2021-01-13 23:21:47.060485	2021-01-17 20:00:12.390895	t	2021-01-17 20:00:12.390887
232	1	232	28	2021-01-13 23:21:47.278772	2021-01-17 20:00:15.668043	t	2021-01-17 20:00:15.668035
136	1	136	20	2021-01-13 23:21:27.930727	2021-01-17 20:00:18.205269	t	2021-01-17 20:00:18.205259
244	1	244	30	2021-01-17 23:16:57.084876	2021-01-17 23:18:19.429997	t	\N
245	1	245	25	2021-01-17 23:17:24.504431	2021-01-17 23:18:31.789307	t	\N
241	1	241	40	2021-01-17 23:08:18.728148	2021-01-17 23:20:39.943413	t	\N
66	1	66	0	2021-01-13 23:19:41.049645	2021-01-17 20:00:26.617249	t	2021-01-17 20:00:26.61724
234	1	234	0	2021-01-14 16:50:46.561784	2021-01-14 16:50:46.561784	t	\N
165	1	165	27	2021-01-13 23:21:34.359992	2021-01-17 20:00:44.090656	t	2021-01-17 20:00:44.090646
33	1	33	0	2021-01-13 23:19:34.668757	2021-01-17 20:00:50.893995	t	2021-01-17 20:00:50.893982
149	1	149	49	2021-01-13 23:21:29.633657	2021-01-17 20:00:50.986377	t	2021-01-17 20:00:50.986366
242	1	242	30	2021-01-17 23:08:39.141662	2021-01-17 23:20:51.720969	t	\N
236	1	236	7	2021-01-14 20:02:40.487271	2021-01-14 20:30:04.303225	f	\N
233	1	233	0	2021-01-14 16:42:58.357076	2021-01-14 20:42:13.104051	t	2021-01-14 20:42:13.104041
146	1	146	26	2021-01-13 23:21:29.233384	2021-01-14 21:18:51.063772	t	2021-01-14 21:18:51.063763
87	1	87	0	2021-01-13 23:19:46.366464	2021-01-14 21:21:13.850918	t	2021-01-14 21:21:13.850907
203	1	203	35	2021-01-13 23:21:42.017544	2021-01-14 21:21:13.911583	t	2021-01-14 21:21:13.911574
200	1	200	47	2021-01-13 23:21:41.410708	2021-01-14 21:21:21.998802	t	2021-01-14 21:21:21.998791
26	1	26	0	2021-01-13 23:19:33.284307	2021-01-17 19:55:15.453015	t	2021-01-17 19:55:15.453005
133	1	133	23	2021-01-13 23:21:27.507449	2021-01-17 19:56:11.85073	t	2021-01-17 19:56:11.850722
51	1	51	0	2021-01-13 23:19:38.221715	2021-01-17 19:56:21.330563	t	2021-01-17 19:56:21.330537
218	1	218	31	2021-01-13 23:21:44.21512	2021-01-17 19:56:42.122527	t	2021-01-17 19:56:42.122519
103	1	103	0	2021-01-13 23:19:51.741925	2021-01-17 19:56:54.333689	t	2021-01-17 19:56:54.333679
219	1	219	32	2021-01-13 23:21:44.382247	2021-01-17 19:56:54.393974	t	2021-01-17 19:56:54.393966
224	1	224	50	2021-01-13 23:21:45.560954	2021-01-17 19:56:57.817523	t	2021-01-17 19:56:57.817507
225	1	225	49	2021-01-13 23:21:45.723715	2021-01-17 19:57:01.115142	t	2021-01-17 19:57:01.115132
220	1	220	37	2021-01-13 23:21:44.599578	2021-01-17 19:57:04.494885	t	2021-01-17 19:57:04.494876
173	1	173	29	2021-01-13 23:21:36.425912	2021-01-17 19:57:08.276923	t	2021-01-17 19:57:08.276915
5	1	5	0	2021-01-13 23:19:29.355326	2021-01-17 19:57:27.469551	t	2021-01-17 19:57:27.469542
227	1	227	34	2021-01-13 23:21:46.087635	2021-01-17 19:57:31.984922	t	2021-01-17 19:57:31.984909
226	1	226	23	2021-01-13 23:21:45.885357	2021-01-17 19:57:36.081441	t	2021-01-17 19:57:36.081429
221	1	221	25	2021-01-13 23:21:44.771052	2021-01-17 19:57:48.532347	t	2021-01-17 19:57:48.532339
196	1	196	48	2021-01-13 23:21:40.832478	2021-01-17 19:57:52.722235	t	2021-01-17 19:57:52.722227
\.


--
-- Data for Name: spree_stock_locations; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_stock_locations (id, name, created_at, updated_at, "default", address1, address2, city, state_id, state_name, country_id, zipcode, phone, active, backorderable_default, propagate_all_variants, admin_name) FROM stdin;
1	default	2021-01-13 22:59:01.323941	2021-01-14 21:08:25.659364	f	Example Street		City	343	\N	46			t	t	t	
\.


--
-- Data for Name: spree_stock_movements; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_stock_movements (id, stock_item_id, quantity, action, created_at, updated_at, originator_type, originator_id) FROM stdin;
1	117	26	\N	2021-01-13 23:21:48.276021	2021-01-13 23:21:48.276021	\N	\N
2	118	42	\N	2021-01-13 23:21:48.378027	2021-01-13 23:21:48.378027	\N	\N
3	119	42	\N	2021-01-13 23:21:48.460375	2021-01-13 23:21:48.460375	\N	\N
4	120	42	\N	2021-01-13 23:21:48.556271	2021-01-13 23:21:48.556271	\N	\N
5	121	37	\N	2021-01-13 23:21:48.645423	2021-01-13 23:21:48.645423	\N	\N
6	122	48	\N	2021-01-13 23:21:48.732267	2021-01-13 23:21:48.732267	\N	\N
7	123	27	\N	2021-01-13 23:21:48.80079	2021-01-13 23:21:48.80079	\N	\N
8	124	38	\N	2021-01-13 23:21:48.864125	2021-01-13 23:21:48.864125	\N	\N
9	125	44	\N	2021-01-13 23:21:48.943095	2021-01-13 23:21:48.943095	\N	\N
10	126	40	\N	2021-01-13 23:21:49.00901	2021-01-13 23:21:49.00901	\N	\N
11	127	30	\N	2021-01-13 23:21:49.063219	2021-01-13 23:21:49.063219	\N	\N
12	128	28	\N	2021-01-13 23:21:49.137689	2021-01-13 23:21:49.137689	\N	\N
13	129	39	\N	2021-01-13 23:21:49.203115	2021-01-13 23:21:49.203115	\N	\N
14	130	24	\N	2021-01-13 23:21:49.279134	2021-01-13 23:21:49.279134	\N	\N
15	131	46	\N	2021-01-13 23:21:49.355805	2021-01-13 23:21:49.355805	\N	\N
16	132	47	\N	2021-01-13 23:21:49.423441	2021-01-13 23:21:49.423441	\N	\N
17	133	23	\N	2021-01-13 23:21:49.50626	2021-01-13 23:21:49.50626	\N	\N
18	134	24	\N	2021-01-13 23:21:49.577187	2021-01-13 23:21:49.577187	\N	\N
19	135	23	\N	2021-01-13 23:21:49.651284	2021-01-13 23:21:49.651284	\N	\N
20	136	20	\N	2021-01-13 23:21:49.723398	2021-01-13 23:21:49.723398	\N	\N
21	137	47	\N	2021-01-13 23:21:49.786029	2021-01-13 23:21:49.786029	\N	\N
22	138	40	\N	2021-01-13 23:21:49.866643	2021-01-13 23:21:49.866643	\N	\N
23	139	44	\N	2021-01-13 23:21:49.947009	2021-01-13 23:21:49.947009	\N	\N
24	140	26	\N	2021-01-13 23:21:50.020326	2021-01-13 23:21:50.020326	\N	\N
25	141	45	\N	2021-01-13 23:21:50.082701	2021-01-13 23:21:50.082701	\N	\N
26	142	22	\N	2021-01-13 23:21:50.229641	2021-01-13 23:21:50.229641	\N	\N
27	143	22	\N	2021-01-13 23:21:50.345448	2021-01-13 23:21:50.345448	\N	\N
28	144	38	\N	2021-01-13 23:21:50.424214	2021-01-13 23:21:50.424214	\N	\N
29	145	48	\N	2021-01-13 23:21:50.568142	2021-01-13 23:21:50.568142	\N	\N
30	146	26	\N	2021-01-13 23:21:50.648568	2021-01-13 23:21:50.648568	\N	\N
31	147	45	\N	2021-01-13 23:21:50.75452	2021-01-13 23:21:50.75452	\N	\N
32	148	32	\N	2021-01-13 23:21:50.854714	2021-01-13 23:21:50.854714	\N	\N
33	149	49	\N	2021-01-13 23:21:50.933073	2021-01-13 23:21:50.933073	\N	\N
34	150	47	\N	2021-01-13 23:21:51.033639	2021-01-13 23:21:51.033639	\N	\N
35	151	47	\N	2021-01-13 23:21:51.11244	2021-01-13 23:21:51.11244	\N	\N
36	152	23	\N	2021-01-13 23:21:51.188	2021-01-13 23:21:51.188	\N	\N
37	153	39	\N	2021-01-13 23:21:51.254965	2021-01-13 23:21:51.254965	\N	\N
38	154	49	\N	2021-01-13 23:21:51.326848	2021-01-13 23:21:51.326848	\N	\N
39	155	42	\N	2021-01-13 23:21:51.39499	2021-01-13 23:21:51.39499	\N	\N
40	156	35	\N	2021-01-13 23:21:51.477104	2021-01-13 23:21:51.477104	\N	\N
41	157	48	\N	2021-01-13 23:21:51.556593	2021-01-13 23:21:51.556593	\N	\N
42	158	47	\N	2021-01-13 23:21:51.640755	2021-01-13 23:21:51.640755	\N	\N
43	159	31	\N	2021-01-13 23:21:51.700698	2021-01-13 23:21:51.700698	\N	\N
44	160	48	\N	2021-01-13 23:21:51.776382	2021-01-13 23:21:51.776382	\N	\N
45	161	48	\N	2021-01-13 23:21:51.850808	2021-01-13 23:21:51.850808	\N	\N
46	162	45	\N	2021-01-13 23:21:51.912992	2021-01-13 23:21:51.912992	\N	\N
47	163	36	\N	2021-01-13 23:21:51.992019	2021-01-13 23:21:51.992019	\N	\N
48	164	30	\N	2021-01-13 23:21:52.06181	2021-01-13 23:21:52.06181	\N	\N
49	165	27	\N	2021-01-13 23:21:52.141765	2021-01-13 23:21:52.141765	\N	\N
50	166	23	\N	2021-01-13 23:21:52.216678	2021-01-13 23:21:52.216678	\N	\N
51	167	45	\N	2021-01-13 23:21:52.287474	2021-01-13 23:21:52.287474	\N	\N
52	168	29	\N	2021-01-13 23:21:52.366499	2021-01-13 23:21:52.366499	\N	\N
53	169	32	\N	2021-01-13 23:21:52.452238	2021-01-13 23:21:52.452238	\N	\N
54	170	24	\N	2021-01-13 23:21:52.530786	2021-01-13 23:21:52.530786	\N	\N
55	171	44	\N	2021-01-13 23:21:52.598025	2021-01-13 23:21:52.598025	\N	\N
56	172	41	\N	2021-01-13 23:21:52.668949	2021-01-13 23:21:52.668949	\N	\N
57	173	29	\N	2021-01-13 23:21:52.723423	2021-01-13 23:21:52.723423	\N	\N
58	174	50	\N	2021-01-13 23:21:52.783291	2021-01-13 23:21:52.783291	\N	\N
59	175	27	\N	2021-01-13 23:21:52.837602	2021-01-13 23:21:52.837602	\N	\N
60	176	31	\N	2021-01-13 23:21:52.889937	2021-01-13 23:21:52.889937	\N	\N
61	177	42	\N	2021-01-13 23:21:52.94805	2021-01-13 23:21:52.94805	\N	\N
62	178	31	\N	2021-01-13 23:21:53.003545	2021-01-13 23:21:53.003545	\N	\N
63	179	46	\N	2021-01-13 23:21:53.064942	2021-01-13 23:21:53.064942	\N	\N
64	180	37	\N	2021-01-13 23:21:53.214772	2021-01-13 23:21:53.214772	\N	\N
65	181	24	\N	2021-01-13 23:21:53.293291	2021-01-13 23:21:53.293291	\N	\N
66	182	49	\N	2021-01-13 23:21:53.513305	2021-01-13 23:21:53.513305	\N	\N
67	183	37	\N	2021-01-13 23:21:53.607232	2021-01-13 23:21:53.607232	\N	\N
68	184	21	\N	2021-01-13 23:21:53.707943	2021-01-13 23:21:53.707943	\N	\N
69	185	40	\N	2021-01-13 23:21:53.911801	2021-01-13 23:21:53.911801	\N	\N
70	186	24	\N	2021-01-13 23:21:54.067796	2021-01-13 23:21:54.067796	\N	\N
71	187	24	\N	2021-01-13 23:21:54.175668	2021-01-13 23:21:54.175668	\N	\N
72	188	23	\N	2021-01-13 23:21:54.242539	2021-01-13 23:21:54.242539	\N	\N
73	189	41	\N	2021-01-13 23:21:54.316734	2021-01-13 23:21:54.316734	\N	\N
74	190	31	\N	2021-01-13 23:21:54.377456	2021-01-13 23:21:54.377456	\N	\N
75	191	49	\N	2021-01-13 23:21:54.441117	2021-01-13 23:21:54.441117	\N	\N
76	192	24	\N	2021-01-13 23:21:54.521439	2021-01-13 23:21:54.521439	\N	\N
77	193	46	\N	2021-01-13 23:21:54.58939	2021-01-13 23:21:54.58939	\N	\N
78	194	49	\N	2021-01-13 23:21:54.658064	2021-01-13 23:21:54.658064	\N	\N
79	195	45	\N	2021-01-13 23:21:54.714976	2021-01-13 23:21:54.714976	\N	\N
80	196	48	\N	2021-01-13 23:21:54.779673	2021-01-13 23:21:54.779673	\N	\N
81	197	44	\N	2021-01-13 23:21:54.836981	2021-01-13 23:21:54.836981	\N	\N
82	198	27	\N	2021-01-13 23:21:54.900369	2021-01-13 23:21:54.900369	\N	\N
83	199	25	\N	2021-01-13 23:21:54.96053	2021-01-13 23:21:54.96053	\N	\N
84	200	47	\N	2021-01-13 23:21:55.016962	2021-01-13 23:21:55.016962	\N	\N
85	201	46	\N	2021-01-13 23:21:55.085434	2021-01-13 23:21:55.085434	\N	\N
86	202	26	\N	2021-01-13 23:21:55.279151	2021-01-13 23:21:55.279151	\N	\N
87	203	35	\N	2021-01-13 23:21:55.476651	2021-01-13 23:21:55.476651	\N	\N
88	204	38	\N	2021-01-13 23:21:55.555029	2021-01-13 23:21:55.555029	\N	\N
89	205	49	\N	2021-01-13 23:21:55.658002	2021-01-13 23:21:55.658002	\N	\N
90	206	36	\N	2021-01-13 23:21:55.727558	2021-01-13 23:21:55.727558	\N	\N
91	207	28	\N	2021-01-13 23:21:55.83517	2021-01-13 23:21:55.83517	\N	\N
92	208	37	\N	2021-01-13 23:21:55.976969	2021-01-13 23:21:55.976969	\N	\N
93	209	24	\N	2021-01-13 23:21:56.085374	2021-01-13 23:21:56.085374	\N	\N
94	210	32	\N	2021-01-13 23:21:56.537447	2021-01-13 23:21:56.537447	\N	\N
95	211	49	\N	2021-01-13 23:21:56.693057	2021-01-13 23:21:56.693057	\N	\N
96	212	38	\N	2021-01-13 23:21:56.888859	2021-01-13 23:21:56.888859	\N	\N
97	213	35	\N	2021-01-13 23:21:57.143902	2021-01-13 23:21:57.143902	\N	\N
98	214	24	\N	2021-01-13 23:21:57.295431	2021-01-13 23:21:57.295431	\N	\N
99	215	31	\N	2021-01-13 23:21:57.381572	2021-01-13 23:21:57.381572	\N	\N
100	216	49	\N	2021-01-13 23:21:57.443455	2021-01-13 23:21:57.443455	\N	\N
101	217	48	\N	2021-01-13 23:21:57.509768	2021-01-13 23:21:57.509768	\N	\N
102	218	31	\N	2021-01-13 23:21:57.59235	2021-01-13 23:21:57.59235	\N	\N
103	219	32	\N	2021-01-13 23:21:57.728198	2021-01-13 23:21:57.728198	\N	\N
104	220	37	\N	2021-01-13 23:21:57.835466	2021-01-13 23:21:57.835466	\N	\N
105	221	25	\N	2021-01-13 23:21:57.888975	2021-01-13 23:21:57.888975	\N	\N
106	222	25	\N	2021-01-13 23:21:57.943898	2021-01-13 23:21:57.943898	\N	\N
107	223	37	\N	2021-01-13 23:21:58.005909	2021-01-13 23:21:58.005909	\N	\N
108	224	50	\N	2021-01-13 23:21:58.069494	2021-01-13 23:21:58.069494	\N	\N
109	225	49	\N	2021-01-13 23:21:58.171038	2021-01-13 23:21:58.171038	\N	\N
110	226	23	\N	2021-01-13 23:21:58.254529	2021-01-13 23:21:58.254529	\N	\N
111	227	34	\N	2021-01-13 23:21:58.328633	2021-01-13 23:21:58.328633	\N	\N
112	228	20	\N	2021-01-13 23:21:58.392883	2021-01-13 23:21:58.392883	\N	\N
113	229	37	\N	2021-01-13 23:21:58.472697	2021-01-13 23:21:58.472697	\N	\N
114	230	27	\N	2021-01-13 23:21:58.590477	2021-01-13 23:21:58.590477	\N	\N
115	231	25	\N	2021-01-13 23:21:58.773235	2021-01-13 23:21:58.773235	\N	\N
116	232	28	\N	2021-01-13 23:21:58.874729	2021-01-13 23:21:58.874729	\N	\N
117	235	3	\N	2021-01-14 20:25:11.94906	2021-01-14 20:25:11.94906	\N	\N
118	236	7	\N	2021-01-14 20:25:26.461043	2021-01-14 20:25:26.461043	\N	\N
119	155	7	\N	2021-01-14 20:34:23.260156	2021-01-14 20:34:23.260156	\N	\N
120	235	-1	\N	2021-01-14 21:58:22.947398	2021-01-14 21:58:22.947398	Spree::Shipment	16
121	235	100	\N	2021-01-17 20:26:33.874419	2021-01-17 20:26:33.874419	\N	\N
122	235	-1	\N	2021-01-17 22:24:37.121098	2021-01-17 22:24:37.121098	Spree::Shipment	19
123	238	30	\N	2021-01-17 23:03:43.153352	2021-01-17 23:03:43.153352	\N	\N
124	239	40	\N	2021-01-17 23:04:03.196877	2021-01-17 23:04:03.196877	\N	\N
125	244	30	\N	2021-01-17 23:18:19.383302	2021-01-17 23:18:19.383302	\N	\N
126	245	25	\N	2021-01-17 23:18:31.734364	2021-01-17 23:18:31.734364	\N	\N
127	241	40	\N	2021-01-17 23:20:39.878669	2021-01-17 23:20:39.878669	\N	\N
128	242	30	\N	2021-01-17 23:20:51.671915	2021-01-17 23:20:51.671915	\N	\N
\.


--
-- Data for Name: spree_stock_transfers; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_stock_transfers (id, type, reference, source_location_id, destination_location_id, created_at, updated_at, number) FROM stdin;
\.


--
-- Data for Name: spree_store_credit_categories; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_store_credit_categories (id, name, created_at, updated_at) FROM stdin;
1	Default	2021-01-13 23:01:15.719813	2021-01-13 23:01:15.719813
\.


--
-- Data for Name: spree_store_credit_events; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_store_credit_events (id, store_credit_id, action, amount, authorization_code, user_total_amount, originator_id, originator_type, deleted_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_store_credit_types; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_store_credit_types (id, name, priority, created_at, updated_at) FROM stdin;
1	Expiring	1	2021-01-13 22:59:11.194851	2021-01-13 22:59:11.194851
2	Non-expiring	2	2021-01-13 22:59:11.199593	2021-01-13 22:59:11.199593
\.


--
-- Data for Name: spree_store_credits; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_store_credits (id, user_id, category_id, created_by_id, amount, amount_used, memo, deleted_at, currency, amount_authorized, originator_id, originator_type, type_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: spree_stores; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_stores (id, name, url, meta_description, meta_keywords, seo_title, mail_from_address, default_currency, code, "default", created_at, updated_at, facebook, twitter, instagram) FROM stdin;
1	nike demo	localhost:3000	nike con spree		nike  Demo Shop	spree@example.com	CLP	spree	t	2021-01-13 22:59:05.144297	2021-01-16 20:57:42.010586	www.twitter.com/nike	www.facebook.com/nike	www.instagram.com/nike
\.


--
-- Data for Name: spree_tax_categories; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_tax_categories (id, name, description, is_default, deleted_at, created_at, updated_at, tax_code) FROM stdin;
1	sin impuesto	N/A	f	\N	2021-01-13 23:19:24.964367	2021-01-14 21:54:30.881758	N/A
2	IVA	impuesto al valor agregado chile	t	\N	2021-01-14 21:54:30.88388	2021-01-14 21:54:30.88388	iva
\.


--
-- Data for Name: spree_tax_rates; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_tax_rates (id, amount, zone_id, tax_category_id, included_in_price, created_at, updated_at, name, show_rate_in_label, deleted_at) FROM stdin;
2	0.00000	3	2	f	2021-01-14 21:54:53.789012	2021-01-14 21:54:53.789012	no aplica	t	\N
1	0.19000	3	1	t	2021-01-13 23:19:25.011081	2021-01-14 21:57:15.705176	iva chile	f	\N
\.


--
-- Data for Name: spree_taxonomies; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_taxonomies (id, name, created_at, updated_at, "position") FROM stdin;
1	Categorías	2021-01-13 23:19:25.055345	2021-01-18 22:08:31.573432	1
\.


--
-- Data for Name: spree_taxons; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_taxons (id, parent_id, "position", name, permalink, taxonomy_id, lft, rgt, description, created_at, updated_at, meta_title, meta_description, meta_keywords, depth, hide_from_nav) FROM stdin;
16	4	0	Vestidos	infantil/dresses-g	1	31	32		2021-01-13 23:19:27.757931	2021-01-18 22:08:31.545859				2	f
25	22	0	Tendencias	colecciones/tendencias	1	43	44	\N	2021-01-14 23:00:11.540041	2021-01-18 22:08:31.545859	\N	\N	\N	2	f
22	1	0	Colecciones	colecciones	1	42	45		2021-01-13 23:19:28.249928	2021-01-18 22:08:31.545859				1	f
8	2	0	Chaquetas y abrigos	hombres/jackets-and-coats	1	7	8		2021-01-13 23:19:27.044438	2021-01-17 23:16:16.612478				2	f
27	3	0	Calzado	mujeres/calzado	1	25	26		2021-01-16 19:13:52.614896	2021-01-16 19:14:05.805086				2	f
23	2	0	Calzado	hombres/calzado	1	9	10		2021-01-14 22:55:41.565714	2021-01-17 22:54:48.147268				2	f
24	4	0	Calzado	infantil/calzado	1	35	36	\N	2021-01-14 22:58:36.167258	2021-01-17 22:54:48.178648	\N	\N	\N	2	f
26	2	0	Pantalones Deportivos	hombres/pants-m	1	11	12		2021-01-16 17:01:11.326321	2021-01-18 22:07:03.959587				2	f
20	1	0	Liquidación	liquidacion	1	40	41		2021-01-13 23:19:28.075278	2021-01-18 22:07:03.959587				1	f
19	1	0	Nuevos Lanzamientos	newest	1	38	39		2021-01-13 23:19:27.993619	2021-01-18 22:07:47.560567				1	f
15	4	0	Tops	infantil/tops	1	29	30		2021-01-13 23:19:27.681573	2021-01-18 22:08:31.545859				2	f
7	2	0	Sueters	hombres/sweaters	1	5	6		2021-01-13 23:19:26.961129	2021-01-17 23:16:16.692164				2	f
14	3	0	Chaquetas y Abrigos	mujeres/jackets-and-coats	1	23	24		2021-01-13 23:19:27.600976	2021-01-17 23:16:16.736892				2	f
17	4	0	Pantalones	infantil/pants-c	1	33	34		2021-01-13 23:19:27.834976	2021-01-17 22:54:48.209129				2	f
4	1	0	Infantil	infantil	1	28	37		2021-01-13 23:19:26.658469	2021-01-18 22:08:31.545859				1	f
6	2	0	Poleras	hombres/poleras-m	1	3	4		2021-01-13 23:19:26.875076	2021-01-17 23:16:16.765652				2	f
10	3	0	Vestidos	mujeres/dresses	1	17	18		2021-01-13 23:19:27.261237	2021-01-18 22:07:47.560567				2	f
9	3	0	Faldas	mujeres/skirts	1	15	16	\N	2021-01-13 23:19:27.141583	2021-01-18 22:07:47.560567	\N	\N	\N	2	f
12	3	0	Sueters	mujeres/sweaters	1	19	20		2021-01-13 23:19:27.439526	2021-01-18 22:05:13.761891				2	f
2	1	0	Hombres	hombres	1	2	13	ropa para onvre	2021-01-13 23:19:26.094815	2021-01-18 22:07:03.959587				1	f
3	1	0	Mujeres	mujeres	1	14	27	ropa de mujer	2021-01-13 23:19:26.253082	2021-01-18 22:07:47.560567				1	f
13	3	0	Poleras y Tops	mujeres/tops-and-t-shirts	1	21	22		2021-01-13 23:19:27.5219	2021-01-18 22:07:47.560567				2	f
1	\N	0	Categorías	categories	1	1	46	\N	2021-01-13 23:19:25.125424	2021-01-18 22:08:31.545859	\N	\N	\N	0	f
\.


--
-- Data for Name: spree_trackers; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_trackers (id, analytics_id, active, created_at, updated_at, engine) FROM stdin;
\.


--
-- Data for Name: spree_users; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_users (id, encrypted_password, password_salt, email, remember_token, persistence_token, reset_password_token, perishable_token, sign_in_count, failed_attempts, last_request_at, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, login, ship_address_id, bill_address_id, authentication_token, unlock_token, locked_at, reset_password_sent_at, created_at, updated_at, spree_api_key, remember_created_at, deleted_at, confirmation_token, confirmed_at, confirmation_sent_at) FROM stdin;
2	884ba61e1f249c953635d0474731e832af216542df0cb4728b613b469796d1fa19d68d9c81583e0af42279eb96aa9b579ad8a6b2e1d1bc146c3960e76cebc6b4	nbqS9qzwwgHYUDwXzEEy	francisca.vielma@gmail.com	\N	\N	\N	\N	5	0	\N	2021-01-14 21:41:11.818255	2021-01-14 21:34:44.380756	127.0.0.1	127.0.0.1	francisca.vielma@gmail.com	3	3	\N	\N	\N	\N	2021-01-14 01:58:43.929693	2021-01-14 21:41:11.818572	\N	\N	\N	\N	\N	\N
1	df1bccf345d18d9ff6f21c4847bf112efd712a89985766e88bfa337520a073c5581e6131680bf609828098c3a8ba03211fdd9e3caac152df281fd6403f3ea0f1	Nny6x3yH2HHG9xd2Hszo	spree@example.com	\N	\N	\N	\N	10	0	\N	2021-01-17 21:23:00.497974	2021-01-17 16:37:19.944177	::1	127.0.0.1	spree@example.com	4	4	\N	\N	\N	\N	2021-01-13 23:19:19.167695	2021-01-17 21:23:00.498535	06a089f82b66c76aa6e3777b95560ca09f0bae501c5e14a0	\N	\N	\N	\N	\N
\.


--
-- Data for Name: spree_variants; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_variants (id, sku, weight, height, width, depth, deleted_at, is_master, product_id, cost_price, "position", cost_currency, track_inventory, tax_category_id, updated_at, discontinue_on, created_at) FROM stdin;
2	Shirts_checkedshirt_21.99	0.00	\N	\N	\N	\N	t	2	\N	1	USD	t	\N	2021-01-13 23:21:47.468736	\N	2021-01-13 23:19:28.788653
16	T-shirts_raw-edget-shirt_63.99	0.00	\N	\N	\N	2021-01-17 19:58:03.633912	t	16	\N	1	USD	t	\N	2021-01-17 19:58:03.63358	\N	2021-01-13 23:19:31.305229
8	Shirts_checkedslimfitshirt_42.99	0.00	\N	\N	\N	2021-01-17 20:01:10.705363	t	8	\N	1	USD	t	\N	2021-01-17 20:01:10.704977	\N	2021-01-13 23:19:29.869507
61	ShirtsandBlouses_printedwrappedblouse_12.99	0.00	\N	\N	\N	2021-01-17 19:58:07.895452	t	61	\N	1	USD	t	\N	2021-01-17 19:58:07.894883	\N	2021-01-13 23:19:39.988583
3	Shirts_coveredplacketshirt_57.99	0.00	\N	\N	\N	2021-01-17 20:01:22.932347	t	3	\N	1	USD	t	\N	2021-01-17 20:01:22.931989	\N	2021-01-13 23:19:28.970228
31	JacketsandCoats_denimjacket_84.99	0.00	\N	\N	\N	2021-01-17 20:01:28.36919	t	31	\N	1	USD	t	\N	2021-01-17 20:01:28.368803	\N	2021-01-13 23:19:34.243424
53	Dresses_printedslit-sleevesdress_61.99	0.00	\N	\N	\N	2021-01-17 19:58:17.702733	t	53	\N	1	USD	t	\N	2021-01-17 19:58:17.702385	\N	2021-01-13 23:19:38.565382
6	Shirts_printedshortsleeveshirt_57.99	0.00	\N	\N	\N	2021-01-17 19:58:21.697519	t	6	\N	1	USD	t	\N	2021-01-17 19:58:21.697176	\N	2021-01-13 23:19:29.510792
52	Dresses_printeddress_45.99	0.00	\N	\N	\N	2021-01-17 19:58:46.049698	t	52	\N	1	USD	t	\N	2021-01-17 19:58:46.049366	\N	2021-01-13 23:19:38.376317
9	Shirts_dottedshirt_53.99	0.00	\N	\N	\N	2021-01-17 20:01:33.158127	t	9	\N	1	USD	t	\N	2021-01-17 20:01:33.157721	\N	2021-01-13 23:19:30.054854
12	T-shirts_polot-shirt_50.99	0.00	\N	\N	\N	2021-01-17 19:58:50.051603	t	12	\N	1	USD	t	\N	2021-01-17 19:58:50.051126	\N	2021-01-13 23:19:30.592676
62	ShirtsandBlouses_pleatedsleevev-neckshirt_98.99	0.00	\N	\N	\N	2021-01-17 19:58:52.515818	t	62	\N	1	USD	t	\N	2021-01-17 19:58:52.515424	\N	2021-01-13 23:19:40.175683
45	Skirts_pleatedskirt2_65.99	0.00	\N	\N	\N	2021-01-17 19:58:56.104122	t	45	\N	1	USD	t	\N	2021-01-17 19:58:56.103748	\N	2021-01-13 23:19:37.043521
35	JacketsandCoats_jacketwithliner_12.99	0.00	\N	\N	\N	2021-01-17 20:01:35.638079	t	35	\N	1	USD	t	\N	2021-01-17 20:01:35.637683	\N	2021-01-13 23:19:35.048411
55	Dresses_v-neckfloraldress_32.99	0.00	\N	\N	\N	2021-01-17 20:01:40.324452	t	55	\N	1	USD	t	\N	2021-01-17 20:01:40.324046	\N	2021-01-13 23:19:38.918518
54	Dresses_dresswithbelt_58.99	0.00	\N	\N	\N	2021-01-17 20:01:43.367223	t	54	\N	1	USD	t	\N	2021-01-17 20:01:43.366823	\N	2021-01-13 23:19:38.738423
37	Skirts_midiskirtwithbottoms_42.99	0.00	\N	\N	\N	2021-01-17 19:59:10.744953	t	37	\N	1	USD	t	\N	2021-01-17 19:59:10.744537	\N	2021-01-13 23:19:35.480393
68	ShirtsandBlouses_v-neckshirt_63.99	0.00	\N	\N	\N	2021-01-17 22:45:34.54815	t	68	\N	1	USD	t	\N	2021-01-17 22:45:34.547772	\N	2021-01-13 23:19:41.418229
13	T-shirts_longsleevet-shirt_61.99	0.00	\N	\N	\N	2021-01-17 19:59:25.630468	t	13	\N	1	USD	t	\N	2021-01-17 19:59:25.630126	\N	2021-01-13 23:19:30.776085
24	Sweaters_longsleevesweatshirt_66.99	0.00	\N	\N	\N	2021-01-17 19:59:27.721648	t	24	\N	1	USD	t	\N	2021-01-17 19:59:27.721211	\N	2021-01-13 23:19:32.8983
47	Dresses_v-neckfloralmaxidress_14.99	0.00	\N	\N	\N	2021-01-17 22:45:49.92995	t	47	\N	1	USD	t	\N	2021-01-17 22:45:49.929545	\N	2021-01-13 23:19:37.461845
237	pants_hombre_semiformal	0.00	\N	\N	\N	\N	t	119	\N	1	CLP	t	\N	2021-01-17 23:19:53.949013	\N	2021-01-17 22:47:02.290715
50	Dresses_longsleeveknitteddress_32.99	0.00	\N	\N	\N	2021-01-17 19:59:29.76189	t	50	\N	1	USD	t	\N	2021-01-17 19:59:29.761532	\N	2021-01-13 23:19:38.011152
240	vestido_kimono_girl	0.00	\N	\N	\N	\N	t	120	\N	1	CLP	t	\N	2021-01-17 23:10:09.954178	\N	2021-01-17 23:05:13.390336
39	Skirts_a-linesuedeskirt_13.99	0.00	\N	\N	\N	\N	t	39	\N	1	USD	t	\N	2021-01-13 23:19:35.890473	\N	2021-01-13 23:19:35.864676
27	Sweaters_longsleevejumper_71.99	0.00	\N	\N	\N	2021-01-17 19:59:35.123608	t	27	\N	1	USD	t	\N	2021-01-17 19:59:35.123118	\N	2021-01-13 23:19:33.469328
10	Shirts_linenshirt_75.99	0.00	\N	\N	\N	2021-01-17 19:59:39.773341	t	10	\N	1	USD	t	\N	2021-01-17 19:59:39.772928	\N	2021-01-13 23:19:30.233982
40	Skirts_leatherskirtwithlacing_22.99	0.00	\N	\N	\N	2021-01-17 19:59:44.533849	t	40	\N	1	USD	t	\N	2021-01-17 19:59:44.533512	\N	2021-01-13 23:19:36.058343
23	Sweaters_jumper_26.99	0.00	\N	\N	\N	2021-01-17 20:00:01.288395	t	23	\N	1	USD	t	\N	2021-01-17 20:00:01.288065	\N	2021-01-13 23:19:32.721859
25	Sweaters_hoodie_21.99	0.00	\N	\N	\N	2021-01-17 20:00:05.86999	t	25	\N	1	USD	t	\N	2021-01-17 20:00:05.869672	\N	2021-01-13 23:19:33.07637
29	JacketsandCoats_hoodedjacket_30.99	0.00	\N	\N	\N	2021-01-17 20:00:09.569288	t	29	\N	1	USD	t	\N	2021-01-17 20:00:09.568884	\N	2021-01-13 23:19:33.866985
20	Sweaters_highnecksweater_89.99	0.00	\N	\N	\N	2021-01-17 20:00:18.174592	t	20	\N	1	USD	t	\N	2021-01-17 20:00:18.174178	\N	2021-01-13 23:19:32.0796
56	Dresses_flounceddress_65.99	0.00	\N	\N	\N	2021-01-17 20:00:20.513532	t	56	\N	1	USD	t	\N	2021-01-17 20:00:20.513179	\N	2021-01-13 23:19:39.095494
46	Dresses_floralwrapdress_54.99	0.00	\N	\N	\N	2021-01-17 20:00:23.991946	t	46	\N	1	USD	t	\N	2021-01-17 20:00:23.991574	\N	2021-01-13 23:19:37.273146
44	Skirts_floralflaredskirt_46.99	0.00	\N	\N	\N	2021-01-17 20:00:30.084726	t	44	\N	1	USD	t	\N	2021-01-17 20:00:30.084336	\N	2021-01-13 23:19:36.853417
41	Skirts_flaredskirt_20.99	0.00	\N	\N	\N	2021-01-17 20:00:33.309099	t	41	\N	1	USD	t	\N	2021-01-17 20:00:33.30863	\N	2021-01-13 23:19:36.263864
36	Skirts_flaredmidiskirt_63.99	0.00	\N	\N	\N	2021-01-17 20:00:36.317437	t	36	\N	1	USD	t	\N	2021-01-17 20:00:36.317081	\N	2021-01-13 23:19:35.280675
48	Dresses_flareddress_38.99	0.00	\N	\N	\N	2021-01-17 20:00:38.973451	t	48	\N	1	USD	t	\N	2021-01-17 20:00:38.973119	\N	2021-01-13 23:19:37.643173
38	Skirts_fittedskirt_58.99	0.00	\N	\N	\N	2021-01-17 20:00:41.48134	t	38	\N	1	USD	t	\N	2021-01-17 20:00:41.480976	\N	2021-01-13 23:19:35.679831
49	Dresses_elegantflareddress_87.99	0.00	\N	\N	\N	2021-01-17 20:00:44.050166	t	49	\N	1	USD	t	\N	2021-01-17 20:00:44.049708	\N	2021-01-13 23:19:37.832569
65	ShirtsandBlouses_elegantblousewithchocker_25.99	0.00	\N	\N	\N	2021-01-17 20:00:47.685245	t	65	\N	1	USD	t	\N	2021-01-17 20:00:47.684866	\N	2021-01-13 23:19:40.850034
1	Shirts_denimshirt_87.99	0.00	\N	\N	\N	\N	t	1	\N	1	USD	t	\N	2021-01-13 23:21:47.4168	\N	2021-01-13 23:19:28.563094
19	T-shirts_basict-shirt_36.99	0.00	\N	\N	\N	2021-01-14 21:21:25.389098	t	19	\N	1	USD	t	\N	2021-01-14 21:21:25.388738	\N	2021-01-13 23:19:31.901066
26	Sweaters_zippedhighnecksweater_74.99	0.00	\N	\N	\N	2021-01-17 19:55:15.508345	t	26	\N	1	USD	t	\N	2021-01-17 19:55:15.507909	\N	2021-01-13 23:19:33.263493
32	JacketsandCoats_wool-blendshortcoat_52.99	0.00	\N	\N	\N	2021-01-17 19:55:19.807869	t	32	\N	1	USD	t	\N	2021-01-17 19:55:19.807466	\N	2021-01-13 23:19:34.443024
34	JacketsandCoats_wool-blendcoat_17.99	0.00	\N	\N	\N	2021-01-17 19:55:27.505781	t	34	\N	1	USD	t	\N	2021-01-17 19:55:27.505365	\N	2021-01-13 23:19:34.838525
60	ShirtsandBlouses_v-neckwideshirt_74.99	0.00	\N	\N	\N	2021-01-17 19:55:34.599235	t	60	\N	1	USD	t	\N	2021-01-17 19:55:34.598896	\N	2021-01-13 23:19:39.804033
17	T-shirts_v-neckt-shirt_20.99	0.00	\N	\N	\N	2021-01-17 19:56:11.821019	t	17	\N	1	USD	t	\N	2021-01-17 19:56:11.820616	\N	2021-01-13 23:19:31.486476
21	Sweaters_strippedjumper_92.99	0.00	\N	\N	\N	2021-01-17 19:56:17.839102	t	21	\N	1	USD	t	\N	2021-01-17 19:56:17.838726	\N	2021-01-13 23:19:32.320083
51	Dresses_stripedshirtdress_82.99	0.00	\N	\N	\N	2021-01-17 19:56:21.37186	t	51	\N	1	USD	t	\N	2021-01-17 19:56:21.371429	\N	2021-01-13 23:19:38.198794
28	JacketsandCoats_suedebikerjacket_44.99	0.00	\N	\N	\N	2021-01-17 19:56:29.247394	t	28	\N	1	USD	t	\N	2021-01-17 19:56:29.247054	\N	2021-01-13 23:19:33.678269
15	T-shirts_t-shirtwithholes_94.99	0.00	\N	\N	\N	2021-01-17 19:56:33.467138	t	15	\N	1	USD	t	\N	2021-01-17 19:56:33.466751	\N	2021-01-13 23:19:31.128341
18	T-shirts_tanktop_77.99	0.00	\N	\N	\N	2021-01-17 19:56:49.935412	t	18	\N	1	USD	t	\N	2021-01-17 19:56:49.935055	\N	2021-01-13 23:19:31.697779
57	Dresses_slitmaxidress_79.99	0.00	\N	\N	\N	2021-01-17 19:57:08.246923	t	57	\N	1	USD	t	\N	2021-01-17 19:57:08.246495	\N	2021-01-13 23:19:39.276225
4	Shirts_slimfitshirt_85.99	0.00	\N	\N	\N	2021-01-17 19:57:11.587	t	4	\N	1	USD	t	\N	2021-01-17 19:57:11.58656	\N	2021-01-13 23:19:29.148607
43	Skirts_skatershortskirt_20.99	0.00	\N	\N	\N	2021-01-17 19:57:19.208744	t	43	\N	1	USD	t	\N	2021-01-17 19:57:19.208361	\N	2021-01-13 23:19:36.65597
42	Skirts_skaterskirt_60.99	0.00	\N	\N	\N	2021-01-17 19:57:23.567049	t	42	\N	1	USD	t	\N	2021-01-17 19:57:23.56671	\N	2021-01-13 23:19:36.465395
5	Shirts_shortsleeveshirt_45.99	0.00	\N	\N	\N	2021-01-17 19:57:27.516728	t	5	\N	1	USD	t	\N	2021-01-17 19:57:27.516315	\N	2021-01-13 23:19:29.335391
58	ShirtsandBlouses_semi-sheershirtwithfloralcuffs_41.99	0.00	\N	\N	\N	2021-01-17 19:57:43.496575	t	58	\N	1	USD	t	\N	2021-01-17 19:57:43.496178	\N	2021-01-13 23:19:39.454272
7	Shirts_regularshirt_33.99	0.00	\N	\N	\N	2021-01-17 19:57:59.820585	t	7	\N	1	USD	t	\N	2021-01-17 19:57:59.820208	\N	2021-01-13 23:19:29.700075
33	JacketsandCoats_downjacketwithhood_80.99	0.00	\N	\N	\N	2021-01-17 20:00:50.933997	t	33	\N	1	USD	t	\N	2021-01-17 20:00:50.933377	\N	2021-01-13 23:19:34.645354
63	ShirtsandBlouses_cottonshirt_81.99	0.00	\N	\N	\N	2021-01-17 20:01:15.988306	t	63	\N	1	USD	t	\N	2021-01-17 20:01:15.987949	\N	2021-01-13 23:19:40.477332
124	Shirts_checkedslimfitshirt_42.99_black_xs	0.00	\N	\N	\N	2021-01-17 20:01:10.793464	f	8	42.99	2	USD	t	1	2021-01-17 20:01:10.793097	\N	2021-01-13 23:21:26.007174
85	JacketsandCoats_coatwithpockets_15.99	0.00	\N	\N	\N	2021-01-17 20:01:13.701008	t	85	\N	1	USD	t	\N	2021-01-17 20:01:13.700627	\N	2021-01-13 23:19:45.845695
76	TopsandT-shirts_croptopwithtie_82.99	0.00	\N	\N	\N	2021-01-17 20:01:20.904439	t	76	\N	1	USD	t	\N	2021-01-17 20:01:20.904078	\N	2021-01-13 23:19:43.001573
132	T-shirts_raw-edget-shirt_63.99_brown_xs	0.00	\N	\N	\N	2021-01-17 19:58:03.700196	f	16	63.99	2	USD	t	1	2021-01-17 19:58:03.699861	\N	2021-01-13 23:21:27.365632
75	Sweaters_croppedfittedsweater_39.99	0.00	\N	\N	\N	2021-01-17 20:01:24.694875	t	75	\N	1	USD	t	\N	2021-01-17 20:01:24.694503	\N	2021-01-13 23:19:42.803806
95	JacketsandCoats_denimhoodedjacket_92.99	0.00	\N	\N	\N	2021-01-17 20:01:26.586364	t	95	\N	1	USD	t	\N	2021-01-17 20:01:26.585948	\N	2021-01-13 23:19:49.435124
77	TopsandT-shirts_printedt-shirt_23.99	0.00	\N	\N	\N	2021-01-17 19:58:12.088871	t	77	\N	1	USD	t	\N	2021-01-17 19:58:12.088496	\N	2021-01-13 23:19:43.196703
69	ShirtsandBlouses_printedshirt_90.99	0.00	\N	\N	\N	2021-01-17 19:58:27.331292	t	69	\N	1	USD	t	\N	2021-01-17 19:58:27.330402	\N	2021-01-13 23:19:41.600825
125	Shirts_dottedshirt_53.99_white_xs	0.00	\N	\N	\N	2021-01-17 20:01:33.233303	f	9	53.99	2	USD	t	1	2021-01-17 20:01:33.232837	\N	2021-01-13 23:21:26.225203
106	Sweatshirts_leightweightrunningjacket_33.99	0.00	\N	\N	\N	2021-01-17 20:01:46.317932	t	106	\N	1	USD	t	\N	2021-01-17 20:01:46.317513	\N	2021-01-13 23:19:52.559889
127	Shirts_regularshirtwithrolledupsleeves_84.99_light_blue_xs	0.00	\N	\N	\N	2021-01-17 19:58:30.888976	f	11	84.99	2	USD	t	1	2021-01-17 19:58:30.888627	\N	2021-01-13 23:21:26.585782
112	Pants_printedpantswithholes_50.99	0.00	\N	\N	\N	2021-01-17 19:58:34.232648	t	112	\N	1	USD	t	\N	2021-01-17 19:58:34.232306	\N	2021-01-13 23:19:54.540435
114	Pants_printedpants_27.99	0.00	\N	\N	\N	2021-01-17 19:58:37.791376	t	114	\N	1	USD	t	\N	2021-01-17 19:58:37.79105	\N	2021-01-13 23:19:55.238147
128	T-shirts_polot-shirt_50.99_light_blue_xs	0.00	\N	\N	\N	2021-01-17 19:58:50.13415	f	12	50.99	2	USD	t	1	2021-01-17 19:58:50.133716	\N	2021-01-13 23:21:26.699297
79	TopsandT-shirts_pleatedsleevet-shirt_66.99	0.00	\N	\N	\N	2021-01-17 19:58:54.444203	t	79	\N	1	USD	t	\N	2021-01-17 19:58:54.443818	\N	2021-01-13 23:19:43.571469
113	Pants_pants_45.99	0.00	\N	\N	\N	2021-01-17 19:58:58.81698	t	113	\N	1	USD	t	\N	2021-01-17 19:58:58.816504	\N	2021-01-13 23:19:54.904065
72	Sweaters_oversizedsweatshirt_75.99	0.00	\N	\N	\N	2021-01-17 19:59:01.064861	t	72	\N	1	USD	t	\N	2021-01-17 19:59:01.064517	\N	2021-01-13 23:19:42.17381
71	Sweaters_oversizedknittedsweater_12.99	0.00	\N	\N	\N	2021-01-17 19:59:03.203473	t	71	\N	1	USD	t	\N	2021-01-17 19:59:03.203093	\N	2021-01-13 23:19:41.980868
99	Tops_oversizet-shirtwrappedonback_26.99	0.00	\N	\N	\N	2021-01-17 19:59:05.254871	t	99	\N	1	USD	t	\N	2021-01-17 19:59:05.254073	\N	2021-01-13 23:19:50.646336
107	Sweatshirts_oversizesweatshirt_26.99	0.00	\N	\N	\N	2021-01-17 19:59:07.102824	t	107	\N	1	USD	t	\N	2021-01-17 19:59:07.102434	\N	2021-01-13 23:19:52.796033
91	JacketsandCoats_loose-fittedjacket_53.99	0.00	\N	\N	\N	2021-01-17 19:59:15.906439	t	91	\N	1	USD	t	\N	2021-01-17 19:59:15.906022	\N	2021-01-13 23:19:48.053499
118	Shirts_checkedshirt_21.99_red_xs	0.00	\N	\N	\N	\N	f	2	21.99	2	USD	t	1	2021-01-13 23:21:48.417869	\N	2021-01-13 23:21:24.677391
86	JacketsandCoats_longwool-blendcoatwithbelt_66.99	0.00	\N	\N	\N	2021-01-17 19:59:18.023176	t	86	\N	1	USD	t	\N	2021-01-17 19:59:18.022781	\N	2021-01-13 23:19:46.090849
98	Tops_longsleevesyogacroptop_84.99	0.00	\N	\N	\N	2021-01-17 19:59:21.435724	t	98	\N	1	USD	t	\N	2021-01-17 19:59:21.435308	\N	2021-01-13 23:19:50.328844
100	Tops_longsleevescroptop_20.99	0.00	\N	\N	\N	2021-01-17 19:59:23.468638	t	100	\N	1	USD	t	\N	2021-01-17 19:59:23.468296	\N	2021-01-13 23:19:50.928007
129	T-shirts_longsleevet-shirt_61.99_grey_xs	0.00	\N	\N	\N	2021-01-17 19:59:25.688862	f	13	61.99	2	USD	t	1	2021-01-17 19:59:25.688494	\N	2021-01-13 23:21:26.858221
88	JacketsandCoats_longcoatwithbelt_47.99	0.00	\N	\N	\N	2021-01-17 19:59:37.534795	t	88	\N	1	USD	t	\N	2021-01-17 19:59:37.534361	\N	2021-01-13 23:19:46.5929
126	Shirts_linenshirt_75.99_light_blue_xs	0.00	\N	\N	\N	2021-01-17 19:59:39.866468	f	10	75.99	2	USD	t	1	2021-01-17 19:59:39.866002	\N	2021-01-13 23:21:26.424524
93	JacketsandCoats_leatherbikerjacket_52.99	0.00	\N	\N	\N	2021-01-17 19:59:46.784205	t	93	\N	1	USD	t	\N	2021-01-17 19:59:46.783847	\N	2021-01-13 23:19:48.724565
101	Tops_lacedcroptop_83.99	0.00	\N	\N	\N	2021-01-17 19:59:48.709823	t	101	\N	1	USD	t	\N	2021-01-17 19:59:48.709463	\N	2021-01-13 23:19:51.171836
74	Sweaters_knittedv-necksweater_50.99	0.00	\N	\N	\N	2021-01-17 19:59:50.58634	t	74	\N	1	USD	t	\N	2021-01-17 19:59:50.585858	\N	2021-01-13 23:19:42.613028
73	Sweaters_knittedhighnecksweater_71.99	0.00	\N	\N	\N	2021-01-17 19:59:54.43631	t	73	\N	1	USD	t	\N	2021-01-17 19:59:54.435964	\N	2021-01-13 23:19:42.425098
116	Pants_highwaistpants_57.99	0.00	\N	\N	\N	2021-01-17 20:00:15.630367	t	116	\N	1	USD	t	\N	2021-01-17 20:00:15.630024	\N	2021-01-13 23:19:55.986635
89	JacketsandCoats_downjacket_64.99	0.00	\N	\N	\N	2021-01-17 20:00:53.434927	t	89	\N	1	USD	t	\N	2021-01-17 20:00:53.43457	\N	2021-01-13 23:19:46.965844
117	Shirts_denimshirt_87.99_blue_xs	0.00	\N	\N	\N	\N	f	1	87.99	2	USD	t	1	2021-01-13 23:21:48.333987	\N	2021-01-13 23:21:24.479238
87	JacketsandCoats_asymetriccoat_97.99	0.00	\N	\N	\N	2021-01-14 21:21:13.893206	t	87	\N	1	USD	t	\N	2021-01-14 21:21:13.892769	\N	2021-01-13 23:19:46.342711
84	TopsandT-shirts_basiclooset-shirt_88.99	0.00	\N	\N	\N	2021-01-14 21:21:21.966761	t	84	\N	1	USD	t	\N	2021-01-14 21:21:21.966337	\N	2021-01-13 23:19:45.097975
96	JacketsandCoats_bomberjacket_18.99	0.00	\N	\N	\N	2021-01-14 21:21:39.587631	t	96	\N	1	USD	t	\N	2021-01-14 21:21:39.587277	\N	2021-01-13 23:19:49.769222
90	JacketsandCoats_zippedjacket_73.99	0.00	\N	\N	\N	2021-01-17 19:55:10.326568	t	90	\N	1	USD	t	\N	2021-01-17 19:55:10.326105	\N	2021-01-13 23:19:47.670925
94	JacketsandCoats_wool-blendcoatwithbelt_38.99	0.00	\N	\N	\N	2021-01-17 19:55:23.812312	t	94	\N	1	USD	t	\N	2021-01-17 19:55:23.811985	\N	2021-01-13 23:19:49.078243
102	Tops_sportsbramediumsupport_99.99	0.00	\N	\N	\N	2021-01-17 19:56:42.096959	t	102	\N	1	USD	t	\N	2021-01-17 19:56:42.096548	\N	2021-01-13 23:19:51.419412
97	Tops_sportsbralowsupport_75.99	0.00	\N	\N	\N	2021-01-17 19:56:45.17058	t	97	\N	1	USD	t	\N	2021-01-17 19:56:45.170244	\N	2021-01-13 23:19:50.061253
103	Tops_sportsbra_66.99	0.00	\N	\N	\N	2021-01-17 19:56:54.365691	t	103	\N	1	USD	t	\N	2021-01-17 19:56:54.365267	\N	2021-01-13 23:19:51.716101
108	Sweatshirts_sportwindproofjacket_33.99	0.00	\N	\N	\N	2021-01-17 19:56:57.792161	t	108	\N	1	USD	t	\N	2021-01-17 19:56:57.791775	\N	2021-01-13 23:19:53.066066
109	Sweatshirts_sportwaistcoat_33.99	0.00	\N	\N	\N	2021-01-17 19:57:01.086065	t	109	\N	1	USD	t	\N	2021-01-17 19:57:01.085723	\N	2021-01-13 23:19:53.43057
104	Tops_sportcropptop_34.99	0.00	\N	\N	\N	2021-01-17 19:57:04.465438	t	104	\N	1	USD	t	\N	2021-01-17 19:57:04.465026	\N	2021-01-13 23:19:51.992892
120	Shirts_slimfitshirt_85.99_dark_blue_xs	0.00	\N	\N	\N	2021-01-17 19:57:11.632098	f	4	85.99	2	USD	t	1	2021-01-17 19:57:11.631705	\N	2021-01-13 23:21:25.168094
83	TopsandT-shirts_sleevelessloosetop_85.99	0.00	\N	\N	\N	2021-01-17 19:57:15.659361	t	83	\N	1	USD	t	\N	2021-01-17 19:57:15.658973	\N	2021-01-13 23:19:44.81235
111	Pants_shortpants_37.99	0.00	\N	\N	\N	2021-01-17 19:57:31.955213	t	111	\N	1	USD	t	\N	2021-01-17 19:57:31.954848	\N	2021-01-13 23:19:54.152236
110	Pants_shinedpants_57.99	0.00	\N	\N	\N	2021-01-17 19:57:36.052146	t	110	\N	1	USD	t	\N	2021-01-17 19:57:36.051765	\N	2021-01-13 23:19:53.796874
105	Sweatshirts_runningsweatshirt_39.99	0.00	\N	\N	\N	2021-01-17 19:57:48.502963	t	105	\N	1	USD	t	\N	2021-01-17 19:57:48.502567	\N	2021-01-13 23:19:52.28444
80	TopsandT-shirts_scrappycroptopwithtie_85.99	0.00	\N	\N	\N	2021-01-17 19:57:52.688379	t	80	\N	1	USD	t	\N	2021-01-17 19:57:52.68802	\N	2021-01-13 23:19:43.768834
78	TopsandT-shirts_scrappytop_31.99	0.00	\N	\N	\N	2021-01-17 19:57:56.586398	t	78	\N	1	USD	t	\N	2021-01-17 19:57:56.586031	\N	2021-01-13 23:19:43.377861
123	Shirts_regularshirt_33.99_blue_xs	0.00	\N	\N	\N	2021-01-17 19:57:59.877835	f	7	33.99	2	USD	t	1	2021-01-17 19:57:59.877403	\N	2021-01-13 23:21:25.846487
92	JacketsandCoats_double-breastedjacket_74.99	0.00	\N	\N	\N	2021-01-17 20:00:58.167963	t	92	\N	1	USD	t	\N	2021-01-17 20:00:58.16762	\N	2021-01-13 23:19:48.369862
122	Shirts_printedshortsleeveshirt_57.99_brown_xs	0.00	\N	\N	\N	2021-01-17 19:58:21.76431	f	6	57.99	2	USD	t	1	2021-01-17 19:58:21.763909	\N	2021-01-13 23:21:25.661361
177	ShirtsandBlouses_printedwrappedblouse_12.99_white_xs	0.00	\N	\N	\N	2021-01-17 19:58:07.962177	f	61	12.99	2	USD	t	1	2021-01-17 19:58:07.961804	\N	2021-01-13 23:21:37.087233
81	TopsandT-shirts_croptop_31.99	0.00	\N	\N	\N	2021-01-17 20:01:18.855341	t	81	\N	1	USD	t	\N	2021-01-17 20:01:18.854846	\N	2021-01-13 23:19:44.193707
169	Dresses_printedslit-sleevesdress_61.99_light_blue_mini_xs	0.00	\N	\N	\N	2021-01-17 19:58:17.799049	f	53	61.99	2	USD	t	1	2021-01-17 19:58:17.798679	\N	2021-01-13 23:21:35.422626
179	ShirtsandBlouses_cottonshirt_81.99_light_blue_xs	0.00	\N	\N	\N	2021-01-17 20:01:16.037459	f	63	81.99	2	USD	t	1	2021-01-17 20:01:16.037075	\N	2021-01-13 23:21:37.438451
119	Shirts_coveredplacketshirt_57.99_dark_blue_xs	0.00	\N	\N	\N	2021-01-17 20:01:23.012744	f	3	57.99	2	USD	t	1	2021-01-17 20:01:23.012363	\N	2021-01-13 23:21:24.907194
171	Dresses_v-neckfloraldress_32.99_light_blue_mini_xs	0.00	\N	\N	\N	2021-01-17 20:01:40.392545	f	55	32.99	2	USD	t	1	2021-01-17 20:01:40.392209	\N	2021-01-13 23:21:36.008667
170	Dresses_dresswithbelt_58.99_red_mini_xs	0.00	\N	\N	\N	2021-01-17 20:01:43.424953	f	54	58.99	2	USD	t	1	2021-01-17 20:01:43.424582	\N	2021-01-13 23:21:35.812323
168	Dresses_printeddress_45.99_light_blue_mini_xs	0.00	\N	\N	\N	2021-01-17 19:58:46.233602	f	52	45.99	2	USD	t	1	2021-01-17 19:58:46.233271	\N	2021-01-13 23:21:35.025104
184	ShirtsandBlouses_v-neckshirt_63.99_pink_xs	0.00	\N	\N	\N	2021-01-17 22:45:34.755073	f	68	63.99	2	USD	t	1	2021-01-17 22:45:34.754713	\N	2021-01-13 23:21:38.632558
178	ShirtsandBlouses_pleatedsleevev-neckshirt_98.99_orange_xs	0.00	\N	\N	\N	2021-01-17 19:58:52.570324	f	62	98.99	2	USD	t	1	2021-01-17 19:58:52.56995	\N	2021-01-13 23:21:37.274045
163	Dresses_v-neckfloralmaxidress_14.99_pink_mini_xs	0.00	\N	\N	\N	2021-01-17 22:45:50.03533	f	47	14.99	2	USD	t	1	2021-01-17 22:45:50.034938	\N	2021-01-13 23:21:32.676532
155	Skirts_a-linesuedeskirt_13.99_dark_blue_mini_xs	0.00	\N	\N	\N	\N	f	39	13.99	2	USD	t	1	2021-01-14 20:34:27.380815	\N	2021-01-13 23:21:30.755542
239	pants_semiformales_M_negro	0.00	\N	\N	\N	\N	f	119	\N	3	CLP	t	\N	2021-01-18 22:07:03.919709	\N	2021-01-17 22:56:11.069938
243	NF_dress_sport	0.00	\N	\N	\N	\N	t	121	\N	1	CLP	t	\N	2021-01-17 23:17:47.141623	\N	2021-01-17 23:12:21.444407
161	Skirts_pleatedskirt2_65.99_green_mini_xs	0.00	\N	\N	\N	2021-01-17 19:58:56.208245	f	45	65.99	2	USD	t	1	2021-01-17 19:58:56.207822	\N	2021-01-13 23:21:32.073046
188	Sweaters_oversizedsweatshirt_75.99_brown_xs	0.00	\N	\N	\N	2021-01-17 19:59:01.121675	f	72	75.99	2	USD	t	1	2021-01-17 19:59:01.121351	\N	2021-01-13 23:21:39.524079
187	Sweaters_oversizedknittedsweater_12.99_red_xs	0.00	\N	\N	\N	2021-01-17 19:59:03.268767	f	71	12.99	2	USD	t	1	2021-01-17 19:59:03.268282	\N	2021-01-13 23:21:39.35502
153	Skirts_midiskirtwithbottoms_42.99_green_mini_xs	0.00	\N	\N	\N	2021-01-17 19:59:10.808968	f	37	42.99	2	USD	t	1	2021-01-17 19:59:10.808617	\N	2021-01-13 23:21:30.272556
140	Sweaters_longsleevesweatshirt_66.99_mint_xs	0.00	\N	\N	\N	2021-01-17 19:59:27.827377	f	24	66.99	2	USD	t	1	2021-01-17 19:59:27.826958	\N	2021-01-13 23:21:28.379075
166	Dresses_longsleeveknitteddress_32.99_grey_mini_xs	0.00	\N	\N	\N	2021-01-17 19:59:29.818239	f	50	32.99	2	USD	t	1	2021-01-17 19:59:29.817867	\N	2021-01-13 23:21:34.554451
143	Sweaters_longsleevejumper_71.99_dark_blue_xs	0.00	\N	\N	\N	2021-01-17 19:59:35.189784	f	27	71.99	2	USD	t	1	2021-01-17 19:59:35.189373	\N	2021-01-13 23:21:28.764725
156	Skirts_leatherskirtwithlacing_22.99_black_mini_xs	0.00	\N	\N	\N	2021-01-17 19:59:44.588515	f	40	22.99	2	USD	t	1	2021-01-17 19:59:44.588166	\N	2021-01-13 23:21:30.986329
139	Sweaters_jumper_26.99_grey_xs	0.00	\N	\N	\N	2021-01-17 20:00:01.35755	f	23	26.99	2	USD	t	1	2021-01-17 20:00:01.357204	\N	2021-01-13 23:21:28.244549
141	Sweaters_hoodie_21.99_grey_xs	0.00	\N	\N	\N	2021-01-17 20:00:05.95428	f	25	21.99	2	USD	t	1	2021-01-17 20:00:05.953917	\N	2021-01-13 23:21:28.538902
145	JacketsandCoats_hoodedjacket_30.99_beige_xs	0.00	\N	\N	\N	2021-01-17 20:00:09.648019	f	29	30.99	2	USD	t	1	2021-01-17 20:00:09.647588	\N	2021-01-13 23:21:29.075602
136	Sweaters_highnecksweater_89.99_black_xs	0.00	\N	\N	\N	2021-01-17 20:00:18.240354	f	20	89.99	2	USD	t	1	2021-01-17 20:00:18.240038	\N	2021-01-13 23:21:27.905145
172	Dresses_flounceddress_65.99_beige_mini_xs	0.00	\N	\N	\N	2021-01-17 20:00:20.595803	f	56	65.99	2	USD	t	1	2021-01-17 20:00:20.595409	\N	2021-01-13 23:21:36.250922
162	Dresses_floralwrapdress_54.99_black_mini_xs	0.00	\N	\N	\N	2021-01-17 20:00:24.066003	f	46	54.99	2	USD	t	1	2021-01-17 20:00:24.065661	\N	2021-01-13 23:21:32.500983
182	ShirtsandBlouses_floralshirt_60.99_pink_xs	0.00	\N	\N	\N	2021-01-17 20:00:26.727564	f	66	60.99	2	USD	t	1	2021-01-17 20:00:26.72706	\N	2021-01-13 23:21:38.097766
160	Skirts_floralflaredskirt_46.99_light_blue_mini_xs	0.00	\N	\N	\N	2021-01-17 20:00:30.180764	f	44	46.99	2	USD	t	1	2021-01-17 20:00:30.180431	\N	2021-01-13 23:21:31.80856
157	Skirts_flaredskirt_20.99_orange_mini_xs	0.00	\N	\N	\N	2021-01-17 20:00:33.377297	f	41	20.99	2	USD	t	1	2021-01-17 20:00:33.376929	\N	2021-01-13 23:21:31.204814
152	Skirts_flaredmidiskirt_63.99_burgundy_mini_xs	0.00	\N	\N	\N	2021-01-17 20:00:36.387405	f	36	63.99	2	USD	t	1	2021-01-17 20:00:36.386412	\N	2021-01-13 23:21:30.081407
135	T-shirts_basict-shirt_36.99_grey_xs	0.00	\N	\N	\N	2021-01-14 21:21:25.45732	f	19	36.99	2	USD	t	1	2021-01-14 21:21:25.456969	\N	2021-01-13 23:21:27.743019
180	ShirtsandBlouses_blousewithwideflouncedsleeve_77.99_pink_xs	0.00	\N	\N	\N	2021-01-14 21:21:36.253361	f	64	77.99	2	USD	t	1	2021-01-14 21:21:36.252914	\N	2021-01-13 23:21:37.590057
142	Sweaters_zippedhighnecksweater_74.99_green_xs	0.00	\N	\N	\N	2021-01-17 19:55:15.574728	f	26	74.99	2	USD	t	1	2021-01-17 19:55:15.574405	\N	2021-01-13 23:21:28.657046
148	JacketsandCoats_wool-blendshortcoat_52.99_brown_xs	0.00	\N	\N	\N	2021-01-17 19:55:19.887511	f	32	52.99	2	USD	t	1	2021-01-17 19:55:19.887128	\N	2021-01-13 23:21:29.475819
150	JacketsandCoats_wool-blendcoat_17.99_beige_xs	0.00	\N	\N	\N	2021-01-17 19:55:27.588497	f	34	17.99	2	USD	t	1	2021-01-17 19:55:27.588154	\N	2021-01-13 23:21:29.791042
133	T-shirts_v-neckt-shirt_20.99_grey_xs	0.00	\N	\N	\N	2021-01-17 19:56:11.879569	f	17	20.99	2	USD	t	1	2021-01-17 19:56:11.879206	\N	2021-01-13 23:21:27.476704
137	Sweaters_strippedjumper_92.99_brown_xs	0.00	\N	\N	\N	2021-01-17 19:56:17.916037	f	21	92.99	2	USD	t	1	2021-01-17 19:56:17.915601	\N	2021-01-13 23:21:28.007886
167	Dresses_stripedshirtdress_82.99_light_blue_mini_xs	0.00	\N	\N	\N	2021-01-17 19:56:21.439019	f	51	82.99	2	USD	t	1	2021-01-17 19:56:21.438646	\N	2021-01-13 23:21:34.775003
144	JacketsandCoats_suedebikerjacket_44.99_brown_xs	0.00	\N	\N	\N	2021-01-17 19:56:29.31018	f	28	44.99	2	USD	t	1	2021-01-17 19:56:29.309782	\N	2021-01-13 23:21:28.955412
175	ShirtsandBlouses_stripedshirt_85.99_blue_xs	0.00	\N	\N	\N	2021-01-17 19:56:37.573734	f	59	85.99	2	USD	t	1	2021-01-17 19:56:37.573422	\N	2021-01-13 23:21:36.684883
134	T-shirts_tanktop_77.99_pink_xs	0.00	\N	\N	\N	2021-01-17 19:56:50.004158	f	18	77.99	2	USD	t	1	2021-01-17 19:56:50.003829	\N	2021-01-13 23:21:27.622125
173	Dresses_slitmaxidress_79.99_red_mini_xs	0.00	\N	\N	\N	2021-01-17 19:57:08.316058	f	57	79.99	2	USD	t	1	2021-01-17 19:57:08.315648	\N	2021-01-13 23:21:36.395425
159	Skirts_skatershortskirt_20.99_white_mini_xs	0.00	\N	\N	\N	2021-01-17 19:57:19.285624	f	43	20.99	2	USD	t	1	2021-01-17 19:57:19.285233	\N	2021-01-13 23:21:31.614979
158	Skirts_skaterskirt_60.99_brown_mini_xs	0.00	\N	\N	\N	2021-01-17 19:57:23.623125	f	42	60.99	2	USD	t	1	2021-01-17 19:57:23.622733	\N	2021-01-13 23:21:31.431744
174	ShirtsandBlouses_semi-sheershirtwithfloralcuffs_41.99_brown_xs	0.00	\N	\N	\N	2021-01-17 19:57:43.571158	f	58	41.99	2	USD	t	1	2021-01-17 19:57:43.570784	\N	2021-01-13 23:21:36.533959
164	Dresses_flareddress_38.99_red_mini_xs	0.00	\N	\N	\N	2021-01-17 20:00:39.045701	f	48	38.99	2	USD	t	1	2021-01-17 20:00:39.045363	\N	2021-01-13 23:21:34.078504
154	Skirts_fittedskirt_58.99_orange_mini_xs	0.00	\N	\N	\N	2021-01-17 20:00:41.540534	f	38	58.99	2	USD	t	1	2021-01-17 20:00:41.540148	\N	2021-01-13 23:21:30.55711
181	ShirtsandBlouses_elegantblousewithchocker_25.99_mint_xs	0.00	\N	\N	\N	2021-01-17 20:00:47.744062	f	65	25.99	2	USD	t	1	2021-01-17 20:00:47.743664	\N	2021-01-13 23:21:37.810719
149	JacketsandCoats_downjacketwithhood_80.99_dark_blue_xs	0.00	\N	\N	\N	2021-01-17 20:00:51.026832	f	33	80.99	2	USD	t	1	2021-01-17 20:00:51.026376	\N	2021-01-13 23:21:29.599105
201	JacketsandCoats_coatwithpockets_15.99_pink_xs	0.00	\N	\N	\N	2021-01-17 20:01:13.761548	f	85	15.99	2	USD	t	1	2021-01-17 20:01:13.761221	\N	2021-01-13 23:21:41.637345
185	ShirtsandBlouses_printedshirt_90.99_green_xs	0.00	\N	\N	\N	2021-01-17 19:58:27.396787	f	69	90.99	2	USD	t	1	2021-01-17 19:58:27.396431	\N	2021-01-13 23:21:38.973969
197	TopsandT-shirts_croptop_31.99_black_xs	0.00	\N	\N	\N	2021-01-17 20:01:18.970393	f	81	31.99	2	USD	t	1	2021-01-17 20:01:18.970066	\N	2021-01-13 23:21:40.936119
193	TopsandT-shirts_printedt-shirt_23.99_white_xs	0.00	\N	\N	\N	2021-01-17 19:58:12.188994	f	77	23.99	2	USD	t	1	2021-01-17 19:58:12.188588	\N	2021-01-13 23:21:40.386461
176	ShirtsandBlouses_v-neckwideshirt_74.99_dark_blue_xs	0.00	\N	\N	\N	2021-01-17 19:55:34.6879	f	60	74.99	2	USD	t	1	2021-01-17 19:55:34.687519	\N	2021-01-13 23:21:36.868826
192	TopsandT-shirts_croptopwithtie_82.99_red_xs	0.00	\N	\N	\N	2021-01-17 20:01:20.972259	f	76	82.99	2	USD	t	1	2021-01-17 20:01:20.971873	\N	2021-01-13 23:21:40.250047
11	Shirts_regularshirtwithrolledupsleeves_84.99	0.00	\N	\N	\N	2021-01-17 19:58:30.813195	t	11	\N	1	USD	t	\N	2021-01-17 19:58:30.812776	\N	2021-01-13 23:19:30.410932
131	T-shirts_t-shirtwithholes_94.99_grey_xs	0.00	\N	\N	\N	2021-01-17 19:56:33.550559	f	15	94.99	2	USD	t	1	2021-01-17 19:56:33.5502	\N	2021-01-13 23:21:27.09424
191	Sweaters_croppedfittedsweater_39.99_red_xs	0.00	\N	\N	\N	2021-01-17 20:01:24.743455	f	75	39.99	2	USD	t	1	2021-01-17 20:01:24.743115	\N	2021-01-13 23:21:40.114329
147	JacketsandCoats_denimjacket_84.99_light_blue_xs	0.00	\N	\N	\N	2021-01-17 20:01:28.433513	f	31	84.99	2	USD	t	1	2021-01-17 20:01:28.433116	\N	2021-01-13 23:21:29.35655
234	NF_hoodie_dress	0.00	\N	\N	\N	\N	t	118	\N	1	CLP	t	\N	2021-01-18 22:00:49.881572	\N	2021-01-14 16:50:46.479137
211	JacketsandCoats_denimhoodedjacket_92.99_blue_xs	0.00	\N	\N	\N	2021-01-17 20:01:26.672088	f	95	92.99	2	USD	t	1	2021-01-17 20:01:26.67175	\N	2021-01-13 23:21:43.094687
151	JacketsandCoats_jacketwithliner_12.99_black_xs	0.00	\N	\N	\N	2021-01-17 20:01:35.70248	f	35	12.99	2	USD	t	1	2021-01-17 20:01:35.702077	\N	2021-01-13 23:21:29.93301
235	nf_hoodie_dress_red	0.00	\N	\N	\N	\N	f	118	\N	2	CLP	t	\N	2021-01-18 22:05:13.698409	\N	2021-01-14 16:53:12.104363
229	Pants_pants_45.99_black_xs	0.00	\N	\N	\N	2021-01-17 19:58:58.934696	f	113	45.99	2	USD	t	1	2021-01-17 19:58:58.934243	\N	2021-01-13 23:21:46.385515
215	Tops_oversizet-shirtwrappedonback_26.99_pink_xs	0.00	\N	\N	\N	2021-01-17 19:59:05.335525	f	99	26.99	2	USD	t	1	2021-01-17 19:59:05.335073	\N	2021-01-13 23:21:43.70366
223	Sweatshirts_oversizesweatshirt_26.99_pink_xs	0.00	\N	\N	\N	2021-01-17 19:59:07.18984	f	107	26.99	2	USD	t	1	2021-01-17 19:59:07.189426	\N	2021-01-13 23:21:45.220908
198	TopsandT-shirts_looset-shirtwithpocketimitation_51.99_white_xs	0.00	\N	\N	\N	2021-01-17 19:59:13.934512	f	82	51.99	2	USD	t	1	2021-01-17 19:59:13.934109	\N	2021-01-13 23:21:41.064105
207	JacketsandCoats_loose-fittedjacket_53.99_light_blue_xs	0.00	\N	\N	\N	2021-01-17 19:59:15.970948	f	91	53.99	2	USD	t	1	2021-01-17 19:59:15.970557	\N	2021-01-13 23:21:42.559527
202	JacketsandCoats_longwool-blendcoatwithbelt_66.99_dark_blue_xs	0.00	\N	\N	\N	2021-01-17 19:59:18.100731	f	86	66.99	2	USD	t	1	2021-01-17 19:59:18.100339	\N	2021-01-13 23:21:41.837474
214	Tops_longsleevesyogacroptop_84.99_mint_xs	0.00	\N	\N	\N	2021-01-17 19:59:21.49994	f	98	84.99	2	USD	t	1	2021-01-17 19:59:21.499572	\N	2021-01-13 23:21:43.514561
216	Tops_longsleevescroptop_20.99_black_xs	0.00	\N	\N	\N	2021-01-17 19:59:23.53695	f	100	20.99	2	USD	t	1	2021-01-17 19:59:23.536598	\N	2021-01-13 23:21:43.853087
204	JacketsandCoats_longcoatwithbelt_47.99_beige_xs	0.00	\N	\N	\N	2021-01-17 19:59:37.603161	f	88	47.99	2	USD	t	1	2021-01-17 19:59:37.602749	\N	2021-01-13 23:21:42.125248
209	JacketsandCoats_leatherbikerjacket_52.99_black_xs	0.00	\N	\N	\N	2021-01-17 19:59:46.841903	f	93	52.99	2	USD	t	1	2021-01-17 19:59:46.841573	\N	2021-01-13 23:21:42.802401
217	Tops_lacedcroptop_83.99_black_xs	0.00	\N	\N	\N	2021-01-17 19:59:48.759722	f	101	83.99	2	USD	t	1	2021-01-17 19:59:48.759387	\N	2021-01-13 23:21:44.000304
190	Sweaters_knittedv-necksweater_50.99_blue_xs	0.00	\N	\N	\N	2021-01-17 19:59:50.678956	f	74	50.99	2	USD	t	1	2021-01-17 19:59:50.67855	\N	2021-01-13 23:21:39.914201
130	T-shirts_3_4sleevet-shirt_44.99_white_xs	0.00	\N	\N	\N	2021-01-14 21:18:28.576364	f	14	44.99	2	USD	t	1	2021-01-14 21:18:28.575988	\N	2021-01-13 23:21:26.973807
231	Pants_highwaistpantswithpockets_71.99_pink_xs	0.00	\N	\N	\N	2021-01-17 20:00:12.420453	f	115	71.99	2	USD	t	1	2021-01-17 20:00:12.420117	\N	2021-01-13 23:21:46.986316
232	Pants_highwaistpants_57.99_blue_xs	0.00	\N	\N	\N	2021-01-17 20:00:15.711421	f	116	57.99	2	USD	t	1	2021-01-17 20:00:15.711095	\N	2021-01-13 23:21:47.248456
205	JacketsandCoats_downjacket_64.99_white_xs	0.00	\N	\N	\N	2021-01-17 20:00:53.499703	f	89	64.99	2	USD	t	1	2021-01-17 20:00:53.499324	\N	2021-01-13 23:21:42.309925
233		0.00	\N	\N	\N	2021-01-14 20:42:13.386151	t	117	\N	1	CLP	t	\N	2021-01-14 20:42:12.767971	\N	2021-01-14 16:42:57.742576
208	JacketsandCoats_double-breastedjacket_74.99_white_xs	0.00	\N	\N	\N	2021-01-17 20:00:58.233452	f	92	74.99	2	USD	t	1	2021-01-17 20:00:58.233126	\N	2021-01-13 23:21:42.678202
64	ShirtsandBlouses_blousewithwideflouncedsleeve_77.99	0.00	\N	\N	\N	2021-01-14 21:21:36.199964	t	64	\N	1	USD	t	\N	2021-01-14 21:21:36.199599	\N	2021-01-13 23:19:40.665259
70	Sweaters_asymetricsweaterwithwidesleeves_92.99	0.00	\N	\N	\N	2021-01-14 21:21:18.094895	t	70	\N	1	USD	t	\N	2021-01-14 21:21:18.094503	\N	2021-01-13 23:19:41.778892
236	nf_hoodie_dress_white	0.00	\N	\N	\N	\N	f	118	\N	3	CLP	t	\N	2021-01-14 20:44:08.380674	\N	2021-01-14 20:02:39.957256
14	T-shirts_3_4sleevet-shirt_44.99	0.00	\N	\N	\N	2021-01-14 21:18:28.532819	t	14	\N	1	USD	t	\N	2021-01-14 21:18:28.532393	\N	2021-01-13 23:19:30.94459
30	JacketsandCoats_anorakwithhood_93.99	0.00	\N	\N	\N	2021-01-14 21:18:51.028553	t	30	\N	1	USD	t	\N	2021-01-14 21:18:51.028168	\N	2021-01-13 23:19:34.042892
146	JacketsandCoats_anorakwithhood_93.99_yellow_xs	0.00	\N	\N	\N	2021-01-14 21:18:51.148783	f	30	93.99	2	USD	t	1	2021-01-14 21:18:51.148371	\N	2021-01-13 23:21:29.204061
186	Sweaters_asymetricsweaterwithwidesleeves_92.99_blue_xs	0.00	\N	\N	\N	2021-01-14 21:21:18.189547	f	70	92.99	2	USD	t	1	2021-01-14 21:21:18.189168	\N	2021-01-13 23:21:39.124116
203	JacketsandCoats_asymetriccoat_97.99_white_xs	0.00	\N	\N	\N	2021-01-14 21:21:13.975102	f	87	97.99	2	USD	t	1	2021-01-14 21:21:13.97468	\N	2021-01-13 23:21:41.987659
200	TopsandT-shirts_basiclooset-shirt_88.99_green_xs	0.00	\N	\N	\N	2021-01-14 21:21:22.036995	f	84	88.99	2	USD	t	1	2021-01-14 21:21:22.036608	\N	2021-01-13 23:21:41.371662
212	JacketsandCoats_bomberjacket_18.99_khaki_xs	0.00	\N	\N	\N	2021-01-14 21:21:39.668792	f	96	18.99	2	USD	t	1	2021-01-14 21:21:39.667971	\N	2021-01-13 23:21:43.251301
206	JacketsandCoats_zippedjacket_73.99_blue_xs	0.00	\N	\N	\N	2021-01-17 19:55:10.405111	f	90	73.99	2	USD	t	1	2021-01-17 19:55:10.404707	\N	2021-01-13 23:21:42.436307
210	JacketsandCoats_wool-blendcoatwithbelt_38.99_burgundy_xs	0.00	\N	\N	\N	2021-01-17 19:55:23.877602	f	94	38.99	2	USD	t	1	2021-01-17 19:55:23.877274	\N	2021-01-13 23:21:42.919221
59	ShirtsandBlouses_stripedshirt_85.99	0.00	\N	\N	\N	2021-01-17 19:56:37.501356	t	59	\N	1	USD	t	\N	2021-01-17 19:56:37.500984	\N	2021-01-13 23:19:39.627461
224	Sweatshirts_sportwindproofjacket_33.99_blue_xs	0.00	\N	\N	\N	2021-01-17 19:56:57.849214	f	108	33.99	2	USD	t	1	2021-01-17 19:56:57.848888	\N	2021-01-13 23:21:45.513355
225	Sweatshirts_sportwaistcoat_33.99_purple_xs	0.00	\N	\N	\N	2021-01-17 19:57:01.148413	f	109	33.99	2	USD	t	1	2021-01-17 19:57:01.14807	\N	2021-01-13 23:21:45.69167
220	Tops_sportcropptop_34.99_burgundy_xs	0.00	\N	\N	\N	2021-01-17 19:57:04.529419	f	104	34.99	2	USD	t	1	2021-01-17 19:57:04.529062	\N	2021-01-13 23:21:44.554733
227	Pants_shortpants_37.99_black_xs	0.00	\N	\N	\N	2021-01-17 19:57:32.039004	f	111	37.99	2	USD	t	1	2021-01-17 19:57:32.038673	\N	2021-01-13 23:21:46.046305
226	Pants_shinedpants_57.99_light_blue_xs	0.00	\N	\N	\N	2021-01-17 19:57:36.11738	f	110	57.99	2	USD	t	1	2021-01-17 19:57:36.11692	\N	2021-01-13 23:21:45.843868
221	Sweatshirts_runningsweatshirt_39.99_light_blue_xs	0.00	\N	\N	\N	2021-01-17 19:57:48.559847	f	105	39.99	2	USD	t	1	2021-01-17 19:57:48.559486	\N	2021-01-13 23:21:44.733454
196	TopsandT-shirts_scrappycroptopwithtie_85.99_grey_xs	0.00	\N	\N	\N	2021-01-17 19:57:52.782014	f	80	85.99	2	USD	t	1	2021-01-17 19:57:52.781648	\N	2021-01-13 23:21:40.801663
194	TopsandT-shirts_scrappytop_31.99_black_xs	0.00	\N	\N	\N	2021-01-17 19:57:56.654643	f	78	31.99	2	USD	t	1	2021-01-17 19:57:56.654157	\N	2021-01-13 23:21:40.518209
218	Tops_sportsbramediumsupport_99.99_black_xs	0.00	\N	\N	\N	2021-01-17 19:56:42.176165	f	102	99.99	2	USD	t	1	2021-01-17 19:56:42.175761	\N	2021-01-13 23:21:44.166129
213	Tops_sportsbralowsupport_75.99_grey_xs	0.00	\N	\N	\N	2021-01-17 19:56:45.254599	f	97	75.99	2	USD	t	1	2021-01-17 19:56:45.253677	\N	2021-01-13 23:21:43.364247
219	Tops_sportsbra_66.99_green_xs	0.00	\N	\N	\N	2021-01-17 19:56:54.428264	f	103	66.99	2	USD	t	1	2021-01-17 19:56:54.427869	\N	2021-01-13 23:21:44.345883
199	TopsandT-shirts_sleevelessloosetop_85.99_white_xs	0.00	\N	\N	\N	2021-01-17 19:57:15.737827	f	83	85.99	2	USD	t	1	2021-01-17 19:57:15.737481	\N	2021-01-13 23:21:41.212461
121	Shirts_shortsleeveshirt_45.99_burgundy_xs	0.00	\N	\N	\N	2021-01-17 19:57:27.605094	f	5	45.99	2	USD	t	1	2021-01-17 19:57:27.604459	\N	2021-01-13 23:21:25.486613
67	ShirtsandBlouses_semi-sheershirtwithpockets_64.99	0.00	\N	\N	\N	2021-01-17 19:57:39.363769	t	67	\N	1	USD	t	\N	2021-01-17 19:57:39.363397	\N	2021-01-13 23:19:41.222115
183	ShirtsandBlouses_semi-sheershirtwithpockets_64.99_white_xs	0.00	\N	\N	\N	2021-01-17 19:57:39.446565	f	67	64.99	2	USD	t	1	2021-01-17 19:57:39.446126	\N	2021-01-13 23:21:38.361558
228	Pants_printedpantswithholes_50.99_black_xs	0.00	\N	\N	\N	2021-01-17 19:58:34.480511	f	112	50.99	2	USD	t	1	2021-01-17 19:58:34.480187	\N	2021-01-13 23:21:46.23813
230	Pants_printedpants_27.99_grey_xs	0.00	\N	\N	\N	2021-01-17 19:58:37.859819	f	114	27.99	2	USD	t	1	2021-01-17 19:58:37.859372	\N	2021-01-13 23:21:46.617365
195	TopsandT-shirts_pleatedsleevet-shirt_66.99_beige_xs	0.00	\N	\N	\N	2021-01-17 19:58:54.491915	f	79	66.99	2	USD	t	1	2021-01-17 19:58:54.491548	\N	2021-01-13 23:21:40.652998
82	TopsandT-shirts_looset-shirtwithpocketimitation_51.99	0.00	\N	\N	\N	2021-01-17 19:59:13.880134	t	82	\N	1	USD	t	\N	2021-01-17 19:59:13.879784	\N	2021-01-13 23:19:44.477598
22	Sweaters_longsleevejumperwithpocket_25.99	0.00	\N	\N	\N	2021-01-17 19:59:32.105479	t	22	\N	1	USD	t	\N	2021-01-17 19:59:32.105043	\N	2021-01-13 23:19:32.545645
138	Sweaters_longsleevejumperwithpocket_25.99_ecru_xs	0.00	\N	\N	\N	2021-01-17 19:59:32.170375	f	22	25.99	2	USD	t	1	2021-01-17 19:59:32.170038	\N	2021-01-13 23:21:28.131897
189	Sweaters_knittedhighnecksweater_71.99_blue_xs	0.00	\N	\N	\N	2021-01-17 19:59:54.501654	f	73	71.99	2	USD	t	1	2021-01-17 19:59:54.501335	\N	2021-01-13 23:21:39.73247
115	Pants_highwaistpantswithpockets_71.99	0.00	\N	\N	\N	2021-01-17 20:00:12.340803	t	115	\N	1	USD	t	\N	2021-01-17 20:00:12.340403	\N	2021-01-13 23:19:55.616572
66	ShirtsandBlouses_floralshirt_60.99	0.00	\N	\N	\N	2021-01-17 20:00:26.65286	t	66	\N	1	USD	t	\N	2021-01-17 20:00:26.652462	\N	2021-01-13 23:19:41.030218
165	Dresses_elegantflareddress_87.99_black_mini_xs	0.00	\N	\N	\N	2021-01-17 20:00:44.142133	f	49	87.99	2	USD	t	1	2021-01-17 20:00:44.141718	\N	2021-01-13 23:21:34.30683
222	Sweatshirts_leightweightrunningjacket_33.99_grey_xs	0.00	\N	\N	\N	2021-01-17 20:01:46.385414	f	106	33.99	2	USD	t	1	2021-01-17 20:01:46.385048	\N	2021-01-13 23:21:44.914689
244	vestido_deportivo_negro	0.00	\N	\N	\N	\N	f	121	\N	2	CLP	t	\N	2021-01-17 23:18:19.44101	\N	2021-01-17 23:16:56.901326
241	kimono_rosa	0.00	\N	\N	\N	\N	f	120	\N	2	CLP	t	\N	2021-01-17 23:20:39.947964	\N	2021-01-17 23:08:18.656579
238	pants_semiformales_M	0.00	\N	\N	\N	\N	f	119	\N	2	CLP	t	\N	2021-01-18 22:06:34.654887	\N	2021-01-17 22:55:27.80221
245	vestido_deportivo	0.00	\N	\N	\N	\N	f	121	\N	3	CLP	t	\N	2021-01-18 22:07:47.490696	\N	2021-01-17 23:17:24.432513
242	kimono_negro	0.00	\N	\N	\N	\N	f	120	\N	3	CLP	t	\N	2021-01-18 22:08:31.503521	\N	2021-01-17 23:08:38.966021
\.


--
-- Data for Name: spree_zone_members; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_zone_members (id, zoneable_type, zoneable_id, zone_id, created_at, updated_at) FROM stdin;
114	Spree::Country	10	3	2021-01-14 15:35:06.142867	2021-01-14 15:35:06.142867
115	Spree::Country	29	3	2021-01-14 15:35:06.278583	2021-01-14 15:35:06.278583
116	Spree::Country	31	3	2021-01-14 15:35:06.300398	2021-01-14 15:35:06.300398
117	Spree::Country	46	3	2021-01-14 15:35:06.320979	2021-01-14 15:35:06.320979
118	Spree::Country	49	3	2021-01-14 15:35:06.329329	2021-01-14 15:35:06.329329
119	Spree::Country	63	3	2021-01-14 15:35:06.348532	2021-01-14 15:35:06.348532
120	Spree::Country	72	3	2021-01-14 15:35:06.362097	2021-01-14 15:35:06.362097
121	Spree::Country	80	3	2021-01-14 15:35:06.37453	2021-01-14 15:35:06.37453
122	Spree::Country	94	3	2021-01-14 15:35:06.394499	2021-01-14 15:35:06.394499
123	Spree::Country	186	3	2021-01-14 15:35:06.412031	2021-01-14 15:35:06.412031
124	Spree::Country	174	3	2021-01-14 15:35:06.42053	2021-01-14 15:35:06.42053
125	Spree::Country	207	3	2021-01-14 15:35:06.442757	2021-01-14 15:35:06.442757
126	Spree::Country	234	3	2021-01-14 15:35:06.469523	2021-01-14 15:35:06.469523
127	Spree::Country	238	3	2021-01-14 15:35:06.488521	2021-01-14 15:35:06.488521
\.


--
-- Data for Name: spree_zones; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.spree_zones (id, name, description, default_tax, zone_members_count, created_at, updated_at, kind) FROM stdin;
3	South America	South America	f	14	2021-01-13 23:01:15.962425	2021-01-13 23:01:15.962425	country
\.


--
-- Name: action_mailbox_inbound_emails_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.action_mailbox_inbound_emails_id_seq', 1, false);


--
-- Name: action_text_rich_texts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.action_text_rich_texts_id_seq', 1, false);


--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 19, true);


--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 19, true);


--
-- Name: friendly_id_slugs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.friendly_id_slugs_id_seq', 188, true);


--
-- Name: spree_addresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_addresses_id_seq', 4, true);


--
-- Name: spree_adjustments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_adjustments_id_seq', 37, true);


--
-- Name: spree_assets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_assets_id_seq', 18, true);


--
-- Name: spree_calculators_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_calculators_id_seq', 8, true);


--
-- Name: spree_checks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_checks_id_seq', 1, false);


--
-- Name: spree_countries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_countries_id_seq', 249, true);


--
-- Name: spree_credit_cards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_credit_cards_id_seq', 1, true);


--
-- Name: spree_customer_returns_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_customer_returns_id_seq', 1, false);


--
-- Name: spree_gateways_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_gateways_id_seq', 1, false);


--
-- Name: spree_inventory_units_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_inventory_units_id_seq', 19, true);


--
-- Name: spree_line_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_line_items_id_seq', 10, true);


--
-- Name: spree_log_entries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_log_entries_id_seq', 1, false);


--
-- Name: spree_oauth_access_grants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_oauth_access_grants_id_seq', 1, false);


--
-- Name: spree_oauth_access_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_oauth_access_tokens_id_seq', 2, true);


--
-- Name: spree_oauth_applications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_oauth_applications_id_seq', 1, false);


--
-- Name: spree_option_type_prototypes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_option_type_prototypes_id_seq', 1, false);


--
-- Name: spree_option_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_option_types_id_seq', 3, true);


--
-- Name: spree_option_value_variants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_option_value_variants_id_seq', 268, true);


--
-- Name: spree_option_values_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_option_values_id_seq', 27, true);


--
-- Name: spree_order_promotions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_order_promotions_id_seq', 1, false);


--
-- Name: spree_orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_orders_id_seq', 5, true);


--
-- Name: spree_payment_capture_events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_payment_capture_events_id_seq', 1, false);


--
-- Name: spree_payment_methods_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_payment_methods_id_seq', 3, true);


--
-- Name: spree_payments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_payments_id_seq', 4, true);


--
-- Name: spree_preferences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_preferences_id_seq', 3, true);


--
-- Name: spree_prices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_prices_id_seq', 246, true);


--
-- Name: spree_product_option_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_product_option_types_id_seq', 240, true);


--
-- Name: spree_product_promotion_rules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_product_promotion_rules_id_seq', 1, false);


--
-- Name: spree_product_properties_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_product_properties_id_seq', 992, true);


--
-- Name: spree_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_products_id_seq', 121, true);


--
-- Name: spree_products_taxons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_products_taxons_id_seq', 423, true);


--
-- Name: spree_promotion_action_line_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_promotion_action_line_items_id_seq', 1, false);


--
-- Name: spree_promotion_actions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_promotion_actions_id_seq', 1, true);


--
-- Name: spree_promotion_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_promotion_categories_id_seq', 1, false);


--
-- Name: spree_promotion_rule_taxons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_promotion_rule_taxons_id_seq', 1, false);


--
-- Name: spree_promotion_rule_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_promotion_rule_users_id_seq', 1, false);


--
-- Name: spree_promotion_rules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_promotion_rules_id_seq', 1, true);


--
-- Name: spree_promotions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_promotions_id_seq', 1, true);


--
-- Name: spree_properties_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_properties_id_seq', 18, true);


--
-- Name: spree_property_prototypes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_property_prototypes_id_seq', 13, true);


--
-- Name: spree_prototype_taxons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_prototype_taxons_id_seq', 15, true);


--
-- Name: spree_prototypes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_prototypes_id_seq', 3, true);


--
-- Name: spree_refund_reasons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_refund_reasons_id_seq', 1, true);


--
-- Name: spree_refunds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_refunds_id_seq', 1, false);


--
-- Name: spree_reimbursement_credits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_reimbursement_credits_id_seq', 1, false);


--
-- Name: spree_reimbursement_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_reimbursement_types_id_seq', 1, true);


--
-- Name: spree_reimbursements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_reimbursements_id_seq', 1, false);


--
-- Name: spree_return_authorization_reasons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_return_authorization_reasons_id_seq', 9, true);


--
-- Name: spree_return_authorizations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_return_authorizations_id_seq', 1, false);


--
-- Name: spree_return_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_return_items_id_seq', 1, false);


--
-- Name: spree_role_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_role_users_id_seq', 1, true);


--
-- Name: spree_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_roles_id_seq', 2, true);


--
-- Name: spree_shipments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_shipments_id_seq', 19, true);


--
-- Name: spree_shipping_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_shipping_categories_id_seq', 1, true);


--
-- Name: spree_shipping_method_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_shipping_method_categories_id_seq', 6, true);


--
-- Name: spree_shipping_method_zones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_shipping_method_zones_id_seq', 6, true);


--
-- Name: spree_shipping_methods_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_shipping_methods_id_seq', 6, true);


--
-- Name: spree_shipping_rates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_shipping_rates_id_seq', 14, true);


--
-- Name: spree_state_changes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_state_changes_id_seq', 17, true);


--
-- Name: spree_states_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_states_id_seq', 3590, true);


--
-- Name: spree_stock_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_stock_items_id_seq', 245, true);


--
-- Name: spree_stock_locations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_stock_locations_id_seq', 1, true);


--
-- Name: spree_stock_movements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_stock_movements_id_seq', 128, true);


--
-- Name: spree_stock_transfers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_stock_transfers_id_seq', 1, false);


--
-- Name: spree_store_credit_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_store_credit_categories_id_seq', 1, true);


--
-- Name: spree_store_credit_events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_store_credit_events_id_seq', 1, false);


--
-- Name: spree_store_credit_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_store_credit_types_id_seq', 2, true);


--
-- Name: spree_store_credits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_store_credits_id_seq', 1, false);


--
-- Name: spree_stores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_stores_id_seq', 1, true);


--
-- Name: spree_tax_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_tax_categories_id_seq', 2, true);


--
-- Name: spree_tax_rates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_tax_rates_id_seq', 2, true);


--
-- Name: spree_taxonomies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_taxonomies_id_seq', 1, true);


--
-- Name: spree_taxons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_taxons_id_seq', 27, true);


--
-- Name: spree_trackers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_trackers_id_seq', 1, false);


--
-- Name: spree_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_users_id_seq', 2, true);


--
-- Name: spree_variants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_variants_id_seq', 245, true);


--
-- Name: spree_zone_members_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_zone_members_id_seq', 127, true);


--
-- Name: spree_zones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.spree_zones_id_seq', 6, true);


--
-- Name: action_mailbox_inbound_emails action_mailbox_inbound_emails_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.action_mailbox_inbound_emails
    ADD CONSTRAINT action_mailbox_inbound_emails_pkey PRIMARY KEY (id);


--
-- Name: action_text_rich_texts action_text_rich_texts_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.action_text_rich_texts
    ADD CONSTRAINT action_text_rich_texts_pkey PRIMARY KEY (id);


--
-- Name: active_storage_attachments active_storage_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);


--
-- Name: active_storage_blobs active_storage_blobs_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: friendly_id_slugs friendly_id_slugs_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.friendly_id_slugs
    ADD CONSTRAINT friendly_id_slugs_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: spree_addresses spree_addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_addresses
    ADD CONSTRAINT spree_addresses_pkey PRIMARY KEY (id);


--
-- Name: spree_adjustments spree_adjustments_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_adjustments
    ADD CONSTRAINT spree_adjustments_pkey PRIMARY KEY (id);


--
-- Name: spree_assets spree_assets_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_assets
    ADD CONSTRAINT spree_assets_pkey PRIMARY KEY (id);


--
-- Name: spree_calculators spree_calculators_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_calculators
    ADD CONSTRAINT spree_calculators_pkey PRIMARY KEY (id);


--
-- Name: spree_checks spree_checks_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_checks
    ADD CONSTRAINT spree_checks_pkey PRIMARY KEY (id);


--
-- Name: spree_countries spree_countries_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_countries
    ADD CONSTRAINT spree_countries_pkey PRIMARY KEY (id);


--
-- Name: spree_credit_cards spree_credit_cards_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_credit_cards
    ADD CONSTRAINT spree_credit_cards_pkey PRIMARY KEY (id);


--
-- Name: spree_customer_returns spree_customer_returns_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_customer_returns
    ADD CONSTRAINT spree_customer_returns_pkey PRIMARY KEY (id);


--
-- Name: spree_gateways spree_gateways_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_gateways
    ADD CONSTRAINT spree_gateways_pkey PRIMARY KEY (id);


--
-- Name: spree_inventory_units spree_inventory_units_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_inventory_units
    ADD CONSTRAINT spree_inventory_units_pkey PRIMARY KEY (id);


--
-- Name: spree_line_items spree_line_items_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_line_items
    ADD CONSTRAINT spree_line_items_pkey PRIMARY KEY (id);


--
-- Name: spree_log_entries spree_log_entries_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_log_entries
    ADD CONSTRAINT spree_log_entries_pkey PRIMARY KEY (id);


--
-- Name: spree_oauth_access_grants spree_oauth_access_grants_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_oauth_access_grants
    ADD CONSTRAINT spree_oauth_access_grants_pkey PRIMARY KEY (id);


--
-- Name: spree_oauth_access_tokens spree_oauth_access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_oauth_access_tokens
    ADD CONSTRAINT spree_oauth_access_tokens_pkey PRIMARY KEY (id);


--
-- Name: spree_oauth_applications spree_oauth_applications_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_oauth_applications
    ADD CONSTRAINT spree_oauth_applications_pkey PRIMARY KEY (id);


--
-- Name: spree_option_type_prototypes spree_option_type_prototypes_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_option_type_prototypes
    ADD CONSTRAINT spree_option_type_prototypes_pkey PRIMARY KEY (id);


--
-- Name: spree_option_types spree_option_types_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_option_types
    ADD CONSTRAINT spree_option_types_pkey PRIMARY KEY (id);


--
-- Name: spree_option_value_variants spree_option_value_variants_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_option_value_variants
    ADD CONSTRAINT spree_option_value_variants_pkey PRIMARY KEY (id);


--
-- Name: spree_option_values spree_option_values_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_option_values
    ADD CONSTRAINT spree_option_values_pkey PRIMARY KEY (id);


--
-- Name: spree_order_promotions spree_order_promotions_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_order_promotions
    ADD CONSTRAINT spree_order_promotions_pkey PRIMARY KEY (id);


--
-- Name: spree_orders spree_orders_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_orders
    ADD CONSTRAINT spree_orders_pkey PRIMARY KEY (id);


--
-- Name: spree_payment_capture_events spree_payment_capture_events_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_payment_capture_events
    ADD CONSTRAINT spree_payment_capture_events_pkey PRIMARY KEY (id);


--
-- Name: spree_payment_methods spree_payment_methods_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_payment_methods
    ADD CONSTRAINT spree_payment_methods_pkey PRIMARY KEY (id);


--
-- Name: spree_payments spree_payments_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_payments
    ADD CONSTRAINT spree_payments_pkey PRIMARY KEY (id);


--
-- Name: spree_preferences spree_preferences_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_preferences
    ADD CONSTRAINT spree_preferences_pkey PRIMARY KEY (id);


--
-- Name: spree_prices spree_prices_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_prices
    ADD CONSTRAINT spree_prices_pkey PRIMARY KEY (id);


--
-- Name: spree_product_option_types spree_product_option_types_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_product_option_types
    ADD CONSTRAINT spree_product_option_types_pkey PRIMARY KEY (id);


--
-- Name: spree_product_promotion_rules spree_product_promotion_rules_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_product_promotion_rules
    ADD CONSTRAINT spree_product_promotion_rules_pkey PRIMARY KEY (id);


--
-- Name: spree_product_properties spree_product_properties_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_product_properties
    ADD CONSTRAINT spree_product_properties_pkey PRIMARY KEY (id);


--
-- Name: spree_products spree_products_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_products
    ADD CONSTRAINT spree_products_pkey PRIMARY KEY (id);


--
-- Name: spree_products_taxons spree_products_taxons_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_products_taxons
    ADD CONSTRAINT spree_products_taxons_pkey PRIMARY KEY (id);


--
-- Name: spree_promotion_action_line_items spree_promotion_action_line_items_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_promotion_action_line_items
    ADD CONSTRAINT spree_promotion_action_line_items_pkey PRIMARY KEY (id);


--
-- Name: spree_promotion_actions spree_promotion_actions_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_promotion_actions
    ADD CONSTRAINT spree_promotion_actions_pkey PRIMARY KEY (id);


--
-- Name: spree_promotion_categories spree_promotion_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_promotion_categories
    ADD CONSTRAINT spree_promotion_categories_pkey PRIMARY KEY (id);


--
-- Name: spree_promotion_rule_taxons spree_promotion_rule_taxons_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_promotion_rule_taxons
    ADD CONSTRAINT spree_promotion_rule_taxons_pkey PRIMARY KEY (id);


--
-- Name: spree_promotion_rule_users spree_promotion_rule_users_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_promotion_rule_users
    ADD CONSTRAINT spree_promotion_rule_users_pkey PRIMARY KEY (id);


--
-- Name: spree_promotion_rules spree_promotion_rules_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_promotion_rules
    ADD CONSTRAINT spree_promotion_rules_pkey PRIMARY KEY (id);


--
-- Name: spree_promotions spree_promotions_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_promotions
    ADD CONSTRAINT spree_promotions_pkey PRIMARY KEY (id);


--
-- Name: spree_properties spree_properties_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_properties
    ADD CONSTRAINT spree_properties_pkey PRIMARY KEY (id);


--
-- Name: spree_property_prototypes spree_property_prototypes_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_property_prototypes
    ADD CONSTRAINT spree_property_prototypes_pkey PRIMARY KEY (id);


--
-- Name: spree_prototype_taxons spree_prototype_taxons_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_prototype_taxons
    ADD CONSTRAINT spree_prototype_taxons_pkey PRIMARY KEY (id);


--
-- Name: spree_prototypes spree_prototypes_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_prototypes
    ADD CONSTRAINT spree_prototypes_pkey PRIMARY KEY (id);


--
-- Name: spree_refund_reasons spree_refund_reasons_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_refund_reasons
    ADD CONSTRAINT spree_refund_reasons_pkey PRIMARY KEY (id);


--
-- Name: spree_refunds spree_refunds_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_refunds
    ADD CONSTRAINT spree_refunds_pkey PRIMARY KEY (id);


--
-- Name: spree_reimbursement_credits spree_reimbursement_credits_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_reimbursement_credits
    ADD CONSTRAINT spree_reimbursement_credits_pkey PRIMARY KEY (id);


--
-- Name: spree_reimbursement_types spree_reimbursement_types_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_reimbursement_types
    ADD CONSTRAINT spree_reimbursement_types_pkey PRIMARY KEY (id);


--
-- Name: spree_reimbursements spree_reimbursements_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_reimbursements
    ADD CONSTRAINT spree_reimbursements_pkey PRIMARY KEY (id);


--
-- Name: spree_return_authorization_reasons spree_return_authorization_reasons_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_return_authorization_reasons
    ADD CONSTRAINT spree_return_authorization_reasons_pkey PRIMARY KEY (id);


--
-- Name: spree_return_authorizations spree_return_authorizations_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_return_authorizations
    ADD CONSTRAINT spree_return_authorizations_pkey PRIMARY KEY (id);


--
-- Name: spree_return_items spree_return_items_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_return_items
    ADD CONSTRAINT spree_return_items_pkey PRIMARY KEY (id);


--
-- Name: spree_role_users spree_role_users_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_role_users
    ADD CONSTRAINT spree_role_users_pkey PRIMARY KEY (id);


--
-- Name: spree_roles spree_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_roles
    ADD CONSTRAINT spree_roles_pkey PRIMARY KEY (id);


--
-- Name: spree_shipments spree_shipments_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_shipments
    ADD CONSTRAINT spree_shipments_pkey PRIMARY KEY (id);


--
-- Name: spree_shipping_categories spree_shipping_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_shipping_categories
    ADD CONSTRAINT spree_shipping_categories_pkey PRIMARY KEY (id);


--
-- Name: spree_shipping_method_categories spree_shipping_method_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_shipping_method_categories
    ADD CONSTRAINT spree_shipping_method_categories_pkey PRIMARY KEY (id);


--
-- Name: spree_shipping_method_zones spree_shipping_method_zones_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_shipping_method_zones
    ADD CONSTRAINT spree_shipping_method_zones_pkey PRIMARY KEY (id);


--
-- Name: spree_shipping_methods spree_shipping_methods_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_shipping_methods
    ADD CONSTRAINT spree_shipping_methods_pkey PRIMARY KEY (id);


--
-- Name: spree_shipping_rates spree_shipping_rates_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_shipping_rates
    ADD CONSTRAINT spree_shipping_rates_pkey PRIMARY KEY (id);


--
-- Name: spree_state_changes spree_state_changes_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_state_changes
    ADD CONSTRAINT spree_state_changes_pkey PRIMARY KEY (id);


--
-- Name: spree_states spree_states_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_states
    ADD CONSTRAINT spree_states_pkey PRIMARY KEY (id);


--
-- Name: spree_stock_items spree_stock_items_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_stock_items
    ADD CONSTRAINT spree_stock_items_pkey PRIMARY KEY (id);


--
-- Name: spree_stock_locations spree_stock_locations_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_stock_locations
    ADD CONSTRAINT spree_stock_locations_pkey PRIMARY KEY (id);


--
-- Name: spree_stock_movements spree_stock_movements_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_stock_movements
    ADD CONSTRAINT spree_stock_movements_pkey PRIMARY KEY (id);


--
-- Name: spree_stock_transfers spree_stock_transfers_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_stock_transfers
    ADD CONSTRAINT spree_stock_transfers_pkey PRIMARY KEY (id);


--
-- Name: spree_store_credit_categories spree_store_credit_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_store_credit_categories
    ADD CONSTRAINT spree_store_credit_categories_pkey PRIMARY KEY (id);


--
-- Name: spree_store_credit_events spree_store_credit_events_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_store_credit_events
    ADD CONSTRAINT spree_store_credit_events_pkey PRIMARY KEY (id);


--
-- Name: spree_store_credit_types spree_store_credit_types_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_store_credit_types
    ADD CONSTRAINT spree_store_credit_types_pkey PRIMARY KEY (id);


--
-- Name: spree_store_credits spree_store_credits_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_store_credits
    ADD CONSTRAINT spree_store_credits_pkey PRIMARY KEY (id);


--
-- Name: spree_stores spree_stores_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_stores
    ADD CONSTRAINT spree_stores_pkey PRIMARY KEY (id);


--
-- Name: spree_tax_categories spree_tax_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_tax_categories
    ADD CONSTRAINT spree_tax_categories_pkey PRIMARY KEY (id);


--
-- Name: spree_tax_rates spree_tax_rates_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_tax_rates
    ADD CONSTRAINT spree_tax_rates_pkey PRIMARY KEY (id);


--
-- Name: spree_taxonomies spree_taxonomies_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_taxonomies
    ADD CONSTRAINT spree_taxonomies_pkey PRIMARY KEY (id);


--
-- Name: spree_taxons spree_taxons_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_taxons
    ADD CONSTRAINT spree_taxons_pkey PRIMARY KEY (id);


--
-- Name: spree_trackers spree_trackers_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_trackers
    ADD CONSTRAINT spree_trackers_pkey PRIMARY KEY (id);


--
-- Name: spree_users spree_users_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_users
    ADD CONSTRAINT spree_users_pkey PRIMARY KEY (id);


--
-- Name: spree_variants spree_variants_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_variants
    ADD CONSTRAINT spree_variants_pkey PRIMARY KEY (id);


--
-- Name: spree_zone_members spree_zone_members_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_zone_members
    ADD CONSTRAINT spree_zone_members_pkey PRIMARY KEY (id);


--
-- Name: spree_zones spree_zones_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_zones
    ADD CONSTRAINT spree_zones_pkey PRIMARY KEY (id);


--
-- Name: email_idx_unique; Type: INDEX; Schema: public; Owner: pguser
--

CREATE UNIQUE INDEX email_idx_unique ON public.spree_users USING btree (email);


--
-- Name: index_action_mailbox_inbound_emails_uniqueness; Type: INDEX; Schema: public; Owner: pguser
--

CREATE UNIQUE INDEX index_action_mailbox_inbound_emails_uniqueness ON public.action_mailbox_inbound_emails USING btree (message_id, message_checksum);


--
-- Name: index_action_text_rich_texts_uniqueness; Type: INDEX; Schema: public; Owner: pguser
--

CREATE UNIQUE INDEX index_action_text_rich_texts_uniqueness ON public.action_text_rich_texts USING btree (record_type, record_id, name);


--
-- Name: index_active_storage_attachments_on_blob_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);


--
-- Name: index_active_storage_attachments_uniqueness; Type: INDEX; Schema: public; Owner: pguser
--

CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);


--
-- Name: index_active_storage_blobs_on_key; Type: INDEX; Schema: public; Owner: pguser
--

CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);


--
-- Name: index_addresses_on_firstname; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_addresses_on_firstname ON public.spree_addresses USING btree (firstname);


--
-- Name: index_addresses_on_lastname; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_addresses_on_lastname ON public.spree_addresses USING btree (lastname);


--
-- Name: index_assets_on_viewable_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_assets_on_viewable_id ON public.spree_assets USING btree (viewable_id);


--
-- Name: index_assets_on_viewable_type_and_type; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_assets_on_viewable_type_and_type ON public.spree_assets USING btree (viewable_type, type);


--
-- Name: index_friendly_id_slugs_on_deleted_at; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_friendly_id_slugs_on_deleted_at ON public.friendly_id_slugs USING btree (deleted_at);


--
-- Name: index_friendly_id_slugs_on_slug_and_sluggable_type; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_friendly_id_slugs_on_slug_and_sluggable_type ON public.friendly_id_slugs USING btree (slug, sluggable_type);


--
-- Name: index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope; Type: INDEX; Schema: public; Owner: pguser
--

CREATE UNIQUE INDEX index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope ON public.friendly_id_slugs USING btree (slug, sluggable_type, scope);


--
-- Name: index_friendly_id_slugs_on_sluggable_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_friendly_id_slugs_on_sluggable_id ON public.friendly_id_slugs USING btree (sluggable_id);


--
-- Name: index_friendly_id_slugs_on_sluggable_type; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_friendly_id_slugs_on_sluggable_type ON public.friendly_id_slugs USING btree (sluggable_type);


--
-- Name: index_inventory_units_on_order_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_inventory_units_on_order_id ON public.spree_inventory_units USING btree (order_id);


--
-- Name: index_inventory_units_on_shipment_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_inventory_units_on_shipment_id ON public.spree_inventory_units USING btree (shipment_id);


--
-- Name: index_inventory_units_on_variant_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_inventory_units_on_variant_id ON public.spree_inventory_units USING btree (variant_id);


--
-- Name: index_option_values_variants_on_variant_id_and_option_value_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE UNIQUE INDEX index_option_values_variants_on_variant_id_and_option_value_id ON public.spree_option_value_variants USING btree (variant_id, option_value_id);


--
-- Name: index_product_properties_on_product_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_product_properties_on_product_id ON public.spree_product_properties USING btree (product_id);


--
-- Name: index_products_promotion_rules_on_product_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_products_promotion_rules_on_product_id ON public.spree_product_promotion_rules USING btree (product_id);


--
-- Name: index_products_promotion_rules_on_promotion_rule_and_product; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_products_promotion_rules_on_promotion_rule_and_product ON public.spree_product_promotion_rules USING btree (promotion_rule_id, product_id);


--
-- Name: index_promotion_rules_on_product_group_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_promotion_rules_on_product_group_id ON public.spree_promotion_rules USING btree (product_group_id);


--
-- Name: index_promotion_rules_on_user_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_promotion_rules_on_user_id ON public.spree_promotion_rules USING btree (user_id);


--
-- Name: index_promotion_rules_users_on_promotion_rule_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_promotion_rules_users_on_promotion_rule_id ON public.spree_promotion_rule_users USING btree (promotion_rule_id);


--
-- Name: index_promotion_rules_users_on_user_id_and_promotion_rule_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_promotion_rules_users_on_user_id_and_promotion_rule_id ON public.spree_promotion_rule_users USING btree (user_id, promotion_rule_id);


--
-- Name: index_property_prototypes_on_prototype_id_and_property_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE UNIQUE INDEX index_property_prototypes_on_prototype_id_and_property_id ON public.spree_property_prototypes USING btree (prototype_id, property_id);


--
-- Name: index_refunds_on_refund_reason_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_refunds_on_refund_reason_id ON public.spree_refunds USING btree (refund_reason_id);


--
-- Name: index_reimbursement_credits_on_creditable_id_and_type; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_reimbursement_credits_on_creditable_id_and_type ON public.spree_reimbursement_credits USING btree (creditable_id, creditable_type);


--
-- Name: index_return_authorizations_on_return_authorization_reason_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_return_authorizations_on_return_authorization_reason_id ON public.spree_return_authorizations USING btree (return_authorization_reason_id);


--
-- Name: index_return_items_on_customer_return_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_return_items_on_customer_return_id ON public.spree_return_items USING btree (customer_return_id);


--
-- Name: index_spree_addresses_on_country_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_addresses_on_country_id ON public.spree_addresses USING btree (country_id);


--
-- Name: index_spree_addresses_on_deleted_at; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_addresses_on_deleted_at ON public.spree_addresses USING btree (deleted_at);


--
-- Name: index_spree_addresses_on_state_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_addresses_on_state_id ON public.spree_addresses USING btree (state_id);


--
-- Name: index_spree_addresses_on_user_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_addresses_on_user_id ON public.spree_addresses USING btree (user_id);


--
-- Name: index_spree_adjustments_on_adjustable_id_and_adjustable_type; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_adjustments_on_adjustable_id_and_adjustable_type ON public.spree_adjustments USING btree (adjustable_id, adjustable_type);


--
-- Name: index_spree_adjustments_on_eligible; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_adjustments_on_eligible ON public.spree_adjustments USING btree (eligible);


--
-- Name: index_spree_adjustments_on_order_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_adjustments_on_order_id ON public.spree_adjustments USING btree (order_id);


--
-- Name: index_spree_adjustments_on_source_id_and_source_type; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_adjustments_on_source_id_and_source_type ON public.spree_adjustments USING btree (source_id, source_type);


--
-- Name: index_spree_assets_on_position; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_assets_on_position ON public.spree_assets USING btree ("position");


--
-- Name: index_spree_calculators_on_calculable_id_and_calculable_type; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_calculators_on_calculable_id_and_calculable_type ON public.spree_calculators USING btree (calculable_id, calculable_type);


--
-- Name: index_spree_calculators_on_deleted_at; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_calculators_on_deleted_at ON public.spree_calculators USING btree (deleted_at);


--
-- Name: index_spree_calculators_on_id_and_type; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_calculators_on_id_and_type ON public.spree_calculators USING btree (id, type);


--
-- Name: index_spree_checks_on_payment_method_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_checks_on_payment_method_id ON public.spree_checks USING btree (payment_method_id);


--
-- Name: index_spree_checks_on_user_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_checks_on_user_id ON public.spree_checks USING btree (user_id);


--
-- Name: index_spree_countries_on_iso; Type: INDEX; Schema: public; Owner: pguser
--

CREATE UNIQUE INDEX index_spree_countries_on_iso ON public.spree_countries USING btree (iso);


--
-- Name: index_spree_countries_on_iso3; Type: INDEX; Schema: public; Owner: pguser
--

CREATE UNIQUE INDEX index_spree_countries_on_iso3 ON public.spree_countries USING btree (iso3);


--
-- Name: index_spree_countries_on_lower_iso_name; Type: INDEX; Schema: public; Owner: pguser
--

CREATE UNIQUE INDEX index_spree_countries_on_lower_iso_name ON public.spree_countries USING btree (lower((iso_name)::text));


--
-- Name: index_spree_countries_on_lower_name; Type: INDEX; Schema: public; Owner: pguser
--

CREATE UNIQUE INDEX index_spree_countries_on_lower_name ON public.spree_countries USING btree (lower((name)::text));


--
-- Name: index_spree_credit_cards_on_address_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_credit_cards_on_address_id ON public.spree_credit_cards USING btree (address_id);


--
-- Name: index_spree_credit_cards_on_deleted_at; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_credit_cards_on_deleted_at ON public.spree_credit_cards USING btree (deleted_at);


--
-- Name: index_spree_credit_cards_on_payment_method_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_credit_cards_on_payment_method_id ON public.spree_credit_cards USING btree (payment_method_id);


--
-- Name: index_spree_credit_cards_on_user_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_credit_cards_on_user_id ON public.spree_credit_cards USING btree (user_id);


--
-- Name: index_spree_customer_returns_on_number; Type: INDEX; Schema: public; Owner: pguser
--

CREATE UNIQUE INDEX index_spree_customer_returns_on_number ON public.spree_customer_returns USING btree (number);


--
-- Name: index_spree_customer_returns_on_stock_location_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_customer_returns_on_stock_location_id ON public.spree_customer_returns USING btree (stock_location_id);


--
-- Name: index_spree_gateways_on_active; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_gateways_on_active ON public.spree_gateways USING btree (active);


--
-- Name: index_spree_gateways_on_test_mode; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_gateways_on_test_mode ON public.spree_gateways USING btree (test_mode);


--
-- Name: index_spree_inventory_units_on_line_item_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_inventory_units_on_line_item_id ON public.spree_inventory_units USING btree (line_item_id);


--
-- Name: index_spree_inventory_units_on_original_return_item_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_inventory_units_on_original_return_item_id ON public.spree_inventory_units USING btree (original_return_item_id);


--
-- Name: index_spree_line_items_on_order_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_line_items_on_order_id ON public.spree_line_items USING btree (order_id);


--
-- Name: index_spree_line_items_on_tax_category_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_line_items_on_tax_category_id ON public.spree_line_items USING btree (tax_category_id);


--
-- Name: index_spree_line_items_on_variant_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_line_items_on_variant_id ON public.spree_line_items USING btree (variant_id);


--
-- Name: index_spree_log_entries_on_source_id_and_source_type; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_log_entries_on_source_id_and_source_type ON public.spree_log_entries USING btree (source_id, source_type);


--
-- Name: index_spree_oauth_access_grants_on_application_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_oauth_access_grants_on_application_id ON public.spree_oauth_access_grants USING btree (application_id);


--
-- Name: index_spree_oauth_access_grants_on_token; Type: INDEX; Schema: public; Owner: pguser
--

CREATE UNIQUE INDEX index_spree_oauth_access_grants_on_token ON public.spree_oauth_access_grants USING btree (token);


--
-- Name: index_spree_oauth_access_tokens_on_application_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_oauth_access_tokens_on_application_id ON public.spree_oauth_access_tokens USING btree (application_id);


--
-- Name: index_spree_oauth_access_tokens_on_refresh_token; Type: INDEX; Schema: public; Owner: pguser
--

CREATE UNIQUE INDEX index_spree_oauth_access_tokens_on_refresh_token ON public.spree_oauth_access_tokens USING btree (refresh_token);


--
-- Name: index_spree_oauth_access_tokens_on_resource_owner_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_oauth_access_tokens_on_resource_owner_id ON public.spree_oauth_access_tokens USING btree (resource_owner_id);


--
-- Name: index_spree_oauth_access_tokens_on_token; Type: INDEX; Schema: public; Owner: pguser
--

CREATE UNIQUE INDEX index_spree_oauth_access_tokens_on_token ON public.spree_oauth_access_tokens USING btree (token);


--
-- Name: index_spree_oauth_applications_on_uid; Type: INDEX; Schema: public; Owner: pguser
--

CREATE UNIQUE INDEX index_spree_oauth_applications_on_uid ON public.spree_oauth_applications USING btree (uid);


--
-- Name: index_spree_option_type_prototypes_on_option_type_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_option_type_prototypes_on_option_type_id ON public.spree_option_type_prototypes USING btree (option_type_id);


--
-- Name: index_spree_option_type_prototypes_on_prototype_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_option_type_prototypes_on_prototype_id ON public.spree_option_type_prototypes USING btree (prototype_id);


--
-- Name: index_spree_option_types_on_name; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_option_types_on_name ON public.spree_option_types USING btree (name);


--
-- Name: index_spree_option_types_on_position; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_option_types_on_position ON public.spree_option_types USING btree ("position");


--
-- Name: index_spree_option_value_variants_on_option_value_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_option_value_variants_on_option_value_id ON public.spree_option_value_variants USING btree (option_value_id);


--
-- Name: index_spree_option_value_variants_on_variant_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_option_value_variants_on_variant_id ON public.spree_option_value_variants USING btree (variant_id);


--
-- Name: index_spree_option_values_on_name; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_option_values_on_name ON public.spree_option_values USING btree (name);


--
-- Name: index_spree_option_values_on_option_type_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_option_values_on_option_type_id ON public.spree_option_values USING btree (option_type_id);


--
-- Name: index_spree_option_values_on_position; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_option_values_on_position ON public.spree_option_values USING btree ("position");


--
-- Name: index_spree_order_promotions_on_order_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_order_promotions_on_order_id ON public.spree_order_promotions USING btree (order_id);


--
-- Name: index_spree_order_promotions_on_promotion_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_order_promotions_on_promotion_id ON public.spree_order_promotions USING btree (promotion_id);


--
-- Name: index_spree_order_promotions_on_promotion_id_and_order_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_order_promotions_on_promotion_id_and_order_id ON public.spree_order_promotions USING btree (promotion_id, order_id);


--
-- Name: index_spree_orders_on_approver_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_orders_on_approver_id ON public.spree_orders USING btree (approver_id);


--
-- Name: index_spree_orders_on_bill_address_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_orders_on_bill_address_id ON public.spree_orders USING btree (bill_address_id);


--
-- Name: index_spree_orders_on_canceler_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_orders_on_canceler_id ON public.spree_orders USING btree (canceler_id);


--
-- Name: index_spree_orders_on_completed_at; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_orders_on_completed_at ON public.spree_orders USING btree (completed_at);


--
-- Name: index_spree_orders_on_confirmation_delivered; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_orders_on_confirmation_delivered ON public.spree_orders USING btree (confirmation_delivered);


--
-- Name: index_spree_orders_on_considered_risky; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_orders_on_considered_risky ON public.spree_orders USING btree (considered_risky);


--
-- Name: index_spree_orders_on_created_by_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_orders_on_created_by_id ON public.spree_orders USING btree (created_by_id);


--
-- Name: index_spree_orders_on_number; Type: INDEX; Schema: public; Owner: pguser
--

CREATE UNIQUE INDEX index_spree_orders_on_number ON public.spree_orders USING btree (number);


--
-- Name: index_spree_orders_on_ship_address_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_orders_on_ship_address_id ON public.spree_orders USING btree (ship_address_id);


--
-- Name: index_spree_orders_on_store_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_orders_on_store_id ON public.spree_orders USING btree (store_id);


--
-- Name: index_spree_orders_on_token; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_orders_on_token ON public.spree_orders USING btree (token);


--
-- Name: index_spree_orders_on_user_id_and_created_by_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_orders_on_user_id_and_created_by_id ON public.spree_orders USING btree (user_id, created_by_id);


--
-- Name: index_spree_payment_capture_events_on_payment_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_payment_capture_events_on_payment_id ON public.spree_payment_capture_events USING btree (payment_id);


--
-- Name: index_spree_payment_methods_on_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_payment_methods_on_id ON public.spree_payment_methods USING btree (id);


--
-- Name: index_spree_payment_methods_on_id_and_type; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_payment_methods_on_id_and_type ON public.spree_payment_methods USING btree (id, type);


--
-- Name: index_spree_payment_methods_on_store_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_payment_methods_on_store_id ON public.spree_payment_methods USING btree (store_id);


--
-- Name: index_spree_payments_on_number; Type: INDEX; Schema: public; Owner: pguser
--

CREATE UNIQUE INDEX index_spree_payments_on_number ON public.spree_payments USING btree (number);


--
-- Name: index_spree_payments_on_order_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_payments_on_order_id ON public.spree_payments USING btree (order_id);


--
-- Name: index_spree_payments_on_payment_method_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_payments_on_payment_method_id ON public.spree_payments USING btree (payment_method_id);


--
-- Name: index_spree_payments_on_source_id_and_source_type; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_payments_on_source_id_and_source_type ON public.spree_payments USING btree (source_id, source_type);


--
-- Name: index_spree_preferences_on_key; Type: INDEX; Schema: public; Owner: pguser
--

CREATE UNIQUE INDEX index_spree_preferences_on_key ON public.spree_preferences USING btree (key);


--
-- Name: index_spree_prices_on_deleted_at; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_prices_on_deleted_at ON public.spree_prices USING btree (deleted_at);


--
-- Name: index_spree_prices_on_variant_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_prices_on_variant_id ON public.spree_prices USING btree (variant_id);


--
-- Name: index_spree_prices_on_variant_id_and_currency; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_prices_on_variant_id_and_currency ON public.spree_prices USING btree (variant_id, currency);


--
-- Name: index_spree_product_option_types_on_option_type_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_product_option_types_on_option_type_id ON public.spree_product_option_types USING btree (option_type_id);


--
-- Name: index_spree_product_option_types_on_position; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_product_option_types_on_position ON public.spree_product_option_types USING btree ("position");


--
-- Name: index_spree_product_option_types_on_product_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_product_option_types_on_product_id ON public.spree_product_option_types USING btree (product_id);


--
-- Name: index_spree_product_properties_on_position; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_product_properties_on_position ON public.spree_product_properties USING btree ("position");


--
-- Name: index_spree_product_properties_on_property_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_product_properties_on_property_id ON public.spree_product_properties USING btree (property_id);


--
-- Name: index_spree_products_on_available_on; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_products_on_available_on ON public.spree_products USING btree (available_on);


--
-- Name: index_spree_products_on_deleted_at; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_products_on_deleted_at ON public.spree_products USING btree (deleted_at);


--
-- Name: index_spree_products_on_discontinue_on; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_products_on_discontinue_on ON public.spree_products USING btree (discontinue_on);


--
-- Name: index_spree_products_on_name; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_products_on_name ON public.spree_products USING btree (name);


--
-- Name: index_spree_products_on_shipping_category_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_products_on_shipping_category_id ON public.spree_products USING btree (shipping_category_id);


--
-- Name: index_spree_products_on_slug; Type: INDEX; Schema: public; Owner: pguser
--

CREATE UNIQUE INDEX index_spree_products_on_slug ON public.spree_products USING btree (slug);


--
-- Name: index_spree_products_on_tax_category_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_products_on_tax_category_id ON public.spree_products USING btree (tax_category_id);


--
-- Name: index_spree_products_taxons_on_position; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_products_taxons_on_position ON public.spree_products_taxons USING btree ("position");


--
-- Name: index_spree_products_taxons_on_product_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_products_taxons_on_product_id ON public.spree_products_taxons USING btree (product_id);


--
-- Name: index_spree_products_taxons_on_taxon_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_products_taxons_on_taxon_id ON public.spree_products_taxons USING btree (taxon_id);


--
-- Name: index_spree_promotion_action_line_items_on_promotion_action_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_promotion_action_line_items_on_promotion_action_id ON public.spree_promotion_action_line_items USING btree (promotion_action_id);


--
-- Name: index_spree_promotion_action_line_items_on_variant_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_promotion_action_line_items_on_variant_id ON public.spree_promotion_action_line_items USING btree (variant_id);


--
-- Name: index_spree_promotion_actions_on_deleted_at; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_promotion_actions_on_deleted_at ON public.spree_promotion_actions USING btree (deleted_at);


--
-- Name: index_spree_promotion_actions_on_id_and_type; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_promotion_actions_on_id_and_type ON public.spree_promotion_actions USING btree (id, type);


--
-- Name: index_spree_promotion_actions_on_promotion_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_promotion_actions_on_promotion_id ON public.spree_promotion_actions USING btree (promotion_id);


--
-- Name: index_spree_promotion_rule_taxons_on_promotion_rule_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_promotion_rule_taxons_on_promotion_rule_id ON public.spree_promotion_rule_taxons USING btree (promotion_rule_id);


--
-- Name: index_spree_promotion_rule_taxons_on_taxon_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_promotion_rule_taxons_on_taxon_id ON public.spree_promotion_rule_taxons USING btree (taxon_id);


--
-- Name: index_spree_promotion_rules_on_promotion_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_promotion_rules_on_promotion_id ON public.spree_promotion_rules USING btree (promotion_id);


--
-- Name: index_spree_promotions_on_advertise; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_promotions_on_advertise ON public.spree_promotions USING btree (advertise);


--
-- Name: index_spree_promotions_on_code; Type: INDEX; Schema: public; Owner: pguser
--

CREATE UNIQUE INDEX index_spree_promotions_on_code ON public.spree_promotions USING btree (code);


--
-- Name: index_spree_promotions_on_expires_at; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_promotions_on_expires_at ON public.spree_promotions USING btree (expires_at);


--
-- Name: index_spree_promotions_on_id_and_type; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_promotions_on_id_and_type ON public.spree_promotions USING btree (id, type);


--
-- Name: index_spree_promotions_on_promotion_category_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_promotions_on_promotion_category_id ON public.spree_promotions USING btree (promotion_category_id);


--
-- Name: index_spree_promotions_on_starts_at; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_promotions_on_starts_at ON public.spree_promotions USING btree (starts_at);


--
-- Name: index_spree_properties_on_name; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_properties_on_name ON public.spree_properties USING btree (name);


--
-- Name: index_spree_property_prototypes_on_property_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_property_prototypes_on_property_id ON public.spree_property_prototypes USING btree (property_id);


--
-- Name: index_spree_property_prototypes_on_prototype_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_property_prototypes_on_prototype_id ON public.spree_property_prototypes USING btree (prototype_id);


--
-- Name: index_spree_prototype_taxons_on_prototype_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_prototype_taxons_on_prototype_id ON public.spree_prototype_taxons USING btree (prototype_id);


--
-- Name: index_spree_prototype_taxons_on_prototype_id_and_taxon_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_prototype_taxons_on_prototype_id_and_taxon_id ON public.spree_prototype_taxons USING btree (prototype_id, taxon_id);


--
-- Name: index_spree_prototype_taxons_on_taxon_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_prototype_taxons_on_taxon_id ON public.spree_prototype_taxons USING btree (taxon_id);


--
-- Name: index_spree_refund_reasons_on_lower_name; Type: INDEX; Schema: public; Owner: pguser
--

CREATE UNIQUE INDEX index_spree_refund_reasons_on_lower_name ON public.spree_refund_reasons USING btree (lower((name)::text));


--
-- Name: index_spree_refunds_on_payment_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_refunds_on_payment_id ON public.spree_refunds USING btree (payment_id);


--
-- Name: index_spree_refunds_on_reimbursement_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_refunds_on_reimbursement_id ON public.spree_refunds USING btree (reimbursement_id);


--
-- Name: index_spree_reimbursement_credits_on_reimbursement_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_reimbursement_credits_on_reimbursement_id ON public.spree_reimbursement_credits USING btree (reimbursement_id);


--
-- Name: index_spree_reimbursement_types_on_lower_name; Type: INDEX; Schema: public; Owner: pguser
--

CREATE UNIQUE INDEX index_spree_reimbursement_types_on_lower_name ON public.spree_reimbursement_types USING btree (lower((name)::text));


--
-- Name: index_spree_reimbursement_types_on_type; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_reimbursement_types_on_type ON public.spree_reimbursement_types USING btree (type);


--
-- Name: index_spree_reimbursements_on_customer_return_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_reimbursements_on_customer_return_id ON public.spree_reimbursements USING btree (customer_return_id);


--
-- Name: index_spree_reimbursements_on_number; Type: INDEX; Schema: public; Owner: pguser
--

CREATE UNIQUE INDEX index_spree_reimbursements_on_number ON public.spree_reimbursements USING btree (number);


--
-- Name: index_spree_reimbursements_on_order_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_reimbursements_on_order_id ON public.spree_reimbursements USING btree (order_id);


--
-- Name: index_spree_return_authorization_reasons_on_lower_name; Type: INDEX; Schema: public; Owner: pguser
--

CREATE UNIQUE INDEX index_spree_return_authorization_reasons_on_lower_name ON public.spree_return_authorization_reasons USING btree (lower((name)::text));


--
-- Name: index_spree_return_authorizations_on_number; Type: INDEX; Schema: public; Owner: pguser
--

CREATE UNIQUE INDEX index_spree_return_authorizations_on_number ON public.spree_return_authorizations USING btree (number);


--
-- Name: index_spree_return_authorizations_on_order_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_return_authorizations_on_order_id ON public.spree_return_authorizations USING btree (order_id);


--
-- Name: index_spree_return_authorizations_on_stock_location_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_return_authorizations_on_stock_location_id ON public.spree_return_authorizations USING btree (stock_location_id);


--
-- Name: index_spree_return_items_on_exchange_variant_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_return_items_on_exchange_variant_id ON public.spree_return_items USING btree (exchange_variant_id);


--
-- Name: index_spree_return_items_on_inventory_unit_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_return_items_on_inventory_unit_id ON public.spree_return_items USING btree (inventory_unit_id);


--
-- Name: index_spree_return_items_on_override_reimbursement_type_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_return_items_on_override_reimbursement_type_id ON public.spree_return_items USING btree (override_reimbursement_type_id);


--
-- Name: index_spree_return_items_on_preferred_reimbursement_type_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_return_items_on_preferred_reimbursement_type_id ON public.spree_return_items USING btree (preferred_reimbursement_type_id);


--
-- Name: index_spree_return_items_on_reimbursement_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_return_items_on_reimbursement_id ON public.spree_return_items USING btree (reimbursement_id);


--
-- Name: index_spree_return_items_on_return_authorization_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_return_items_on_return_authorization_id ON public.spree_return_items USING btree (return_authorization_id);


--
-- Name: index_spree_role_users_on_role_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_role_users_on_role_id ON public.spree_role_users USING btree (role_id);


--
-- Name: index_spree_role_users_on_user_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_role_users_on_user_id ON public.spree_role_users USING btree (user_id);


--
-- Name: index_spree_roles_on_lower_name; Type: INDEX; Schema: public; Owner: pguser
--

CREATE UNIQUE INDEX index_spree_roles_on_lower_name ON public.spree_roles USING btree (lower((name)::text));


--
-- Name: index_spree_shipments_on_address_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_shipments_on_address_id ON public.spree_shipments USING btree (address_id);


--
-- Name: index_spree_shipments_on_number; Type: INDEX; Schema: public; Owner: pguser
--

CREATE UNIQUE INDEX index_spree_shipments_on_number ON public.spree_shipments USING btree (number);


--
-- Name: index_spree_shipments_on_order_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_shipments_on_order_id ON public.spree_shipments USING btree (order_id);


--
-- Name: index_spree_shipments_on_stock_location_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_shipments_on_stock_location_id ON public.spree_shipments USING btree (stock_location_id);


--
-- Name: index_spree_shipping_categories_on_name; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_shipping_categories_on_name ON public.spree_shipping_categories USING btree (name);


--
-- Name: index_spree_shipping_method_categories_on_shipping_category_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_shipping_method_categories_on_shipping_category_id ON public.spree_shipping_method_categories USING btree (shipping_category_id);


--
-- Name: index_spree_shipping_method_categories_on_shipping_method_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_shipping_method_categories_on_shipping_method_id ON public.spree_shipping_method_categories USING btree (shipping_method_id);


--
-- Name: index_spree_shipping_method_zones_on_shipping_method_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_shipping_method_zones_on_shipping_method_id ON public.spree_shipping_method_zones USING btree (shipping_method_id);


--
-- Name: index_spree_shipping_method_zones_on_zone_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_shipping_method_zones_on_zone_id ON public.spree_shipping_method_zones USING btree (zone_id);


--
-- Name: index_spree_shipping_methods_on_deleted_at; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_shipping_methods_on_deleted_at ON public.spree_shipping_methods USING btree (deleted_at);


--
-- Name: index_spree_shipping_methods_on_tax_category_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_shipping_methods_on_tax_category_id ON public.spree_shipping_methods USING btree (tax_category_id);


--
-- Name: index_spree_shipping_rates_on_selected; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_shipping_rates_on_selected ON public.spree_shipping_rates USING btree (selected);


--
-- Name: index_spree_shipping_rates_on_shipment_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_shipping_rates_on_shipment_id ON public.spree_shipping_rates USING btree (shipment_id);


--
-- Name: index_spree_shipping_rates_on_shipping_method_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_shipping_rates_on_shipping_method_id ON public.spree_shipping_rates USING btree (shipping_method_id);


--
-- Name: index_spree_shipping_rates_on_tax_rate_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_shipping_rates_on_tax_rate_id ON public.spree_shipping_rates USING btree (tax_rate_id);


--
-- Name: index_spree_state_changes_on_stateful_id_and_stateful_type; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_state_changes_on_stateful_id_and_stateful_type ON public.spree_state_changes USING btree (stateful_id, stateful_type);


--
-- Name: index_spree_states_on_country_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_states_on_country_id ON public.spree_states USING btree (country_id);


--
-- Name: index_spree_stock_items_on_backorderable; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_stock_items_on_backorderable ON public.spree_stock_items USING btree (backorderable);


--
-- Name: index_spree_stock_items_on_deleted_at; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_stock_items_on_deleted_at ON public.spree_stock_items USING btree (deleted_at);


--
-- Name: index_spree_stock_items_on_stock_location_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_stock_items_on_stock_location_id ON public.spree_stock_items USING btree (stock_location_id);


--
-- Name: index_spree_stock_items_on_variant_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_stock_items_on_variant_id ON public.spree_stock_items USING btree (variant_id);


--
-- Name: index_spree_stock_locations_on_active; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_stock_locations_on_active ON public.spree_stock_locations USING btree (active);


--
-- Name: index_spree_stock_locations_on_backorderable_default; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_stock_locations_on_backorderable_default ON public.spree_stock_locations USING btree (backorderable_default);


--
-- Name: index_spree_stock_locations_on_country_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_stock_locations_on_country_id ON public.spree_stock_locations USING btree (country_id);


--
-- Name: index_spree_stock_locations_on_propagate_all_variants; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_stock_locations_on_propagate_all_variants ON public.spree_stock_locations USING btree (propagate_all_variants);


--
-- Name: index_spree_stock_locations_on_state_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_stock_locations_on_state_id ON public.spree_stock_locations USING btree (state_id);


--
-- Name: index_spree_stock_movements_on_stock_item_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_stock_movements_on_stock_item_id ON public.spree_stock_movements USING btree (stock_item_id);


--
-- Name: index_spree_stock_transfers_on_destination_location_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_stock_transfers_on_destination_location_id ON public.spree_stock_transfers USING btree (destination_location_id);


--
-- Name: index_spree_stock_transfers_on_number; Type: INDEX; Schema: public; Owner: pguser
--

CREATE UNIQUE INDEX index_spree_stock_transfers_on_number ON public.spree_stock_transfers USING btree (number);


--
-- Name: index_spree_stock_transfers_on_source_location_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_stock_transfers_on_source_location_id ON public.spree_stock_transfers USING btree (source_location_id);


--
-- Name: index_spree_store_credit_events_on_store_credit_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_store_credit_events_on_store_credit_id ON public.spree_store_credit_events USING btree (store_credit_id);


--
-- Name: index_spree_store_credit_types_on_priority; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_store_credit_types_on_priority ON public.spree_store_credit_types USING btree (priority);


--
-- Name: index_spree_store_credits_on_deleted_at; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_store_credits_on_deleted_at ON public.spree_store_credits USING btree (deleted_at);


--
-- Name: index_spree_store_credits_on_type_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_store_credits_on_type_id ON public.spree_store_credits USING btree (type_id);


--
-- Name: index_spree_store_credits_on_user_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_store_credits_on_user_id ON public.spree_store_credits USING btree (user_id);


--
-- Name: index_spree_stores_on_default; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_stores_on_default ON public.spree_stores USING btree ("default");


--
-- Name: index_spree_stores_on_lower_code; Type: INDEX; Schema: public; Owner: pguser
--

CREATE UNIQUE INDEX index_spree_stores_on_lower_code ON public.spree_stores USING btree (lower((code)::text));


--
-- Name: index_spree_stores_on_url; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_stores_on_url ON public.spree_stores USING btree (url);


--
-- Name: index_spree_tax_categories_on_deleted_at; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_tax_categories_on_deleted_at ON public.spree_tax_categories USING btree (deleted_at);


--
-- Name: index_spree_tax_categories_on_is_default; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_tax_categories_on_is_default ON public.spree_tax_categories USING btree (is_default);


--
-- Name: index_spree_tax_rates_on_deleted_at; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_tax_rates_on_deleted_at ON public.spree_tax_rates USING btree (deleted_at);


--
-- Name: index_spree_tax_rates_on_included_in_price; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_tax_rates_on_included_in_price ON public.spree_tax_rates USING btree (included_in_price);


--
-- Name: index_spree_tax_rates_on_show_rate_in_label; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_tax_rates_on_show_rate_in_label ON public.spree_tax_rates USING btree (show_rate_in_label);


--
-- Name: index_spree_tax_rates_on_tax_category_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_tax_rates_on_tax_category_id ON public.spree_tax_rates USING btree (tax_category_id);


--
-- Name: index_spree_tax_rates_on_zone_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_tax_rates_on_zone_id ON public.spree_tax_rates USING btree (zone_id);


--
-- Name: index_spree_taxonomies_on_position; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_taxonomies_on_position ON public.spree_taxonomies USING btree ("position");


--
-- Name: index_spree_taxons_on_lft; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_taxons_on_lft ON public.spree_taxons USING btree (lft);


--
-- Name: index_spree_taxons_on_name; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_taxons_on_name ON public.spree_taxons USING btree (name);


--
-- Name: index_spree_taxons_on_position; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_taxons_on_position ON public.spree_taxons USING btree ("position");


--
-- Name: index_spree_taxons_on_rgt; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_taxons_on_rgt ON public.spree_taxons USING btree (rgt);


--
-- Name: index_spree_trackers_on_active; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_trackers_on_active ON public.spree_trackers USING btree (active);


--
-- Name: index_spree_users_on_bill_address_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_users_on_bill_address_id ON public.spree_users USING btree (bill_address_id);


--
-- Name: index_spree_users_on_deleted_at; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_users_on_deleted_at ON public.spree_users USING btree (deleted_at);


--
-- Name: index_spree_users_on_ship_address_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_users_on_ship_address_id ON public.spree_users USING btree (ship_address_id);


--
-- Name: index_spree_users_on_spree_api_key; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_users_on_spree_api_key ON public.spree_users USING btree (spree_api_key);


--
-- Name: index_spree_variants_on_deleted_at; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_variants_on_deleted_at ON public.spree_variants USING btree (deleted_at);


--
-- Name: index_spree_variants_on_discontinue_on; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_variants_on_discontinue_on ON public.spree_variants USING btree (discontinue_on);


--
-- Name: index_spree_variants_on_is_master; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_variants_on_is_master ON public.spree_variants USING btree (is_master);


--
-- Name: index_spree_variants_on_position; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_variants_on_position ON public.spree_variants USING btree ("position");


--
-- Name: index_spree_variants_on_product_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_variants_on_product_id ON public.spree_variants USING btree (product_id);


--
-- Name: index_spree_variants_on_sku; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_variants_on_sku ON public.spree_variants USING btree (sku);


--
-- Name: index_spree_variants_on_tax_category_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_variants_on_tax_category_id ON public.spree_variants USING btree (tax_category_id);


--
-- Name: index_spree_variants_on_track_inventory; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_variants_on_track_inventory ON public.spree_variants USING btree (track_inventory);


--
-- Name: index_spree_zone_members_on_zone_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_zone_members_on_zone_id ON public.spree_zone_members USING btree (zone_id);


--
-- Name: index_spree_zone_members_on_zoneable_id_and_zoneable_type; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_zone_members_on_zoneable_id_and_zoneable_type ON public.spree_zone_members USING btree (zoneable_id, zoneable_type);


--
-- Name: index_spree_zones_on_default_tax; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_zones_on_default_tax ON public.spree_zones USING btree (default_tax);


--
-- Name: index_spree_zones_on_kind; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_spree_zones_on_kind ON public.spree_zones USING btree (kind);


--
-- Name: index_stock_movements_on_originator_id_and_originator_type; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_stock_movements_on_originator_id_and_originator_type ON public.spree_stock_movements USING btree (originator_id, originator_type);


--
-- Name: index_taxons_on_parent_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_taxons_on_parent_id ON public.spree_taxons USING btree (parent_id);


--
-- Name: index_taxons_on_permalink; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_taxons_on_permalink ON public.spree_taxons USING btree (permalink);


--
-- Name: index_taxons_on_taxonomy_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_taxons_on_taxonomy_id ON public.spree_taxons USING btree (taxonomy_id);


--
-- Name: spree_option_type_prototypes_prototype_id_option_type_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE UNIQUE INDEX spree_option_type_prototypes_prototype_id_option_type_id ON public.spree_option_type_prototypes USING btree (prototype_id, option_type_id);


--
-- Name: spree_shipping_rates_join_index; Type: INDEX; Schema: public; Owner: pguser
--

CREATE UNIQUE INDEX spree_shipping_rates_join_index ON public.spree_shipping_rates USING btree (shipment_id, shipping_method_id);


--
-- Name: spree_store_credit_events_originator; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX spree_store_credit_events_originator ON public.spree_store_credit_events USING btree (originator_id, originator_type);


--
-- Name: spree_store_credits_originator; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX spree_store_credits_originator ON public.spree_store_credits USING btree (originator_id, originator_type);


--
-- Name: stock_item_by_loc_and_var_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX stock_item_by_loc_and_var_id ON public.spree_stock_items USING btree (stock_location_id, variant_id);


--
-- Name: unique_spree_shipping_method_categories; Type: INDEX; Schema: public; Owner: pguser
--

CREATE UNIQUE INDEX unique_spree_shipping_method_categories ON public.spree_shipping_method_categories USING btree (shipping_category_id, shipping_method_id);


--
-- Name: spree_oauth_access_grants fk_rails_8049be136c; Type: FK CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_oauth_access_grants
    ADD CONSTRAINT fk_rails_8049be136c FOREIGN KEY (application_id) REFERENCES public.spree_oauth_applications(id);


--
-- Name: active_storage_attachments fk_rails_c3b3935057; Type: FK CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: spree_oauth_access_tokens fk_rails_c9894c7021; Type: FK CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.spree_oauth_access_tokens
    ADD CONSTRAINT fk_rails_c9894c7021 FOREIGN KEY (application_id) REFERENCES public.spree_oauth_applications(id);


--
-- PostgreSQL database dump complete
--

