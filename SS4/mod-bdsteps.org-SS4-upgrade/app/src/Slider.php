<?php

namespace BdSteps\Home;






use SilverStripe\Assets\Image;
use BdSteps\Home\HomePage;
use SilverStripe\Forms\TabSet;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\ORM\DataObject;



class Slider extends DataObject {
	
	private static $db = array (
        'SliderName' => 'Varchar(255)',
        'SliderLink' => 'Varchar(255)',
		'SortOrder' => 'Int',
	);

	private static $has_one = array (
		//associative array / the double colon, is a token that allows access to static, constant, and overridden properties or methods of a clas
		//translates to BannerImage maps to Image class
		'BannerImage' => Image::class,
		'HomePage' => HomePage::class,
	);
    
    // Summary fields
    private static $summary_fields = array(
        'SliderName' => 'Slider Name',
        'SliderLink' => 'Slider Link',
    );
	
	public static $default_sort_='SortOrder';

	public function getCMSFields() {
		$fields = FieldList::create(TabSet::create("Root"));
        $fields->addFieldToTab("Root.Main", TextField::create('SliderName', _t('Slider.SLIDERNAME', 'Slider Name')));
        $fields->addFieldToTab("Root.Main", TextField::create('SliderLink', _t('Slider.NAME', 'Slider Link (url path)')));
        $fields->addFieldToTab("Root.Main", $banner = UploadField::create('BannerImage', _t('Slider.BANNERIMAGE', 'Banner Image (850x250)')));
		$banner->getValidator()->setAllowedExtensions(array('jpg', 'jpeg', 'png', 'gif'));
		$banner->setFolderName('SliderImages');

		return $fields;
	}

	public function canCreate($member = null, $context = array()) { return true; }
	public function canView($member = null) { return true; }
	public function canEdit($member = null) { return true; }
	public function canDelete($member = null) { return true; }
}