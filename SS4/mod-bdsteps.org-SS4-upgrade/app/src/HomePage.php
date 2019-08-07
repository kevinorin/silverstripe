<?php

namespace BdSteps\Home;

use Page;    

use UndefinedOffset\SortableGridField\Forms\GridFieldSortableRows;


use BdSteps\Home\Slider;
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


class HomePage extends Page 
{
	private static $has_many = array (
		'Sliders' => Slider::class,
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
    
            $gridField = new GridField("Sliders", "Sliders", $this->Sliders(), $gridFieldConfig);
            $fields->addFieldToTab("Root.Sliders", $gridField);
		return $fields;
	}
}


?>