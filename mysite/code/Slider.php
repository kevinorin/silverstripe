<?php

class Slider extends DataObject {
	
	static $db = array (
        'SliderName' => 'Varchar(255)',
        'SliderLink' => 'Varchar(255)',
		'SortOrder' => 'Int',
	);

	static $has_one = array (
		'BannerImage' => 'Image',
		'HomePage' => 'HomePage',
	);
    
    // Summary fields
    static $summary_fields = array(
        'SliderName' => 'Slider Name',
        'SliderLink' => 'Slider Link',
    );
	
	public static $default_sort='SortOrder';

	public function getCMSFields() {
		$fields = FieldList::create(TabSet::create("Root"));
        $fields->addFieldToTab("Root.Main", TextField::create('SliderName', _t('Slider.SLIDERNAME', 'Slider Name')));
        $fields->addFieldToTab("Root.Main", TextField::create('SliderLink', _t('Slider.NAME', 'Slider Link (url path)')));
        $fields->addFieldToTab("Root.Main", $banner = UploadField::create('BannerImage', _t('Slider.BANNERIMAGE', 'Banner Image (850x250)')));
		$banner->getValidator()->setAllowedExtensions(array('jpg', 'jpeg', 'png', 'gif'));
		$banner->setFolderName('SliderImages');

		return $fields;
	}

	public function canCreate($member = null) { return true; }
	public function canView($member = null) { return true; }
	public function canEdit($member = null) { return true; }
	public function canDelete($member = null) { return true; }
}