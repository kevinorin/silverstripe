<?php

class HomePage extends Page {

	static $has_many = array (
		'Sliders' => 'Slider',
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

class HomePage_Controller extends Page_Controller {
	
}