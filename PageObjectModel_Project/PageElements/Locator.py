#Login Page Elements
txt_username="id:Email"
txt_password="id:Password"
button_Login="xpath://button[normalize-space()='Log in']"
link_logout="//a[normalize-space()='Logout']"

#Add Store Page Elements
link_dashboard="xpath://p[normalize-space()='Dashboard']"
link_collapse="xpath://div[@class='card-header with-border']//i[@class='fas fa-minus']"
link_expand="xpath://div[@id='configuration-steps-card']//i[@class='fas fa-plus']"
link_Storeinfo="//a[@class='configuration-step-link store-info-step']"
link_closesym="//button[@aria-label='Close Tour']//span[@aria-hidden='true'][normalize-space()='×']"
text_storename="id:Name"
text_storeurl="id:Url"
button_save="name:save"
button_savecontinue="name:save-continue"
mouseover_Basic="xpath://span[@class='onoffswitch-inner']"
mouseover_advanced="xpath://span[@class='onoffswitch-inner']"
button_Delete="id:store-delete"
link_backtostore="xpath://a[normalize-space()='back to store list']"
gettext_todaydate="xpath://div[@class='col-md-4 col-xs-12 text-center']"
gettext_nopversion="xpath://b[normalize-space()='nopCommerce version 4.60.0']"
link_nopcommwebsite="xpath://a[normalize-space()='nopCommerce']"


#Manufacturer Details Page Elements
#Add Product
link_Catalog="xpath://p[normalize-space()='Catalog']"
link_manufacturer="xpath://p[normalize-space()='Manufacturers']"
link_AddProduct="xpath://a[normalize-space()='Add new']"
text_Productname="id:Name"
frame_id="id:Description_ifr"
text_description="id:tinymce"
text_displayorder="xpath://div[@class='form-group row']//input[contains(@title,'0')]"
getdateandtime="xpath://div[@class='col-md-4 col-xs-12 text-center']"
getnopcommversion="xpath://b[normalize-space()='nopCommerce version 4.60.0']"
button_save="name:save"
link_nopcommwebsite="xpath://a[normalize-space()='nopCommerce']"

#Search Product
text_Manfname="id:SearchManufacturerName"
button_Search="id:search-manufacturers"
checbox_Manfname="xpath://div[@class='dataTables_scrollHead']//th[1]"
button_Export="xpath://button[@class='btn btn-success dropdown-toggle']"
link_ExportToXML="xpath://a[normalize-space()='Export to XML']"

#Delete Product
button_Delete="id:delete-selected"

