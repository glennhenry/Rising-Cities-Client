package net.bigpoint.cityrama.view.departmentBook.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.VScrollThumbButton;
   import net.bigpoint.cityrama.view.common.components.VScrollTrackButton;
   import spark.components.Group;
   import spark.components.VScrollBar;
   import spark.skins.SparkSkin;
   
   public class CustomScrollThumbSkin extends SparkSkin implements IStateClient2
   {
      
      private var _110342614thumb:VScrollThumbButton;
      
      private var _110621003track:VScrollTrackButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:VScrollBar;
      
      public function CustomScrollThumbSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(!_loc1_)
            {
               mx_internal::_document = this;
               if(!_loc1_)
               {
                  addr0030:
                  this.mxmlContent = [this._CustomScrollThumbSkin_Group1_c()];
                  if(!_loc1_)
                  {
                     this.currentState = "up";
                     if(_loc2_)
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
                           "overrides":[]
                        }),new State({
                           "name":"disabled",
                           "overrides":[]
                        })];
                        addr0056:
                     }
                     §§goto(addr00cc);
                  }
                  §§goto(addr0056);
               }
            }
            addr00cc:
            return;
         }
         §§goto(addr0030);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            super.moduleFactory = param1;
            if(_loc2_)
            {
               §§goto(addr0036);
            }
            §§goto(addr004a);
         }
         addr0036:
         if(this.__moduleFactoryInitialized)
         {
            if(!_loc3_)
            {
               return;
            }
         }
         else
         {
            addr004a:
            this.__moduleFactoryInitialized = true;
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
      
      private function _CustomScrollThumbSkin_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.percentHeight = 100;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.mxmlContent = [this._CustomScrollThumbSkin_VScrollTrackButton1_i(),this._CustomScrollThumbSkin_VScrollThumbButton1_i()];
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  §§goto(addr006e);
               }
               §§goto(addr007a);
            }
         }
         addr006e:
         if(!_loc1_.document)
         {
            if(_loc3_)
            {
               addr007a:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _CustomScrollThumbSkin_VScrollTrackButton1_i() : VScrollTrackButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VScrollTrackButton = new VScrollTrackButton();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.percentHeight = 100;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.horizontalCenter = 0;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.styleName = "scrollbartrack";
                  if(!(_loc3_ && _loc2_))
                  {
                     addr006c:
                     _loc1_.id = "track";
                     if(!_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              addr008b:
                              _loc1_.document = this;
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§goto(addr00a7);
                              }
                              §§goto(addr00b9);
                           }
                        }
                        addr00a7:
                        this.track = _loc1_;
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr00b9:
                           BindingManager.executeBindings(this,"track",this.track);
                        }
                        §§goto(addr00c6);
                     }
                     §§goto(addr00b9);
                  }
               }
               §§goto(addr008b);
            }
            §§goto(addr006c);
         }
         addr00c6:
         return _loc1_;
      }
      
      private function _CustomScrollThumbSkin_VScrollThumbButton1_i() : VScrollThumbButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VScrollThumbButton = new VScrollThumbButton();
         if(_loc2_)
         {
            _loc1_.horizontalCenter = 0;
            if(_loc2_)
            {
               _loc1_.styleName = "scrollbarthumb";
               if(_loc2_ || _loc3_)
               {
                  _loc1_.id = "thumb";
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr0070:
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              §§goto(addr0079);
                           }
                        }
                        §§goto(addr008b);
                     }
                     addr0079:
                     this.thumb = _loc1_;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr008b:
                        BindingManager.executeBindings(this,"thumb",this.thumb);
                     }
                     §§goto(addr0098);
                  }
                  §§goto(addr008b);
               }
               addr0098:
               return _loc1_;
            }
            §§goto(addr0070);
         }
         §§goto(addr0079);
      }
      
      [Bindable(event="propertyChange")]
      public function get thumb() : VScrollThumbButton
      {
         return this._110342614thumb;
      }
      
      public function set thumb(param1:VScrollThumbButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._110342614thumb;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  addr0042:
                  this._110342614thumb = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     addr0061:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"thumb",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0088);
               }
               §§goto(addr0061);
            }
            addr0088:
            return;
         }
         §§goto(addr0042);
      }
      
      [Bindable(event="propertyChange")]
      public function get track() : VScrollTrackButton
      {
         return this._110621003track;
      }
      
      public function set track(param1:VScrollTrackButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._110621003track;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._110621003track = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"track",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr006d);
            }
            addr007c:
            return;
         }
         §§goto(addr005d);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : VScrollBar
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:VScrollBar) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._213507019hostComponent;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._213507019hostComponent = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr007b);
                  }
               }
               §§goto(addr006c);
            }
         }
         addr007b:
      }
   }
}

