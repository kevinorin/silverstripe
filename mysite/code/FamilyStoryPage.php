<?php

class FamilyStoryPage extends Page {

	static $db = array (
		'Name' => 'Varchar(255)',
		'Title1' => 'Varchar(255)',
		'Title2' => 'Varchar(255)',
		'Title3' => 'Varchar(255)',
	);

	static $has_one = array (
		'Photo' => 'Image',
	);
	
	public function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->addFieldToTab("Root.Main", TextField::create('Name', _t('FamilyStoryPage.NAME', 'Name')), 'Content');
		$fields->addFieldToTab("Root.Main", TextField::create('Title1', _t('FamilyStoryPage.TITLE1', 'Title 1')), 'Content');
		$fields->addFieldToTab("Root.Main", TextField::create('Title2', _t('FamilyStoryPage.TITLE1', 'Title 2')), 'Content');
		$fields->addFieldToTab("Root.Main", TextField::create('Title3', _t('FamilyStoryPage.TITLE1', 'Title 3')), 'Content');
		$fields->addFieldToTab("Root.Main", $photo = UploadField::create('Photo', _t('FamilyStoryPage.PHOTO', 'Photo')), 'Content');
		$photo->getValidator()->setAllowedExtensions(array('jpg', 'jpeg', 'png', 'gif'));
		$photo->setFolderName('FamilyStory');
		return $fields;
	}
	

}

class FamilyStoryPage_Controller extends Page_Controller {

}