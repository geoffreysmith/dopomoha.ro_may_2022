`nvm install lts/fermium`

`nvm use lts/fermium`

`yarn develop`

go to `http://127.0.0.1/admin`

Login: user@user.com/Password1

Content Manager/Page lists home page (should be prefilled with dummy content)

You should'nt need to do anything to get the home page going! All content should be there and if you use postman:

/api/:pluralApiId/:documentId

The API id is in the admin section so to get the home page which happens to be 1:

`http://localhost:1337/api/pages/1?populate=*`

Should reveal:

`{"data":{"id":1,"attributes":{"title":"Home - Dopomoha","createdAt":"2022-05-12T01:42:47.218Z","updatedAt":"2022-05-12T04:01:41.022Z","publishedAt":"2022-05-12T04:01:41.017Z","locale":"en","metadata":{"id":1,"metaTitle":"Home","metaDescription":"Dopomoha Home"},"contentSections":[{"id":1,"__component":"section.hero-right-image","title":"Ukrainians fleeing war at home are welcomed to Romania","description":"Anybody fleeing Ukraine can enter Romania through any of the official border crossings.\n\nOn this platform created by Code for Romania in partnership with the _Department of Emergency Situations of the Ministry of Internal Affairs, the UN Refugee Agency, the International Organization for Migration and the Romanian National Council for Refugees civilians fleeing the war in Ukraine can find all relevant information about seeking protection in Romania._"}],"localizations":{"data":[]}}},"meta":{}}`

For the header and footer it is a "single content type" since it is the same on every page:

`http://localhost:1337/api/global?populate=*`

`{"data":{"id":1,"attributes":{"createdAt":"2022-05-12T01:41:33.413Z","updatedAt":"2022-05-12T04:15:16.853Z","publishedAt":"2022-05-12T04:15:16.849Z","locale":"en","navBar":{"id":1,"bannerText":"If you are fleeing war in Ukraine, you can access financial support from UNHCR. Details here."},"footer":{"id":1,"text":"If you’d like to report any mistakes, inconsistencies or omissions please let us know by writing an e-mail to dopomoha@code4.ro. We’ll do our best to integrate your feedback."},"localizations":{"data":[]}}},"meta":{}}`

So note that "image" is not coming through and I'm seeing localizatoin but I'm not seeing the best way to render it.

I've been using the following as guides,  I don't know if this is the best way to query the data but it works, see how the examples did it.

Created the corporate "starter" template and just looked at the code/ran the project in a different folder. Note it has a similar structure of pages and helper methods to get the URLs:

yarn create strapi-starter my-project next-corporate