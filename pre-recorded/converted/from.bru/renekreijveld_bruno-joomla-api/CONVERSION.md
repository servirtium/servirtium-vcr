# Converted from a Bruno collection

Written by `servirtium convert bru` (Bruno's parser: @usebruno/lang 0.41.0, in embedded QuickJS).
Do not edit by hand: rerun the converter.

- Environment: `environments/Joomla Web Services API.bru`
- Requests: 182; tapes: 182; interactions (one per example): 194
- Interactions whose example documents no response body: 189 (each tape says so in its `## [Note]`)
- Requests with no example, so no tape: 0

| Source `.bru` | Request | Tape | Examples | With a response body |
|---|---|---|---|---|
| `Banners/List Banners.bru` | GET /api/index.php/v1/banners | [`banners/list-banners.md`](banners/list-banners.md) | 1 | 0 |
| `Banners/Add Banner.bru` | POST /api/index.php/v1/banners | [`banners/add-banner.md`](banners/add-banner.md) | 1 | 0 |
| `Banners/Get Banner.bru` | GET /api/index.php/v1/banners/3 | [`banners/get-banner.md`](banners/get-banner.md) | 1 | 0 |
| `Banners/Delete Banner.bru` | DELETE /api/index.php/v1/banners/{{banner_id}} | [`banners/delete-banner.md`](banners/delete-banner.md) | 1 | 0 |
| `Banners/Update Banner.bru` | PATCH /api/index.php/v1/banners/{{banner_id}} | [`banners/update-banner.md`](banners/update-banner.md) | 1 | 0 |
| `Banners Categories/List Banners Categories.bru` | GET /api/index.php/v1/banners/categories | [`banners-categories/list-banners-categories.md`](banners-categories/list-banners-categories.md) | 1 | 0 |
| `Banners Categories/Add Category.bru` | POST /api/index.php/v1/banners/categories | [`banners-categories/add-category.md`](banners-categories/add-category.md) | 1 | 0 |
| `Banners Categories/Get Banners Category.bru` | GET /api/index.php/v1/banners/categories/{{category_id}} | [`banners-categories/get-banners-category.md`](banners-categories/get-banners-category.md) | 1 | 0 |
| `Banners Categories/Delete Category.bru` | DELETE /api/index.php/v1/banners/categories/{{category_id}} | [`banners-categories/delete-category.md`](banners-categories/delete-category.md) | 1 | 0 |
| `Banners Categories/Update Banners Category.bru` | PATCH /api/index.php/v1/banners/categories/{{category_id}} | [`banners-categories/update-banners-category.md`](banners-categories/update-banners-category.md) | 1 | 0 |
| `Banners Clients/List Banners Clients.bru` | GET /api/index.php/v1/banners/clients | [`banners-clients/list-banners-clients.md`](banners-clients/list-banners-clients.md) | 1 | 0 |
| `Banners Clients/Add Banners Client.bru` | POST /api/index.php/v1/banners/clients | [`banners-clients/add-banners-client.md`](banners-clients/add-banners-client.md) | 1 | 0 |
| `Banners Clients/Get Banners Client.bru` | GET /api/index.php/v1/banners/clients/{{client_id}} | [`banners-clients/get-banners-client.md`](banners-clients/get-banners-client.md) | 1 | 0 |
| `Banners Clients/Delete Banners Client.bru` | DELETE /api/index.php/v1/banners/clients/{{client_id}} | [`banners-clients/delete-banners-client.md`](banners-clients/delete-banners-client.md) | 1 | 0 |
| `Banners Clients/Update Banners Client.bru` | PATCH /api/index.php/v1/banners/clients/{{client_id}} | [`banners-clients/update-banners-client.md`](banners-clients/update-banners-client.md) | 1 | 0 |
| `Banners Content History/List Banners Versions.bru` | GET /api/index.php/v1/banners/{{banner_id}}/contenthistory | [`banners-content-history/list-banners-versions.md`](banners-content-history/list-banners-versions.md) | 1 | 0 |
| `Banners Content History/Delete Banners Versions.bru` | DELETE /api/index.php/v1/banners/{{banner_id}}/contenthistory | [`banners-content-history/delete-banners-versions.md`](banners-content-history/delete-banners-versions.md) | 1 | 0 |
| `Banners Content History/Keep Banners Version.bru` | PATCH /api/index.php/v1/banners/{{version_id}}/contenthistory/keep | [`banners-content-history/keep-banners-version.md`](banners-content-history/keep-banners-version.md) | 1 | 0 |
| `Config Application/Get Global Configuration.bru` | GET /api/index.php/v1/config/application | [`config-application/get-global-configuration.md`](config-application/get-global-configuration.md) | 1 | 0 |
| `Config Application/Update Global Configuration.bru` | PATCH /api/index.php/v1/config/application | [`config-application/update-global-configuration.md`](config-application/update-global-configuration.md) | 1 | 0 |
| `Config Component/Get Component Configuration.bru` | GET /api/index.php/v1/config/com_contacts | [`config-component/get-component-configuration.md`](config-component/get-component-configuration.md) | 1 | 0 |
| `Config Component/Update Component Configuration.bru` | PATCH /api/index.php/v1/config/{{component_name}} | [`config-component/update-component-configuration.md`](config-component/update-component-configuration.md) | 1 | 0 |
| `Contacts/List Contacts.bru` | GET /api/index.php/v1/contacts | [`contacts/list-contacts.md`](contacts/list-contacts.md) | 1 | 0 |
| `Contacts/Add contact.bru` | POST /api/index.php/v1/contacts | [`contacts/add-contact.md`](contacts/add-contact.md) | 1 | 0 |
| `Contacts/Get Contact.bru` | GET /api/index.php/v1/contacts/{{contact_id}} | [`contacts/get-contact.md`](contacts/get-contact.md) | 1 | 0 |
| `Contacts/Delete Contact.bru` | DELETE /api/index.php/v1/contacts/{{contact_id}} | [`contacts/delete-contact.md`](contacts/delete-contact.md) | 1 | 0 |
| `Contacts/Update Contact.bru` | PATCH /api/index.php/v1/contacts/{{contact_id}} | [`contacts/update-contact.md`](contacts/update-contact.md) | 1 | 0 |
| `Contacts Categories/List Contacts Categories.bru` | GET /api/index.php/v1/contacts/categories | [`contacts-categories/list-contacts-categories.md`](contacts-categories/list-contacts-categories.md) | 1 | 0 |
| `Contacts Categories/Add Contacts Category.bru` | POST /api/index.php/v1/contacts/categories | [`contacts-categories/add-contacts-category.md`](contacts-categories/add-contacts-category.md) | 1 | 0 |
| `Contacts Categories/Get Contacts Category.bru` | GET /api/index.php/v1/contacts/categories/{{category_id}} | [`contacts-categories/get-contacts-category.md`](contacts-categories/get-contacts-category.md) | 1 | 0 |
| `Contacts Categories/Delete Contacts Category.bru` | DELETE /api/index.php/v1/contacts/categories/{{category_id}} | [`contacts-categories/delete-contacts-category.md`](contacts-categories/delete-contacts-category.md) | 1 | 0 |
| `Contacts Categories/Update Contacts Category}.bru` | PATCH /api/index.php/v1/contacts/categories/{{category_id}} | [`contacts-categories/update-contacts-category.md`](contacts-categories/update-contacts-category.md) | 1 | 0 |
| `Contacts Categories Fields/List Contacts Categories Fields.bru` | GET /api/index.php/v1/fields/contacts/categories | [`contacts-categories-fields/list-contacts-categories-fields.md`](contacts-categories-fields/list-contacts-categories-fields.md) | 1 | 0 |
| `Contacts Categories Fields/fields-contacts-categories.bru` | POST /api/index.php/v1/fields/contacts/categories | [`contacts-categories-fields/fields-contacts-categories.md`](contacts-categories-fields/fields-contacts-categories.md) | 1 | 0 |
| `Contacts Categories Fields/fields-contacts-categories-{field_id}.bru` | GET /api/index.php/v1/fields/contacts/categories/{{field_id}} | [`contacts-categories-fields/fields-contacts-categories-field-id.md`](contacts-categories-fields/fields-contacts-categories-field-id.md) | 1 | 0 |
| `Contacts Categories Fields/fields-contacts-categories-{field_id} (DELETE).bru` | DELETE /api/index.php/v1/fields/contacts/categories/{{field_id}} | [`contacts-categories-fields/fields-contacts-categories-field-id-delete.md`](contacts-categories-fields/fields-contacts-categories-field-id-delete.md) | 1 | 0 |
| `Contacts Categories Fields/fields-contacts-categories-{field_id} (PATCH).bru` | PATCH /api/index.php/v1/fields/contacts/categories/{{field_id}} | [`contacts-categories-fields/fields-contacts-categories-field-id-patch.md`](contacts-categories-fields/fields-contacts-categories-field-id-patch.md) | 1 | 0 |
| `Contacts Categories Fields Groups/fields-groups-contacts-contact.bru` | GET /api/index.php/v1/fields/groups/contacts/contact | [`contacts-categories-fields-groups/fields-groups-contacts-contact.md`](contacts-categories-fields-groups/fields-groups-contacts-contact.md) | 1 | 0 |
| `Contacts Categories Fields Groups/fields-groups-contacts-contact (POST).bru` | POST /api/index.php/v1/fields/groups/contacts/contact | [`contacts-categories-fields-groups/fields-groups-contacts-contact-post.md`](contacts-categories-fields-groups/fields-groups-contacts-contact-post.md) | 3 | 0 |
| `Contacts Categories Fields Groups/fields-groups-contacts-contact-{group_id}.bru` | GET /api/index.php/v1/fields/groups/contacts/contact/{{group_id}} | [`contacts-categories-fields-groups/fields-groups-contacts-contact-group-id.md`](contacts-categories-fields-groups/fields-groups-contacts-contact-group-id.md) | 1 | 0 |
| `Contacts Categories Fields Groups/fields-groups-contacts-contact-{group_id} (DELETE).bru` | DELETE /api/index.php/v1/fields/groups/contacts/contact/{{group_id}} | [`contacts-categories-fields-groups/fields-groups-contacts-contact-group-id-delete.md`](contacts-categories-fields-groups/fields-groups-contacts-contact-group-id-delete.md) | 1 | 0 |
| `Contacts Categories Fields Groups/fields-groups-contacts-contact-{group_id} (PATCH).bru` | PATCH /api/index.php/v1/fields/groups/contacts/contact/{{group_id}} | [`contacts-categories-fields-groups/fields-groups-contacts-contact-group-id-patch.md`](contacts-categories-fields-groups/fields-groups-contacts-contact-group-id-patch.md) | 3 | 0 |
| `Contacts Fields/fields-contacts-contact.bru` | GET /api/index.php/v1/fields/contacts/contact | [`contacts-fields/fields-contacts-contact.md`](contacts-fields/fields-contacts-contact.md) | 1 | 0 |
| `Contacts Fields/fields-contacts-contact (POST).bru` | POST /api/index.php/v1/fields/contacts/contact | [`contacts-fields/fields-contacts-contact-post.md`](contacts-fields/fields-contacts-contact-post.md) | 2 | 0 |
| `Contacts Fields/fields-contacts-contact-{field_id}.bru` | GET /api/index.php/v1/fields/contacts/contact/{{field_id}} | [`contacts-fields/fields-contacts-contact-field-id.md`](contacts-fields/fields-contacts-contact-field-id.md) | 1 | 0 |
| `Contacts Fields/fields-contacts-contact-{field_id} (DELETE).bru` | DELETE /api/index.php/v1/fields/contacts/contact/{{field_id}} | [`contacts-fields/fields-contacts-contact-field-id-delete.md`](contacts-fields/fields-contacts-contact-field-id-delete.md) | 1 | 0 |
| `Contacts Fields/fields-contacts-contact-{field_id} (PATCH).bru` | PATCH /api/index.php/v1/fields/contacts/contact/{{field_id}} | [`contacts-fields/fields-contacts-contact-field-id-patch.md`](contacts-fields/fields-contacts-contact-field-id-patch.md) | 2 | 0 |
| `Contacts Form/contacts-form-{contact_id}.bru` | POST /api/index.php/v1/contacts/form/{{contact_id}} | [`contacts-form/contacts-form-contact-id.md`](contacts-form/contacts-form-contact-id.md) | 1 | 0 |
| `Content Articles/content-articles.bru` | GET /api/index.php/v1/content/articles | [`content-articles/content-articles.md`](content-articles/content-articles.md) | 1 | 0 |
| `Content Articles/content-articles (POST).bru` | POST /api/index.php/v1/content/articles | [`content-articles/content-articles-post.md`](content-articles/content-articles-post.md) | 1 | 0 |
| `Content Articles/content-articles-{article_id}.bru` | GET /api/index.php/v1/content/articles/{{article_id}} | [`content-articles/content-articles-article-id.md`](content-articles/content-articles-article-id.md) | 1 | 0 |
| `Content Articles/content-articles-{article_id} (DELETE).bru` | DELETE /api/index.php/v1/content/articles/{{article_id}} | [`content-articles/content-articles-article-id-delete.md`](content-articles/content-articles-article-id-delete.md) | 1 | 0 |
| `Content Articles/content-articles-{article_id} (PATCH).bru` | PATCH /api/index.php/v1/content/articles/{{article_id}} | [`content-articles/content-articles-article-id-patch.md`](content-articles/content-articles-article-id-patch.md) | 1 | 0 |
| `Content Articles Fields/fields-content-articles.bru` | GET /api/index.php/v1/fields/content/articles | [`content-articles-fields/fields-content-articles.md`](content-articles-fields/fields-content-articles.md) | 1 | 0 |
| `Content Articles Fields/fields-content-articles (POST).bru` | POST /api/index.php/v1/fields/content/articles | [`content-articles-fields/fields-content-articles-post.md`](content-articles-fields/fields-content-articles-post.md) | 1 | 0 |
| `Content Articles Fields/fields-content-articles-{field_id}.bru` | GET /api/index.php/v1/fields/content/articles/{{field_id}} | [`content-articles-fields/fields-content-articles-field-id.md`](content-articles-fields/fields-content-articles-field-id.md) | 1 | 0 |
| `Content Articles Fields/fields-content-articles-{field_id} (DELETE).bru` | DELETE /api/index.php/v1/fields/content/articles/{{field_id}} | [`content-articles-fields/fields-content-articles-field-id-delete.md`](content-articles-fields/fields-content-articles-field-id-delete.md) | 1 | 0 |
| `Content Articles Fields/fields-content-articles-{field_id} (PATCH).bru` | PATCH /api/index.php/v1/fields/content/articles/{{field_id}} | [`content-articles-fields/fields-content-articles-field-id-patch.md`](content-articles-fields/fields-content-articles-field-id-patch.md) | 1 | 0 |
| `Content Articles Fields Groups/fields-groups-content-articles.bru` | GET /api/index.php/v1/fields/groups/content/articles | [`content-articles-fields-groups/fields-groups-content-articles.md`](content-articles-fields-groups/fields-groups-content-articles.md) | 1 | 0 |
| `Content Articles Fields Groups/fields-groups-content-articles (POST).bru` | POST /api/index.php/v1/fields/groups/content/articles | [`content-articles-fields-groups/fields-groups-content-articles-post.md`](content-articles-fields-groups/fields-groups-content-articles-post.md) | 1 | 0 |
| `Content Articles Fields Groups/fields-groups-content-articles-{group_id}.bru` | GET /api/index.php/v1/fields/groups/content/articles/{{group_id}} | [`content-articles-fields-groups/fields-groups-content-articles-group-id.md`](content-articles-fields-groups/fields-groups-content-articles-group-id.md) | 1 | 0 |
| `Content Articles Fields Groups/fields-groups-content-articles-{group_id} (DELETE).bru` | DELETE /api/index.php/v1/fields/groups/content/articles/{{group_id}} | [`content-articles-fields-groups/fields-groups-content-articles-group-id-delete.md`](content-articles-fields-groups/fields-groups-content-articles-group-id-delete.md) | 1 | 0 |
| `Content Articles Fields Groups/fields-groups-content-articles-{group_id} (PATCH).bru` | PATCH /api/index.php/v1/fields/groups/content/articles/{{group_id}} | [`content-articles-fields-groups/fields-groups-content-articles-group-id-patch.md`](content-articles-fields-groups/fields-groups-content-articles-group-id-patch.md) | 1 | 0 |
| `Content Categories/content-categories.bru` | GET /api/index.php/v1/content/categories | [`content-categories/content-categories.md`](content-categories/content-categories.md) | 1 | 0 |
| `Content Categories/content-categories (POST).bru` | POST /api/index.php/v1/content/categories | [`content-categories/content-categories-post.md`](content-categories/content-categories-post.md) | 1 | 0 |
| `Content Categories/content-categories-{category_id}.bru` | GET /api/index.php/v1/content/categories/{{category_id}} | [`content-categories/content-categories-category-id.md`](content-categories/content-categories-category-id.md) | 1 | 0 |
| `Content Categories/content-categories-{category_id} (DELETE).bru` | DELETE /api/index.php/v1/content/categories/{{category_id}} | [`content-categories/content-categories-category-id-delete.md`](content-categories/content-categories-category-id-delete.md) | 1 | 0 |
| `Content Categories/content-categories-{category_id} (PATCH).bru` | PATCH /api/index.php/v1/content/categories/{{category_id}} | [`content-categories/content-categories-category-id-patch.md`](content-categories/content-categories-category-id-patch.md) | 1 | 0 |
| `Content Categories Fields/fields-content-categories.bru` | GET /api/index.php/v1/fields/content/categories | [`content-categories-fields/fields-content-categories.md`](content-categories-fields/fields-content-categories.md) | 1 | 0 |
| `Content Categories Fields/fields-content-categories (POST).bru` | POST /api/index.php/v1/fields/content/categories | [`content-categories-fields/fields-content-categories-post.md`](content-categories-fields/fields-content-categories-post.md) | 1 | 0 |
| `Content Categories Fields/fields-content-categories-{field_id}.bru` | GET /api/index.php/v1/fields/content/categories/{{field_id}} | [`content-categories-fields/fields-content-categories-field-id.md`](content-categories-fields/fields-content-categories-field-id.md) | 1 | 0 |
| `Content Categories Fields/fields-content-categories-{field_id} (DELETE).bru` | DELETE /api/index.php/v1/fields/content/categories/{{field_id}} | [`content-categories-fields/fields-content-categories-field-id-delete.md`](content-categories-fields/fields-content-categories-field-id-delete.md) | 1 | 0 |
| `Content Categories Fields/fields-content-categories-{field_id} (PATCH).bru` | PATCH /api/index.php/v1/fields/content/categories/{{field_id}} | [`content-categories-fields/fields-content-categories-field-id-patch.md`](content-categories-fields/fields-content-categories-field-id-patch.md) | 1 | 0 |
| `Guided Tours/tours.bru` | GET /api/index.php/v1/tours | [`guided-tours/tours.md`](guided-tours/tours.md) | 1 | 0 |
| `Guided Tours/tours (POST).bru` | POST /api/index.php/v1/tours | [`guided-tours/tours-post.md`](guided-tours/tours-post.md) | 1 | 0 |
| `Guided Tours/tours-{tour_id}.bru` | GET /api/index.php/v1/tours/{{tour_id}} | [`guided-tours/tours-tour-id.md`](guided-tours/tours-tour-id.md) | 1 | 0 |
| `Guided Tours/tours-{tour_id} (DELETE).bru` | DELETE /api/index.php/v1/tours/{{tour_id}} | [`guided-tours/tours-tour-id-delete.md`](guided-tours/tours-tour-id-delete.md) | 1 | 0 |
| `Guided Tours/tours-{tour_id} (PATCH).bru` | PATCH /api/index.php/v1/tours/{{tour_id}} | [`guided-tours/tours-tour-id-patch.md`](guided-tours/tours-tour-id-patch.md) | 1 | 0 |
| `Guided Tours Steps/tours-{tour_id}-steps.bru` | GET /api/index.php/v1/tours/{{tour_id}}/steps | [`guided-tours-steps/tours-tour-id-steps.md`](guided-tours-steps/tours-tour-id-steps.md) | 1 | 0 |
| `Guided Tours Steps/tours-{tour_id}-steps (POST).bru` | POST /api/index.php/v1/tours/{{tour_id}}/steps | [`guided-tours-steps/tours-tour-id-steps-post.md`](guided-tours-steps/tours-tour-id-steps-post.md) | 1 | 0 |
| `Guided Tours Steps/tours-{tour_id}-steps-{step_id}.bru` | GET /api/index.php/v1/tours/{{tour_id}}/steps/{{step_id}} | [`guided-tours-steps/tours-tour-id-steps-step-id.md`](guided-tours-steps/tours-tour-id-steps-step-id.md) | 1 | 0 |
| `Guided Tours Steps/tours-{tour_id}-steps-{step_id} (DELETE).bru` | DELETE /api/index.php/v1/tours/{{tour_id}}/steps/{{step_id}} | [`guided-tours-steps/tours-tour-id-steps-step-id-delete.md`](guided-tours-steps/tours-tour-id-steps-step-id-delete.md) | 1 | 0 |
| `Guided Tours Steps/tours-{tour_id}-steps-{step_id} Copy.bru` | PATCH /api/index.php/v1/tours/{{tour_id}}/steps/{{step_id}} | [`guided-tours-steps/tours-tour-id-steps-step-id-copy.md`](guided-tours-steps/tours-tour-id-steps-step-id-copy.md) | 1 | 0 |
| `Installer/extensions.bru` | GET /api/index.php/v1/extensions | [`installer/extensions.md`](installer/extensions.md) | 1 | 0 |
| `Languages/languages.bru` | GET /api/index.php/v1/languages | [`languages/languages.md`](languages/languages.md) | 1 | 0 |
| `Languages/languages (POST).bru` | POST /api/index.php/v1/languages | [`languages/languages-post.md`](languages/languages-post.md) | 1 | 0 |
| `Languages Content/languages-content.bru` | GET /api/index.php/v1/languages/content | [`languages-content/languages-content.md`](languages-content/languages-content.md) | 1 | 0 |
| `Languages Content/languages-content (POST).bru` | POST /api/index.php/v1/languages/content | [`languages-content/languages-content-post.md`](languages-content/languages-content-post.md) | 1 | 0 |
| `Languages Content/languages-content-{language_id}.bru` | DELETE /api/index.php/v1/languages/content/{{language_id}} | [`languages-content/languages-content-language-id.md`](languages-content/languages-content-language-id.md) | 1 | 0 |
| `Languages Content/languages-content-{language_id} (PATCH).bru` | PATCH /api/index.php/v1/languages/content/{{language_id}} | [`languages-content/languages-content-language-id-patch.md`](languages-content/languages-content-language-id-patch.md) | 1 | 0 |
| `Languages Content/languages-content-{language_id} (GET).bru` | GET /api/index.php/v1/v1/languages/content/{{language_id}} | [`languages-content/languages-content-language-id-get.md`](languages-content/languages-content-language-id-get.md) | 1 | 0 |
| `Languages Overrides/languages-overrides-{app}-{lang_code}.bru` | GET /api/index.php/v1/languages/overrides/{{app}}/{{lang_code}} | [`languages-overrides/languages-overrides-app-lang-code.md`](languages-overrides/languages-overrides-app-lang-code.md) | 1 | 0 |
| `Languages Overrides/languages-overrides-{app}-{lang_code} (POST).bru` | POST /api/index.php/v1/languages/overrides/{{app}}/{{lang_code}} | [`languages-overrides/languages-overrides-app-lang-code-post.md`](languages-overrides/languages-overrides-app-lang-code-post.md) | 1 | 0 |
| `Languages Overrides/languages-overrides-{app}-{lang_code}-{constant_id}.bru` | GET /api/index.php/v1/languages/overrides/{{app}}/{{lang_code}}/{{constant_id}} | [`languages-overrides/languages-overrides-app-lang-code-constant-id.md`](languages-overrides/languages-overrides-app-lang-code-constant-id.md) | 1 | 0 |
| `Languages Overrides/languages-overrides-{app}-{lang_code}-{constant_id} (DELETE).bru` | DELETE /api/index.php/v1/languages/overrides/{{app}}/{{lang_code}}/{{constant_id}} | [`languages-overrides/languages-overrides-app-lang-code-constant-id-delete.md`](languages-overrides/languages-overrides-app-lang-code-constant-id-delete.md) | 1 | 0 |
| `Languages Overrides/languages-overrides-{app}-{lang_code}-{constant_id} (PATCH).bru` | PATCH /api/index.php/v1/languages/overrides/{{app}}/{{lang_code}}/{{constant_id}} | [`languages-overrides/languages-overrides-app-lang-code-constant-id-patch.md`](languages-overrides/languages-overrides-app-lang-code-constant-id-patch.md) | 1 | 0 |
| `Languages Overrides Search/languages-overrides-search.bru` | POST /api/index.php/v1/languages/overrides/search | [`languages-overrides-search/languages-overrides-search.md`](languages-overrides-search/languages-overrides-search.md) | 1 | 0 |
| `Languages Overrides Search/languages-overrides-search-cache-refresh.bru` | POST /api/index.php/v1/languages/overrides/search/cache/refresh | [`languages-overrides-search/languages-overrides-search-cache-refresh.md`](languages-overrides-search/languages-overrides-search-cache-refresh.md) | 1 | 0 |
| `Media Adapters/List Media Adapters.bru` | GET /api/index.php/v1/media/adapters | [`media-adapters/list-media-adapters.md`](media-adapters/list-media-adapters.md) | 1 | 1 |
| `Media Adapters/Get Media Adapter.bru` | GET /api/index.php/v1/media/adapters/{{adapter_id}} | [`media-adapters/get-media-adapter.md`](media-adapters/get-media-adapter.md) | 2 | 1 |
| `Media Files/List Media Files.bru` | GET /api/index.php/v1/media/files | [`media-files/list-media-files.md`](media-files/list-media-files.md) | 1 | 1 |
| `Media Files/Add Media File.bru` | POST /api/index.php/v1/media/files | [`media-files/add-media-file.md`](media-files/add-media-file.md) | 3 | 1 |
| `Media Files/Get Media File(s).bru` | GET /api/index.php/v1/media/files/{{file_path}} | [`media-files/get-media-file-s.md`](media-files/get-media-file-s.md) | 2 | 0 |
| `Media Files/Delete Media File.bru` | DELETE /api/index.php/v1/media/files/{{file_path}} | [`media-files/delete-media-file.md`](media-files/delete-media-file.md) | 2 | 0 |
| `Media Files/Update Media File.bru` | PATCH /api/index.php/v1/media/files/{{file_path}} | [`media-files/update-media-file.md`](media-files/update-media-file.md) | 2 | 1 |
| `Menus/menus-{app}.bru` | GET /api/index.php/v1/menus/{{app}} | [`menus/menus-app.md`](menus/menus-app.md) | 1 | 0 |
| `Menus/menus-{app} (POST).bru` | POST /api/index.php/v1/menus/{{app}} | [`menus/menus-app-post.md`](menus/menus-app-post.md) | 1 | 0 |
| `Menus/menus-{app}-{menu_id}.bru` | GET /api/index.php/v1/menus/{{app}}/{{menu_id}} | [`menus/menus-app-menu-id.md`](menus/menus-app-menu-id.md) | 1 | 0 |
| `Menus/menus-{app}-{menu_id} (DELETE).bru` | DELETE /api/index.php/v1/menus/{{app}}/{{menu_id}} | [`menus/menus-app-menu-id-delete.md`](menus/menus-app-menu-id-delete.md) | 1 | 0 |
| `Menus/menus-{app}-{menu_id} (PATCH).bru` | PATCH /api/index.php/v1/menus/{{app}}/{{menu_id}} | [`menus/menus-app-menu-id-patch.md`](menus/menus-app-menu-id-patch.md) | 1 | 0 |
| `Menus Items/menus-{app}-items.bru` | GET /api/index.php/v1/menus/{{app}}/items | [`menus-items/menus-app-items.md`](menus-items/menus-app-items.md) | 1 | 0 |
| `Menus Items/menus-{app}-items (POST).bru` | POST /api/index.php/v1/menus/{{app}}/items | [`menus-items/menus-app-items-post.md`](menus-items/menus-app-items-post.md) | 1 | 0 |
| `Menus Items/menus-{app}-items-types.bru` | GET /api/index.php/v1/menus/{{app}}/items/types | [`menus-items/menus-app-items-types.md`](menus-items/menus-app-items-types.md) | 1 | 0 |
| `Menus Items/menus-{app}-items-{menu_item_id}.bru` | GET /api/index.php/v1/menus/{{app}}/items/{{menu_item_id}} | [`menus-items/menus-app-items-menu-item-id.md`](menus-items/menus-app-items-menu-item-id.md) | 1 | 0 |
| `Menus Items/menus-{app}-items-{menu_item_id} (DELETE).bru` | DELETE /api/index.php/v1/menus/{{app}}/items/{{menu_item_id}} | [`menus-items/menus-app-items-menu-item-id-delete.md`](menus-items/menus-app-items-menu-item-id-delete.md) | 1 | 0 |
| `Menus Items/menus-{app}-items-{menu_item_id} (PATCH).bru` | PATCH /api/index.php/v1/menus/{{app}}/items/{{menu_item_id}} | [`menus-items/menus-app-items-menu-item-id-patch.md`](menus-items/menus-app-items-menu-item-id-patch.md) | 1 | 0 |
| `Messages/messages.bru` | GET /api/index.php/v1/messages | [`messages/messages.md`](messages/messages.md) | 1 | 0 |
| `Messages/messages (POST).bru` | POST /api/index.php/v1/messages | [`messages/messages-post.md`](messages/messages-post.md) | 1 | 0 |
| `Messages/messages-{message_id}.bru` | GET /api/index.php/v1/messages/{{message_id}} | [`messages/messages-message-id.md`](messages/messages-message-id.md) | 1 | 0 |
| `Messages/messages-{message_id} (DELETE).bru` | DELETE /api/index.php/v1/messages/{{message_id}} | [`messages/messages-message-id-delete.md`](messages/messages-message-id-delete.md) | 1 | 0 |
| `Messages/messages-{message_id} (PATCH).bru` | PATCH /api/index.php/v1/messages/{{message_id}} | [`messages/messages-message-id-patch.md`](messages/messages-message-id-patch.md) | 1 | 0 |
| `Modules/modules-{app}.bru` | GET /api/index.php/v1/modules/{{app}} | [`modules/modules-app.md`](modules/modules-app.md) | 1 | 0 |
| `Modules/modules-{app} (POST).bru` | POST /api/index.php/v1/modules/{{app}} | [`modules/modules-app-post.md`](modules/modules-app-post.md) | 1 | 0 |
| `Modules/modules-types-{app}.bru` | GET /api/index.php/v1/modules/types/{{app}} | [`modules/modules-types-app.md`](modules/modules-types-app.md) | 1 | 0 |
| `Modules/modules-{app}-{module_id}.bru` | GET /api/index.php/v1/modules/{{app}}/{{module_id}} | [`modules/modules-app-module-id.md`](modules/modules-app-module-id.md) | 1 | 0 |
| `Modules/modules-{app}-{module_id} (DELETE).bru` | DELETE /api/index.php/v1/modules/{{app}}/{{module_id}} | [`modules/modules-app-module-id-delete.md`](modules/modules-app-module-id-delete.md) | 1 | 0 |
| `Modules/modules-{app}-{module_id} (PATCH).bru` | PATCH /api/index.php/v1/modules/{{app}}/{{module_id}} | [`modules/modules-app-module-id-patch.md`](modules/modules-app-module-id-patch.md) | 1 | 0 |
| `Newsfeeds/newsfeeds-feeds.bru` | GET /api/index.php/v1/newsfeeds/feeds | [`newsfeeds/newsfeeds-feeds.md`](newsfeeds/newsfeeds-feeds.md) | 1 | 0 |
| `Newsfeeds/newsfeeds-feeds (POST).bru` | POST /api/index.php/v1/newsfeeds/feeds | [`newsfeeds/newsfeeds-feeds-post.md`](newsfeeds/newsfeeds-feeds-post.md) | 1 | 0 |
| `Newsfeeds/newsfeeds-feeds-{feed_id}.bru` | GET /api/index.php/v1/newsfeeds/feeds/{{feed_id}} | [`newsfeeds/newsfeeds-feeds-feed-id.md`](newsfeeds/newsfeeds-feeds-feed-id.md) | 1 | 0 |
| `Newsfeeds/newsfeeds-feeds-{feed_id} (DELETE).bru` | DELETE /api/index.php/v1/newsfeeds/feeds/{{feed_id}} | [`newsfeeds/newsfeeds-feeds-feed-id-delete.md`](newsfeeds/newsfeeds-feeds-feed-id-delete.md) | 1 | 0 |
| `Newsfeeds/newsfeeds-feeds-{feed_id} (PATCH).bru` | PATCH /api/index.php/v1/newsfeeds/feeds/{{feed_id}} | [`newsfeeds/newsfeeds-feeds-feed-id-patch.md`](newsfeeds/newsfeeds-feeds-feed-id-patch.md) | 1 | 0 |
| `Plugins/plugins.bru` | GET /api/index.php/v1/plugins | [`plugins/plugins.md`](plugins/plugins.md) | 1 | 0 |
| `Plugins/plugins-{plugin_id}.bru` | GET /api/index.php/v1/plugins/{{plugin_id}} | [`plugins/plugins-plugin-id.md`](plugins/plugins-plugin-id.md) | 1 | 0 |
| `Plugins/plugins-{plugin_id} (PATCH).bru` | PATCH /api/index.php/v1/plugins/{{plugin_id}} | [`plugins/plugins-plugin-id-patch.md`](plugins/plugins-plugin-id-patch.md) | 1 | 0 |
| `Privacy/privacy-requests-export-{request_id}.bru` | GET /api/index.php/v1/privacy/requests/export/{{request_id}} | [`privacy/privacy-requests-export-request-id.md`](privacy/privacy-requests-export-request-id.md) | 1 | 0 |
| `Privacy Consents/privacy-consents.bru` | GET /api/index.php/v1/privacy/consents | [`privacy-consents/privacy-consents.md`](privacy-consents/privacy-consents.md) | 1 | 0 |
| `Privacy Consents/privacy-consents-{consent_id}.bru` | GET /api/index.php/v1/privacy/consents/{{consent_id}} | [`privacy-consents/privacy-consents-consent-id.md`](privacy-consents/privacy-consents-consent-id.md) | 1 | 0 |
| `Privacy Consents/privacy-consents-{consent_id} (DELETE).bru` | DELETE /api/index.php/v1/privacy/consents/{{consent_id}} | [`privacy-consents/privacy-consents-consent-id-delete.md`](privacy-consents/privacy-consents-consent-id-delete.md) | 1 | 0 |
| `Privacy Requests/privacy-requests.bru` | GET /api/index.php/v1/privacy/requests | [`privacy-requests/privacy-requests.md`](privacy-requests/privacy-requests.md) | 1 | 0 |
| `Privacy Requests/privacy-requests (POST).bru` | POST /api/index.php/v1/privacy/requests | [`privacy-requests/privacy-requests-post.md`](privacy-requests/privacy-requests-post.md) | 1 | 0 |
| `Privacy Requests/privacy-requests-{request_id}.bru` | GET /api/index.php/v1/privacy/requests/{{request_id}} | [`privacy-requests/privacy-requests-request-id.md`](privacy-requests/privacy-requests-request-id.md) | 1 | 0 |
| `Redirects/redirect.bru` | POST /api/index.php/v1/redirect | [`redirects/redirect.md`](redirects/redirect.md) | 1 | 0 |
| `Redirects/redirects.bru` | GET /api/index.php/v1/redirects | [`redirects/redirects.md`](redirects/redirects.md) | 1 | 0 |
| `Redirects/redirects-{redirect_id}.bru` | GET /api/index.php/v1/redirects/{{redirect_id}} | [`redirects/redirects-redirect-id.md`](redirects/redirects-redirect-id.md) | 1 | 0 |
| `Redirects/redirects-{redirect_id} (PATCH).bru` | PATCH /api/index.php/v1/redirects/{{redirect_id}} | [`redirects/redirects-redirect-id-patch.md`](redirects/redirects-redirect-id-patch.md) | 1 | 0 |
| `Redirects/redirects-{redirect_id} (DELETE).bru` | DELETE /api/index.php/v1/redirects/{{request_id}} | [`redirects/redirects-redirect-id-delete.md`](redirects/redirects-redirect-id-delete.md) | 1 | 0 |
| `Tags/tags.bru` | GET /api/index.php/v1/tags | [`tags/tags.md`](tags/tags.md) | 1 | 0 |
| `Tags/tags (POST).bru` | POST /api/index.php/v1/tags | [`tags/tags-post.md`](tags/tags-post.md) | 1 | 0 |
| `Tags/tags-{tag_id}.bru` | GET /api/index.php/v1/tags/{{tag_id}} | [`tags/tags-tag-id.md`](tags/tags-tag-id.md) | 1 | 0 |
| `Tags/tags-{tag_id} (DELETE).bru` | DELETE /api/index.php/v1/tags/{{tag_id}} | [`tags/tags-tag-id-delete.md`](tags/tags-tag-id-delete.md) | 1 | 0 |
| `Tags/tags-{tag_id} (PATCH).bru` | PATCH /api/index.php/v1/tags/{{tag_id}} | [`tags/tags-tag-id-patch.md`](tags/tags-tag-id-patch.md) | 1 | 0 |
| `Templates/templates-styles-{app}-{template_style_id} (DELETE).bru` | DELETE /api/index.php/v1/templates/styles/{{app}}/{{template_style_id}} | [`templates/templates-styles-app-template-style-id-delete.md`](templates/templates-styles-app-template-style-id-delete.md) | 1 | 0 |
| `Templates Styles/templates-styles-{app}.bru` | GET /api/index.php/v1/templates/styles/{{app}} | [`templates-styles/templates-styles-app.md`](templates-styles/templates-styles-app.md) | 1 | 0 |
| `Templates Styles/templates-styles-{app} (POST).bru` | POST /api/index.php/v1/templates/styles/{{app}} | [`templates-styles/templates-styles-app-post.md`](templates-styles/templates-styles-app-post.md) | 1 | 0 |
| `Templates Styles/templates-styles-{app}-{template_style_id}.bru` | GET /api/index.php/v1/templates/styles/{{app}}/{{template_style_id}} | [`templates-styles/templates-styles-app-template-style-id.md`](templates-styles/templates-styles-app-template-style-id.md) | 1 | 0 |
| `Templates Styles/templates-styles-{app}-{template_style_id} (PATCH).bru` | PATCH /api/index.php/v1/templates/styles/{{app}}/{{template_style_id}} | [`templates-styles/templates-styles-app-template-style-id-patch.md`](templates-styles/templates-styles-app-template-style-id-patch.md) | 1 | 0 |
| `Users/users.bru` | GET /api/index.php/v1/users | [`users/users.md`](users/users.md) | 1 | 0 |
| `Users/users (POST).bru` | POST /api/index.php/v1/users | [`users/users-post.md`](users/users-post.md) | 1 | 0 |
| `Users/users-{user_id}.bru` | GET /api/index.php/v1/users/{{user_id}} | [`users/users-user-id.md`](users/users-user-id.md) | 1 | 0 |
| `Users/users-{user_id} (DELETE).bru` | DELETE /api/index.php/v1/users/{{user_id}} | [`users/users-user-id-delete.md`](users/users-user-id-delete.md) | 1 | 0 |
| `Users/users-{user_id} (PATCH).bru` | PATCH /api/index.php/v1/users/{{user_id}} | [`users/users-user-id-patch.md`](users/users-user-id-patch.md) | 1 | 0 |
| `Users Fields/fields-users.bru` | GET /api/index.php/v1/fields/users | [`users-fields/fields-users.md`](users-fields/fields-users.md) | 1 | 0 |
| `Users Fields/fields-users (POST).bru` | POST /api/index.php/v1/fields/users | [`users-fields/fields-users-post.md`](users-fields/fields-users-post.md) | 1 | 0 |
| `Users Fields/fields-users-{field_id}.bru` | GET /api/index.php/v1/fields/users/{{field_id}} | [`users-fields/fields-users-field-id.md`](users-fields/fields-users-field-id.md) | 1 | 0 |
| `Users Fields/fields-users-{field_id} (DELETE).bru` | DELETE /api/index.php/v1/fields/users/{{field_id}} | [`users-fields/fields-users-field-id-delete.md`](users-fields/fields-users-field-id-delete.md) | 1 | 0 |
| `Users Fields/fields-users-{field_id} (PATCH).bru` | PATCH /api/index.php/v1/fields/users/{{field_id}} | [`users-fields/fields-users-field-id-patch.md`](users-fields/fields-users-field-id-patch.md) | 1 | 0 |
| `Users Fields Groups/fields-groups-users.bru` | GET /api/index.php/v1/fields/groups/users | [`users-fields-groups/fields-groups-users.md`](users-fields-groups/fields-groups-users.md) | 1 | 0 |
| `Users Fields Groups/fields-groups-users (POST).bru` | POST /api/index.php/v1/fields/groups/users | [`users-fields-groups/fields-groups-users-post.md`](users-fields-groups/fields-groups-users-post.md) | 1 | 0 |
| `Users Fields Groups/fields-groups-users-{group_id}.bru` | GET /api/index.php/v1/fields/groups/users/{{group_id}} | [`users-fields-groups/fields-groups-users-group-id.md`](users-fields-groups/fields-groups-users-group-id.md) | 1 | 0 |
| `Users Fields Groups/fields-groups-users-{group_id} (DELETE).bru` | DELETE /api/index.php/v1/fields/groups/users/{{group_id}} | [`users-fields-groups/fields-groups-users-group-id-delete.md`](users-fields-groups/fields-groups-users-group-id-delete.md) | 1 | 0 |
| `Users Fields Groups/fields-groups-users-{group_id} (PATCH).bru` | PATCH /api/index.php/v1/fields/groups/users/{{group_id}} | [`users-fields-groups/fields-groups-users-group-id-patch.md`](users-fields-groups/fields-groups-users-group-id-patch.md) | 1 | 0 |
| `Users Groups/users-groups.bru` | GET /api/index.php/v1/users/groups | [`users-groups/users-groups.md`](users-groups/users-groups.md) | 1 | 0 |
| `Users Groups/users-groups (POST).bru` | POST /api/index.php/v1/users/groups | [`users-groups/users-groups-post.md`](users-groups/users-groups-post.md) | 1 | 0 |
| `Users Groups/users-groups-{group_id}.bru` | GET /api/index.php/v1/users/groups/{{usergroup_id}} | [`users-groups/users-groups-group-id.md`](users-groups/users-groups-group-id.md) | 1 | 0 |
| `Users Groups/users-groups-{group_id} (DELETE).bru` | DELETE /api/index.php/v1/users/groups/{{usergroup_id}} | [`users-groups/users-groups-group-id-delete.md`](users-groups/users-groups-group-id-delete.md) | 1 | 0 |
| `Users Groups/users-groups-{group_id} (PATCH).bru` | PATCH /api/index.php/v1/users/groups/{{usergroup_id}} | [`users-groups/users-groups-group-id-patch.md`](users-groups/users-groups-group-id-patch.md) | 1 | 0 |
| `Users Levels/users-levels.bru` | GET /api/index.php/v1/users/levels | [`users-levels/users-levels.md`](users-levels/users-levels.md) | 1 | 0 |
| `Users Levels/users-levels (POST).bru` | POST /api/index.php/v1/users/levels | [`users-levels/users-levels-post.md`](users-levels/users-levels-post.md) | 1 | 0 |
| `Users Levels/users-levels-{level_id}.bru` | GET /api/index.php/v1/users/levels/{{level_id}} | [`users-levels/users-levels-level-id.md`](users-levels/users-levels-level-id.md) | 1 | 0 |
| `Users Levels/users-levels-{level_id} (DELETE).bru` | DELETE /api/index.php/v1/users/levels/{{level_id}} | [`users-levels/users-levels-level-id-delete.md`](users-levels/users-levels-level-id-delete.md) | 1 | 0 |
| `Users Levels/users-levels-{level_id} (PATCH).bru` | PATCH /api/index.php/v1/users/levels/{{level_id}} | [`users-levels/users-levels-level-id-patch.md`](users-levels/users-levels-level-id-patch.md) | 1 | 0 |
