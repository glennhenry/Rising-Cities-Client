package net.bigpoint.cityrama.view.storageBook.ui.components
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
   import net.bigpoint.cityrama.view.storageBook.ui.skins.SideMenuCategorySkin;
   import spark.components.List;
   
   public class SideMenuStorage extends List
   {
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc1_))
      {
         _skinParts = {
            "dataGroup":false,
            "scroller":false,
            "dropIndicator":false
         };
      }
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function SideMenuStorage()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super();
            if(!_loc1_)
            {
               this.itemRenderer = this._SideMenuStorage_ClassFactory1_c();
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
            if(!_loc4_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     return;
                  }
                  addr0083:
                  this.styleDeclaration = new CSSStyleDeclaration(null,styleManager);
                  if(_loc3_)
                  {
                     addr0094:
                     this.styleDeclaration.defaultFactory = function():void
                     {
                        this.skinClass = SideMenuCategorySkin;
                     };
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     if(!this.styleDeclaration)
                     {
                        if(!_loc4_)
                        {
                           §§goto(addr0083);
                        }
                     }
                     §§goto(addr0094);
                  }
               }
            }
            return;
         }
         §§goto(addr0094);
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
      
      private function _SideMenuStorage_ClassFactory1_c() : ClassFactory
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ClassFactory = new ClassFactory();
         if(!_loc2_)
         {
            _loc1_.generator = StorageCategoryItemRenderer;
         }
         return _loc1_;
      }
   }
}

