<?php

class StaffMember extends DataObject {
	
	static $db = array (
		'Name' => 'Varchar(255)',
		'Title' => 'Varchar(255)',
		'Bio' => 'Text',
		'Credential' => 'Varchar(255)',
        'Quote' => 'Text',
		'SortOrder'=>'Int',
	);

	static $has_one = array (
		'Photo' => 'Image',
		'StaffPage' => 'StaffPage',
	);
	
    // Summary fields
    static $summary_fields = array(
        'Name' => 'Name',
        'Title' => 'Title',
    );
    
	public static $default_sort='SortOrder';


	public function getCMSFields() {
		$fields = FieldList::create(TabSet::create("Root"));
		$fields->addFieldToTab("Root.Main", TextField::create('Name', _t('StaffMember.NAME', 'Name')));
        $fields->addFieldToTab("Root.Main", TextField::create('Title', _t('StaffMember.TITLE', 'Title')));
        $fields->addFieldToTab("Root.Main", TextField::create('Credential', _t('StaffMember.CREDENTIAL', 'Credential')));
	    $fields->addFieldToTab("Root.Main", TextAreaField::create('Bio', _t('StaffMember.BIO', 'Bio')));
        $fields->addFieldToTab("Root.Main", TextAreaField::create('Quote', _t('StaffMember.QUOTE', 'Quote')));
		$fields->addFieldToTab("Root.Main", $photo = UploadField::create('Photo', _t('StaffMember.PHOTO', 'Photo')));
		$photo->getValidator()->setAllowedExtensions(array('jpg', 'jpeg', 'png', 'gif'));
		$photo->setFolderName('StaffPhotos');

		return $fields;
	}

	public function canCreate($member = null) { return true; }
	
	public function canView($member = null) { return true; }
	
	public function canEdit($member = null) { return true; }

	public function canDelete($member = null) { return true; }
	
	
	
}