package net.bigpoint.cityrama.view.cityTreasury.ui.components
{
   import mx.core.IFlexModuleFactory;
   
   public class CityTreasuryTabView extends CityTreasuryTabContent
   {
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function CityTreasuryTabView()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
            if(!_loc2_)
            {
               mx_internal::_document = this;
               if(_loc1_ || Boolean(this))
               {
                  §§goto(addr0041);
               }
               §§goto(addr004b);
            }
            addr0041:
            this.percentWidth = 100;
            if(_loc1_)
            {
               addr004b:
               this.percentHeight = 100;
            }
            §§goto(addr0050);
         }
         addr0050:
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.moduleFactory = param1;
            if(!_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || _loc2_)
                  {
                     return;
                  }
               }
            }
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.initialize();
         }
      }
   }
}

