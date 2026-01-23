package net.bigpoint.cityrama.view.departmentBook.ui.components
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
   import net.bigpoint.cityrama.view.friendBook.ui.components.SideMenuFriendBookItemRenderer;
   import spark.components.List;
   
   public class SideMenuDepartmentBook extends List
   {
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         _skinParts = {
            "dataGroup":false,
            "scroller":false,
            "dropIndicator":false
         };
      }
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function SideMenuDepartmentBook()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super();
            if(!_loc1_)
            {
               addr0026:
               this.itemRenderer = this._SideMenuDepartmentBook_ClassFactory1_c();
            }
            return;
         }
         §§goto(addr0026);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var factory:IFlexModuleFactory;
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         factory = param1;
         if(!(_loc3_ && Boolean(this)))
         {
            super.moduleFactory = factory;
            if(!(_loc3_ && Boolean(this)))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc4_ || Boolean(this))
                  {
                     return;
                  }
               }
               this.__moduleFactoryInitialized = true;
               if(!(_loc3_ && Boolean(param1)))
               {
                  addr0083:
                  if(!this.styleDeclaration)
                  {
                     if(_loc4_)
                     {
                        this.styleDeclaration = new CSSStyleDeclaration(null,styleManager);
                        if(!_loc3_)
                        {
                           addr00a2:
                           this.styleDeclaration.defaultFactory = function():void
                           {
                              this.skinClass = SideMenueArchCategorySkin;
                           };
                        }
                     }
                     §§goto(addr00ad);
                  }
                  §§goto(addr00a2);
               }
            }
            addr00ad:
            return;
         }
         §§goto(addr0083);
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super.initialize();
         }
      }
      
      private function _SideMenuDepartmentBook_ClassFactory1_c() : ClassFactory
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ClassFactory = new ClassFactory();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.generator = SideMenuFriendBookItemRenderer;
         }
         return _loc1_;
      }
   }
}

