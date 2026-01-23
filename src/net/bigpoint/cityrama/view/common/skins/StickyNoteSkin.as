package net.bigpoint.cityrama.view.common.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import spark.components.Group;
   import spark.skins.SparkSkin;
   
   public class StickyNoteSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1682557459bottomTape:Group;
      
      private var _809612678contentGroup:Group;
      
      private var _1718414793leftTape:Group;
      
      private var _1569129122rightTape:Group;
      
      private var _1139886057topTape:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function StickyNoteSkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
            if(_loc1_ || _loc2_)
            {
               mx_internal::_document = this;
               if(!_loc2_)
               {
                  this.mxmlContent = [this._StickyNoteSkin_Group1_c(),this._StickyNoteSkin_Group2_i(),this._StickyNoteSkin_Group3_i(),this._StickyNoteSkin_Group4_i(),this._StickyNoteSkin_Group5_i(),this._StickyNoteSkin_Group6_i()];
                  addr0037:
                  if(!(_loc2_ && Boolean(this)))
                  {
                     this.currentState = "normal";
                     if(!(_loc2_ && _loc1_))
                     {
                        addr0095:
                        states = [new State({
                           "name":"normal",
                           "overrides":[]
                        }),new State({
                           "name":"disabled",
                           "overrides":[]
                        })];
                     }
                     §§goto(addr00bd);
                  }
                  §§goto(addr0095);
               }
               §§goto(addr00bd);
            }
            §§goto(addr0037);
         }
         addr00bd:
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super.moduleFactory = param1;
            if(_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc2_ && Boolean(this)))
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
      
      private function _StickyNoteSkin_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.bottom = 5;
            if(_loc3_)
            {
               _loc1_.right = 5;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.top = 5;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.left = 5;
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.mxmlContent = [this._StickyNoteSkin_BriskMCDynaLib1_c()];
                        addr006f:
                        if(!(_loc2_ && _loc3_))
                        {
                           addr0095:
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr00a9:
                                 _loc1_.document = this;
                              }
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr00a9);
               }
               §§goto(addr006f);
            }
            §§goto(addr00a9);
         }
         §§goto(addr0095);
      }
      
      private function _StickyNoteSkin_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_)
            {
               _loc1_.dynaMCSourceName = "postit_bg";
               if(!_loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc2_)
                  {
                     _loc1_.percentHeight = 100;
                     addr0052:
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr0085:
                              _loc1_.document = this;
                           }
                        }
                        return _loc1_;
                     }
                  }
               }
            }
            §§goto(addr0085);
         }
         §§goto(addr0052);
      }
      
      private function _StickyNoteSkin_Group2_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc2_)
         {
            _loc1_.left = 15;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.right = 15;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.top = 28;
                  if(_loc3_ || Boolean(this))
                  {
                     §§goto(addr006b);
                  }
                  §§goto(addr00ca);
               }
               §§goto(addr00dc);
            }
         }
         addr006b:
         _loc1_.bottom = 20;
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.minWidth = 0;
            if(_loc3_)
            {
               _loc1_.minHeight = 0;
               if(!_loc2_)
               {
                  _loc1_.id = "contentGroup";
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              addr00ca:
                              this.contentGroup = _loc1_;
                              if(_loc3_ || Boolean(this))
                              {
                                 addr00dc:
                                 BindingManager.executeBindings(this,"contentGroup",this.contentGroup);
                              }
                              §§goto(addr00e9);
                           }
                           §§goto(addr00dc);
                        }
                        §§goto(addr00e9);
                     }
                  }
                  §§goto(addr00ca);
               }
               §§goto(addr00dc);
            }
         }
         addr00e9:
         return _loc1_;
      }
      
      private function _StickyNoteSkin_Group3_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.top = 0;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.left = 30;
               if(_loc2_)
               {
                  _loc1_.right = 30;
                  if(!_loc3_)
                  {
                     _loc1_.visible = false;
                     if(_loc2_)
                     {
                        §§goto(addr0057);
                     }
                     §§goto(addr0067);
                  }
                  §§goto(addr00a4);
               }
               addr0057:
               _loc1_.mxmlContent = [this._StickyNoteSkin_BriskMCDynaLib2_c()];
               if(_loc2_)
               {
                  addr0067:
                  _loc1_.id = "topTape";
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr007a:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              §§goto(addr00a4);
                           }
                        }
                        §§goto(addr00b6);
                     }
                  }
                  addr00a4:
                  this.topTape = _loc1_;
                  if(_loc2_ || _loc3_)
                  {
                     addr00b6:
                     BindingManager.executeBindings(this,"topTape",this.topTape);
                  }
               }
               §§goto(addr00c3);
            }
            §§goto(addr007a);
         }
         addr00c3:
         return _loc1_;
      }
      
      private function _StickyNoteSkin_BriskMCDynaLib2_c() : BriskMCDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(_loc3_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc2_)
            {
               _loc1_.dynaMCSourceName = "stickytape_top";
               if(_loc3_)
               {
                  _loc1_.percentWidth = 100;
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.percentHeight = 100;
                     if(_loc3_ || _loc3_)
                     {
                        addr007e:
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              addr0092:
                              _loc1_.document = this;
                           }
                        }
                     }
                     return _loc1_;
                  }
               }
            }
            §§goto(addr0092);
         }
         §§goto(addr007e);
      }
      
      private function _StickyNoteSkin_Group4_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.bottom = 0;
            if(!_loc3_)
            {
               addr002a:
               _loc1_.left = 30;
               if(_loc2_)
               {
                  addr0034:
                  _loc1_.right = 30;
                  if(!_loc3_)
                  {
                     _loc1_.visible = false;
                     if(!(_loc3_ && _loc3_))
                     {
                        _loc1_.mxmlContent = [this._StickyNoteSkin_BriskMCDynaLib3_c()];
                        if(_loc2_ || Boolean(this))
                        {
                           addr0073:
                           _loc1_.id = "bottomTape";
                           if(_loc2_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(_loc2_)
                                 {
                                    addr0097:
                                    _loc1_.document = this;
                                    if(!_loc3_)
                                    {
                                       addr00a0:
                                       this.bottomTape = _loc1_;
                                       if(_loc2_)
                                       {
                                          addr00aa:
                                          BindingManager.executeBindings(this,"bottomTape",this.bottomTape);
                                       }
                                    }
                                 }
                                 return _loc1_;
                              }
                           }
                           §§goto(addr00a0);
                        }
                        §§goto(addr00aa);
                     }
                     §§goto(addr0073);
                  }
                  §§goto(addr0097);
               }
               §§goto(addr0073);
            }
            §§goto(addr0034);
         }
         §§goto(addr002a);
      }
      
      private function _StickyNoteSkin_BriskMCDynaLib3_c() : BriskMCDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_)
            {
               _loc1_.dynaMCSourceName = "stickytape_bottom";
               if(_loc3_)
               {
                  _loc1_.percentWidth = 100;
                  if(_loc3_)
                  {
                     addr005a:
                     _loc1_.percentHeight = 100;
                     if(_loc3_)
                     {
                        addr0064:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              addr0078:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr007c);
                     }
                     §§goto(addr0078);
                  }
                  §§goto(addr007c);
               }
               §§goto(addr005a);
            }
            §§goto(addr0064);
         }
         addr007c:
         return _loc1_;
      }
      
      private function _StickyNoteSkin_Group5_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.percentHeight = 100;
            if(_loc3_ || _loc2_)
            {
               _loc1_.top = 5;
               if(!_loc2_)
               {
                  addr003e:
                  _loc1_.bottom = 5;
                  if(_loc3_)
                  {
                     _loc1_.left = 0;
                     if(!_loc2_)
                     {
                        §§goto(addr005f);
                     }
                  }
                  §§goto(addr00a1);
               }
               addr005f:
               _loc1_.visible = false;
               if(_loc3_)
               {
                  addr0068:
                  _loc1_.mxmlContent = [this._StickyNoteSkin_BriskMCDynaLib4_c()];
                  if(_loc3_)
                  {
                     §§goto(addr0078);
                  }
                  §§goto(addr00a1);
               }
               addr0078:
               _loc1_.id = "leftTape";
               if(!(_loc2_ && Boolean(this)))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr00a1:
                        _loc1_.document = this;
                        if(!(_loc2_ && _loc3_))
                        {
                           addr00b2:
                           this.leftTape = _loc1_;
                           if(!_loc2_)
                           {
                              BindingManager.executeBindings(this,"leftTape",this.leftTape);
                           }
                        }
                        §§goto(addr00c9);
                     }
                  }
                  §§goto(addr00b2);
               }
               addr00c9:
               return _loc1_;
            }
            §§goto(addr003e);
         }
         §§goto(addr0068);
      }
      
      private function _StickyNoteSkin_BriskMCDynaLib4_c() : BriskMCDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc3_)
            {
               _loc1_.dynaMCSourceName = "stickytape_left";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.percentWidth = 100;
                  addr004b:
                  if(_loc2_)
                  {
                     _loc1_.percentHeight = 100;
                     if(!(_loc3_ && _loc2_))
                     {
                        addr0074:
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr0080:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr0084);
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0080);
            }
            addr0084:
            return _loc1_;
         }
         §§goto(addr004b);
      }
      
      private function _StickyNoteSkin_Group6_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.percentHeight = 100;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.top = 5;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.bottom = 5;
                  if(_loc2_)
                  {
                     _loc1_.right = 0;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.visible = false;
                        if(_loc2_ || _loc2_)
                        {
                           _loc1_.mxmlContent = [this._StickyNoteSkin_BriskMCDynaLib5_c()];
                           if(!_loc3_)
                           {
                              §§goto(addr008d);
                           }
                           §§goto(addr00b0);
                        }
                        addr008d:
                        _loc1_.id = "rightTape";
                        if(_loc2_)
                        {
                           addr0098:
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 addr00b0:
                                 _loc1_.document = this;
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    §§goto(addr00c1);
                                 }
                                 §§goto(addr00cb);
                              }
                           }
                        }
                        addr00c1:
                        this.rightTape = _loc1_;
                        if(!_loc3_)
                        {
                           addr00cb:
                           BindingManager.executeBindings(this,"rightTape",this.rightTape);
                        }
                        §§goto(addr00d8);
                     }
                     §§goto(addr00b0);
                  }
                  §§goto(addr00d8);
               }
               §§goto(addr0098);
            }
            §§goto(addr00b0);
         }
         addr00d8:
         return _loc1_;
      }
      
      private function _StickyNoteSkin_BriskMCDynaLib5_c() : BriskMCDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc2_)
            {
               _loc1_.dynaMCSourceName = "stickytape_right";
               if(!_loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.percentHeight = 100;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        §§goto(addr007d);
                     }
                     §§goto(addr0091);
                  }
               }
               addr007d:
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr0091:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0095);
            }
            §§goto(addr0091);
         }
         addr0095:
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get bottomTape() : Group
      {
         return this._1682557459bottomTape;
      }
      
      public function set bottomTape(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1682557459bottomTape;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  addr0041:
                  this._1682557459bottomTape = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bottomTape",_loc2_,param1));
                        }
                     }
                     §§goto(addr0086);
                  }
               }
               §§goto(addr0077);
            }
            addr0086:
            return;
         }
         §§goto(addr0041);
      }
      
      [Bindable(event="propertyChange")]
      public function get contentGroup() : Group
      {
         return this._809612678contentGroup;
      }
      
      public function set contentGroup(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._809612678contentGroup;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  addr0045:
                  this._809612678contentGroup = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contentGroup",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0045);
      }
      
      [Bindable(event="propertyChange")]
      public function get leftTape() : Group
      {
         return this._1718414793leftTape;
      }
      
      public function set leftTape(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1718414793leftTape;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._1718414793leftTape = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leftTape",_loc2_,param1));
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
      
      [Bindable(event="propertyChange")]
      public function get rightTape() : Group
      {
         return this._1569129122rightTape;
      }
      
      public function set rightTape(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1569129122rightTape;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1569129122rightTape = param1;
                  addr0041:
                  if(_loc4_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rightTape",_loc2_,param1));
                        }
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr006e);
               }
            }
            addr007d:
            return;
         }
         §§goto(addr0041);
      }
      
      [Bindable(event="propertyChange")]
      public function get topTape() : Group
      {
         return this._1139886057topTape;
      }
      
      public function set topTape(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1139886057topTape;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr0046:
                  this._1139886057topTape = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     addr0064:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"topTape",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008b);
               }
               §§goto(addr0064);
            }
            addr008b:
            return;
         }
         §§goto(addr0046);
      }
   }
}

