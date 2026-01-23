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
      
      private static var _skinParts:Object = {
         "dataGroup":false,
         "scroller":false,
         "dropIndicator":false
      };
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function SideMenuStorage()
      {
         super();
         this.itemRenderer = this._SideMenuStorage_ClassFactory1_c();
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var factory:IFlexModuleFactory = param1;
         super.moduleFactory = factory;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration(null,styleManager);
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.skinClass = SideMenuCategorySkin;
         };
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      private function _SideMenuStorage_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = StorageCategoryItemRenderer;
         return _loc1_;
      }
   }
}

