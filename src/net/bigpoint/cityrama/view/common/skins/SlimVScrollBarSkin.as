package net.bigpoint.cityrama.view.common.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.VScrollThumbButton;
   import net.bigpoint.cityrama.view.common.components.VScrollTrackButton;
   import spark.components.Group;
   import spark.components.VScrollBar;
   import spark.skins.SparkSkin;
   
   public class SlimVScrollBarSkin extends SparkSkin implements IStateClient2
   {
      
      private var _6518152_SlimVScrollBarSkin_Group1:Group;
      
      private var _110342614thumb:VScrollThumbButton;
      
      private var _110621003track:VScrollTrackButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:VScrollBar;
      
      public function SlimVScrollBarSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(_loc2_)
            {
               mx_internal::_document = this;
               if(!_loc1_)
               {
                  this.mxmlContent = [this._SlimVScrollBarSkin_Group1_i()];
                  if(!_loc1_)
                  {
                     addr0040:
                     this.currentState = "up";
                     if(_loc2_ || _loc1_)
                     {
                        states = [new State({
                           "name":"up",
                           "overrides":[]
                        }),new State({
                           "name":"over",
                           "overrides":[]
                        }),new State({
                           "name":"down",
                           "overrides":[]
                        }),new State({
                           "name":"normal",
                           "overrides":[]
                        }),new State({
                           "name":"inactive",
                           "overrides":[new SetProperty().initializeFromObject({
                              "target":"_SlimVScrollBarSkin_Group1",
                              "name":"width",
                              "value":2
                           }),new SetProperty().initializeFromObject({
                              "target":"_SlimVScrollBarSkin_Group1",
                              "name":"visible",
                              "value":false
                           }),new SetProperty().initializeFromObject({
                              "target":"track",
                              "name":"visible",
                              "value":false
                           })]
                        }),new State({
                           "name":"disabled",
                           "overrides":[]
                        })];
                     }
                  }
                  §§goto(addr011a);
               }
               §§goto(addr0040);
            }
         }
         addr011a:
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            super.moduleFactory = param1;
            if(_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc2_)
                  {
                     return;
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
         }
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
      
      private function _SlimVScrollBarSkin_Group1_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.percentHeight = 100;
            if(_loc2_)
            {
               _loc1_.mxmlContent = [this._SlimVScrollBarSkin_VScrollTrackButton1_i(),this._SlimVScrollBarSkin_VScrollThumbButton1_i()];
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.id = "_SlimVScrollBarSkin_Group1";
                  if(!(_loc3_ && _loc2_))
                  {
                     §§goto(addr0068);
                  }
                  §§goto(addr0080);
               }
               addr0068:
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr0080:
                     _loc1_.document = this;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        §§goto(addr0091);
                     }
                     §§goto(addr009b);
                  }
               }
               addr0091:
               this._SlimVScrollBarSkin_Group1 = _loc1_;
               if(!_loc3_)
               {
                  addr009b:
                  BindingManager.executeBindings(this,"_SlimVScrollBarSkin_Group1",this._SlimVScrollBarSkin_Group1);
               }
               §§goto(addr00a8);
            }
            addr00a8:
            return _loc1_;
         }
         §§goto(addr0091);
      }
      
      private function _SlimVScrollBarSkin_VScrollTrackButton1_i() : VScrollTrackButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VScrollTrackButton = new VScrollTrackButton();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.percentHeight = 100;
            if(!_loc3_)
            {
               _loc1_.horizontalCenter = 0;
               if(_loc2_ || _loc3_)
               {
                  addr0054:
                  _loc1_.styleName = "scrollbartrack";
                  if(_loc2_)
                  {
                     _loc1_.id = "track";
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc3_)
                           {
                              _loc1_.document = this;
                              if(_loc2_)
                              {
                                 addr0094:
                                 this.track = _loc1_;
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr00a6:
                                    BindingManager.executeBindings(this,"track",this.track);
                                 }
                              }
                           }
                           §§goto(addr00b3);
                        }
                     }
                     §§goto(addr0094);
                  }
                  §§goto(addr00b3);
               }
               §§goto(addr00a6);
            }
            addr00b3:
            return _loc1_;
         }
         §§goto(addr0054);
      }
      
      private function _SlimVScrollBarSkin_VScrollThumbButton1_i() : VScrollThumbButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VScrollThumbButton = new VScrollThumbButton();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.horizontalCenter = 0;
            if(!_loc2_)
            {
               _loc1_.styleName = "scrollbarSlimThumb";
               if(_loc3_)
               {
                  §§goto(addr004c);
               }
               §§goto(addr006a);
            }
            §§goto(addr0076);
         }
         addr004c:
         _loc1_.id = "thumb";
         if(_loc3_ || Boolean(this))
         {
            addr006a:
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  addr0076:
                  _loc1_.document = this;
                  if(!_loc2_)
                  {
                     addr007f:
                     this.thumb = _loc1_;
                     if(!_loc2_)
                     {
                        BindingManager.executeBindings(this,"thumb",this.thumb);
                     }
                  }
               }
               §§goto(addr0096);
            }
            §§goto(addr007f);
         }
         addr0096:
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get _SlimVScrollBarSkin_Group1() : Group
      {
         return this._6518152_SlimVScrollBarSkin_Group1;
      }
      
      public function set _SlimVScrollBarSkin_Group1(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._6518152_SlimVScrollBarSkin_Group1;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  addr0042:
                  this._6518152_SlimVScrollBarSkin_Group1 = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_SlimVScrollBarSkin_Group1",_loc2_,param1));
                        }
                     }
                     §§goto(addr0086);
                  }
                  §§goto(addr0077);
               }
            }
            addr0086:
            return;
         }
         §§goto(addr0042);
      }
      
      [Bindable(event="propertyChange")]
      public function get thumb() : VScrollThumbButton
      {
         return this._110342614thumb;
      }
      
      public function set thumb(param1:VScrollThumbButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._110342614thumb;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._110342614thumb = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     addr0059:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"thumb",_loc2_,param1));
                        }
                     }
                     §§goto(addr0080);
                  }
               }
               §§goto(addr0071);
            }
            addr0080:
            return;
         }
         §§goto(addr0059);
      }
      
      [Bindable(event="propertyChange")]
      public function get track() : VScrollTrackButton
      {
         return this._110621003track;
      }
      
      public function set track(param1:VScrollTrackButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._110621003track;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._110621003track = param1;
                  if(!_loc3_)
                  {
                     addr005c:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"track",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr005c);
            }
            addr007b:
            return;
         }
         §§goto(addr005c);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : VScrollBar
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:VScrollBar) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._213507019hostComponent = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0086);
                  }
               }
               §§goto(addr0077);
            }
         }
         addr0086:
      }
   }
}

