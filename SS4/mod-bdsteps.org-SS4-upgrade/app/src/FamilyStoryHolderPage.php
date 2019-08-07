<?php

namespace BdSteps\Home;

use Page;    

use BdSteps\Home\FamilyStoryPage;

class FamilyStoryHolder extends Page 
{
    private static $allowed_children = array (
        FamilyStoryPage::class,
    );
    
}


?>