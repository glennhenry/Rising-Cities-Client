package net.bigpoint.cityrama.view.friendBook.ui.components
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
   
   public class SideMenuFriendBook extends List
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
      
      public function SideMenuFriendBook()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
            if(_loc1_)
            {
               addr001d:
               this.itemRenderer = this._SideMenuFriendBook_ClassFactory1_c();
            }
            return;
         }
         §§goto(addr001d);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var factory:IFlexModuleFactory;
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         factory = param1;
         if(!_loc3_)
         {
            super.moduleFactory = factory;
            if(!_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc4_)
                  {
                     §§goto(addr0047);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
                  if(_loc4_)
                  {
                     addr006e:
                     if(!this.styleDeclaration)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           this.styleDeclaration = new CSSStyleDeclaration(null,styleManager);
                           if(_loc4_)
                           {
                              addr0095:
                              this.styleDeclaration.defaultFactory = function():void
                              {
                                 this.skinClass = SideMenueArchCategorySkin;
                              };
                           }
                           §§goto(addr009f);
                        }
                     }
                     §§goto(addr0095);
                  }
               }
               addr009f:
               return;
            }
            addr0047:
            return;
         }
         §§goto(addr006e);
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super.initialize();
         }
      }
      
      private function _SideMenuFriendBook_ClassFactory1_c() : ClassFactory
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ClassFactory = new ClassFactory();
         if(_loc2_)
         {
            _loc1_.generator = SideMenuFriendBookItemRenderer;
         }
         return _loc1_;
      }
   }
}

