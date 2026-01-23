package net.bigpoint.cityrama.view.architectBook.ui.components
{
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.filters.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import mx.binding.*;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.architectBook.ui.skins.SideMenueArchCategorySkin;
   import spark.components.List;
   
   public class SideMenueArchitecture extends List
   {
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         _skinParts = {
            "dataGroup":false,
            "scroller":false,
            "dropIndicator":false
         };
      }
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function SideMenueArchitecture()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super();
            if(_loc1_)
            {
               this.itemRenderer = this._SideMenueArchitecture_ClassFactory1_c();
            }
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var factory:IFlexModuleFactory;
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         factory = param1;
         if(!(_loc4_ && _loc2_))
         {
            super.moduleFactory = factory;
            if(!(_loc4_ && Boolean(this)))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_ || _loc2_)
                  {
                     return;
                  }
               }
            }
            this.__moduleFactoryInitialized = true;
            if(_loc3_ || _loc2_)
            {
               addr0083:
               if(!this.styleDeclaration)
               {
                  if(_loc3_ || _loc2_)
                  {
                     §§goto(addr00a5);
                  }
               }
               §§goto(addr00bf);
            }
            addr00a5:
            this.styleDeclaration = new CSSStyleDeclaration(null,styleManager);
            if(!(_loc4_ && _loc3_))
            {
               addr00bf:
               this.styleDeclaration.defaultFactory = function():void
               {
                  this.skinClass = SideMenueArchCategorySkin;
               };
            }
            return;
         }
         §§goto(addr0083);
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.initialize();
         }
      }
      
      private function _SideMenueArchitecture_ClassFactory1_c() : ClassFactory
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ClassFactory = new ClassFactory();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.generator = SideMenueArchCategoryItemRenderer;
         }
         return _loc1_;
      }
   }
}

