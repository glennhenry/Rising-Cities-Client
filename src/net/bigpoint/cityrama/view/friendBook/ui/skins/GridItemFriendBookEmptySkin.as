package net.bigpoint.cityrama.view.friendBook.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.friendBook.ui.components.GridItemFriendBookComponent;
   import spark.skins.SparkSkin;
   
   public class GridItemFriendBookEmptySkin extends SparkSkin implements IStateClient2
   {
      
      private var _100313435image:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:GridItemFriendBookComponent;
      
      public function GridItemFriendBookEmptySkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super();
            if(!_loc2_)
            {
               mx_internal::_document = this;
               if(!_loc2_)
               {
                  this.width = 132;
                  if(_loc1_)
                  {
                     this.height = 160;
                     if(_loc1_)
                     {
                        this.mxmlContent = [this._GridItemFriendBookEmptySkin_BriskImageDynaLib1_i()];
                        if(!(_loc2_ && _loc1_))
                        {
                           addr006f:
                           this.currentState = "up";
                           if(_loc1_ || _loc1_)
                           {
                              §§goto(addr0083);
                           }
                        }
                        §§goto(addr009c);
                     }
                     §§goto(addr006f);
                  }
                  addr0083:
                  this.addEventListener("creationComplete",this.___GridItemFriendBookEmptySkin_SparkSkin1_creationComplete);
                  if(_loc1_ || _loc1_)
                  {
                     states = [new State({
                        "name":"up",
                        "overrides":[]
                     }),new State({
                        "name":"normal",
                        "overrides":[]
                     }),new State({
                        "name":"over",
                        "overrides":[]
                     }),new State({
                        "name":"down",
                        "overrides":[]
                     }),new State({
                        "name":"disabled",
                        "overrides":[]
                     })];
                     addr009c:
                  }
                  return;
               }
            }
         }
         §§goto(addr006f);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc3_ || Boolean(param1))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     §§goto(addr004b);
                  }
               }
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         addr004b:
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super.initialize();
         }
      }
      
      protected function handleCreationComplete(param1:FlexEvent) : void
      {
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super.commitProperties();
         }
      }
      
      private function _GridItemFriendBookEmptySkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_popups_FriendBook";
            if(!_loc2_)
            {
               addr0032:
               _loc1_.verticalCenter = 8;
               if(!_loc2_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.dynaBmpSourceName = "polaroid_freespace";
                     if(!(_loc2_ && Boolean(this)))
                     {
                        _loc1_.id = "image";
                        if(_loc3_ || _loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || Boolean(this))
                              {
                                 addr0095:
                                 _loc1_.document = this;
                                 if(!(_loc2_ && Boolean(_loc1_)))
                                 {
                                    addr00b3:
                                    this.image = _loc1_;
                                    if(!(_loc2_ && Boolean(this)))
                                    {
                                       BindingManager.executeBindings(this,"image",this.image);
                                    }
                                 }
                              }
                              return _loc1_;
                           }
                           §§goto(addr00b3);
                        }
                        §§goto(addr0095);
                     }
                  }
                  §§goto(addr00b3);
               }
            }
            §§goto(addr0095);
         }
         §§goto(addr0032);
      }
      
      public function ___GridItemFriendBookEmptySkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            this.handleCreationComplete(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get image() : BriskImageDynaLib
      {
         return this._100313435image;
      }
      
      public function set image(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._100313435image;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  addr0037:
                  this._100313435image = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     §§goto(addr0056);
                  }
                  §§goto(addr006d);
               }
               addr0056:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || Boolean(param1))
                  {
                     addr006d:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"image",_loc2_,param1));
                  }
               }
               §§goto(addr007c);
            }
            addr007c:
            return;
         }
         §§goto(addr0037);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : GridItemFriendBookComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:GridItemFriendBookComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._213507019hostComponent;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._213507019hostComponent = param1;
                  if(!_loc3_)
                  {
                     addr005b:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr005b);
      }
   }
}

