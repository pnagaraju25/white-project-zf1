<?php
 
/**
 * User module bootstrap
 *
 * @author     Agustín F. Calderón M. <agustincl@gmail.com>
 * @copyright  (c)2009 White-Project
 * @category   Acl.
 * @package    modules
 * @subpackage user
 * @license    All Right Reserved
 * @version    SVN: $Id: Bootstrap.php 
 */
class Webservice_Bootstrap extends Zend_Application_Module_Bootstrap
{
	
	/**
     * Bootstrap the acl 
     * 
     * @return void
     */
	static protected $_config;
    
    /**
     *
     * @param mixed $key
     * @return Zend_Config
     */
    protected function _initConfiguration() 
    {
      
       $configFile = dirname(__FILE__) . '/config.ini';
       $config = new Zend_Config_Ini($configFile,'webservice');
      
       Zend_Registry::set("webservice", $config);
         
      
    }
    
//     protected function _initRestRoute()
//     {
//     	$this->bootstrap('frontController');
//     	$frontController = Zend_Controller_Front::getInstance();
//     	$restRoute = new Zend_Rest_Route($frontController);
//     	$frontController->getRouter()->addRoute('default', $restRoute);
    
//     }
    
	
    
    
}
