package net.bigpoint.cityrama.view.cityTreasury.ui.components
{
   import mx.core.IFlexModuleFactory;
   
   public class CityTreasuryTabView extends CityTreasuryTabContent
   {
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function CityTreasuryTabView()
      {
         super();
         mx_internal::_document = this;
         this.percentWidth = 100;
         this.percentHeight = 100;
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         super.moduleFactory = param1;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
   }
}

