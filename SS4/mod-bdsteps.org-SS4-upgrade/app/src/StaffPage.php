<?php

namespace BdSteps\Home;

use Page;    

use UndefinedOffset\SortableGridField\Forms\GridFieldSortableRows;


use BdSteps\Home\StaffMember;
use SilverStripe\Forms\GridField\GridFieldConfig;
use SilverStripe\Forms\GridField\GridFieldToolbarHeader;
use SilverStripe\Forms\GridField\GridFieldAddNewButton;
use SilverStripe\Forms\GridField\GridFieldSortableHeader;
use SilverStripe\Forms\GridField\GridFieldDataColumns;
use SilverStripe\Forms\GridField\GridFieldPaginator;
use SilverStripe\Forms\GridField\GridFieldEditButton;
use SilverStripe\Forms\GridField\GridFieldDeleteAction;
use SilverStripe\Forms\GridField\GridFieldDetailForm;
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;



class StaffPage extends Page {

	private static $db = array (
        'BottomContent' => 'HTMLText',
	);

	private static $has_many = array (
		'StaffMembers' => StaffMember::class,
	);
    
	public function getCMSFields() {
		$fields = parent::getCMSFields();

        $gridFieldConfig = GridFieldConfig::create()->addComponents(
            new GridFieldToolbarHeader(),
            new GridFieldAddNewButton('toolbar-header-right'),
            new GridFieldSortableHeader(),
            new GridFieldDataColumns(),
            new GridFieldPaginator(10),
            new GridFieldEditButton(),
            new GridFieldDeleteAction(),
            new GridFieldDetailForm(),
            new GridFieldSortableRows('SortOrder')
        );
        $gridField = new GridField("StaffMembers", "StaffMembers", $this->StaffMembers(), $gridFieldConfig);
        $fields->addFieldToTab("Root.StaffMembers", $gridField);

        $fields->addFieldToTab("Root.BottomContent", HTMLEditorField::create('BottomContent', _t('Page.BOTTOMCONTENT', 'Bottom Content')));


		return $fields;
	}
}


?>