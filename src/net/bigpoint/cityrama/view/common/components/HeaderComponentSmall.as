package net.bigpoint.cityrama.view.common.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import spark.components.Group;
   import spark.components.HGroup;
   
   public class HeaderComponentSmall extends Group
   {
      
      private var _1065153926alignGroup:HGroup;
      
      private var _1184053038labelDisplay:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _label:String = "";
      
      private var _labelIsDirty:Boolean = false;
      
      public function HeaderComponentSmall()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super();
            if(_loc1_)
            {
               mx_internal::_document = this;
               if(!_loc2_)
               {
                  this.mxmlContent = [this._HeaderComponentSmall_HGroup1_c(),this._HeaderComponentSmall_HGroup2_i()];
               }
            }
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     §§goto(addr0044);
                  }
               }
               else
               {
                  addr004a:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
            §§goto(addr004a);
         }
         addr0044:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super.initialize();
         }
      }
      
      public function get label() : String
      {
         return this._label;
      }
      
      public function set label(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(param1 != this._label)
            {
               if(!(_loc2_ && Boolean(param1)))
               {
                  addr0038:
                  this._label = param1;
                  if(!(_loc2_ && _loc2_))
                  {
                     this._labelIsDirty = true;
                     if(_loc3_)
                     {
                        invalidateProperties();
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0038);
      }
      
      public function set textHAlign(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §§push(param1);
            if(_loc2_)
            {
               §§push("right");
               if(_loc2_ || Boolean(this))
               {
                  §§push(§§pop() == §§pop());
                  if(_loc2_ || _loc3_)
                  {
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     §§push(_temp_3);
                     if(!(_loc3_ && Boolean(param1)))
                     {
                        if(!§§pop())
                        {
                           if(_loc2_)
                           {
                              §§pop();
                              if(!_loc3_)
                              {
                                 addr0064:
                                 §§push(param1);
                                 if(!_loc3_)
                                 {
                                    §§push("center");
                                    if(!_loc3_)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(_loc2_)
                                       {
                                          addr0083:
                                          var _temp_5:* = §§pop();
                                          addr0084:
                                          §§push(_temp_5);
                                          if(!_temp_5)
                                          {
                                             if(!_loc3_)
                                             {
                                                addr008d:
                                                §§pop();
                                                if(!_loc3_)
                                                {
                                                   §§goto(addr0098);
                                                }
                                                §§goto(addr00a9);
                                             }
                                          }
                                       }
                                       addr0098:
                                       §§goto(addr0097);
                                    }
                                    addr0097:
                                 }
                                 §§goto(addr0094);
                              }
                              §§goto(addr00a9);
                           }
                           §§goto(addr008d);
                        }
                        §§goto(addr0083);
                     }
                     §§goto(addr0084);
                  }
                  §§goto(addr0083);
               }
               §§goto(addr0097);
            }
            addr0094:
            if(param1 == "left")
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  addr00a9:
                  this.alignGroup.horizontalAlign = param1;
               }
            }
            return;
         }
         §§goto(addr0064);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super.commitProperties();
            if(_loc2_)
            {
               if(this._labelIsDirty)
               {
                  if(_loc2_)
                  {
                     this._labelIsDirty = false;
                     if(!_loc1_)
                     {
                        addr0041:
                        this.labelDisplay.text = this._label;
                     }
                     §§goto(addr004b);
                  }
                  §§goto(addr0041);
               }
               §§goto(addr004b);
            }
            §§goto(addr0041);
         }
         addr004b:
      }
      
      private function _HeaderComponentSmall_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.gap = 0;
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._HeaderComponentSmall_BriskImageDynaLib1_c(),this._HeaderComponentSmall_BriskImageDynaLib2_c(),this._HeaderComponentSmall_BriskImageDynaLib3_c()];
                  if(!(_loc2_ && _loc2_))
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr0083:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr0087);
               }
            }
            §§goto(addr0083);
         }
         addr0087:
         return _loc1_;
      }
      
      private function _HeaderComponentSmall_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.dynaBmpSourceName = "bluemarker_small_left";
               addr0049:
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.height = 19;
                  if(_loc3_)
                  {
                     addr0073:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr0073);
         }
         §§goto(addr0049);
      }
      
      private function _HeaderComponentSmall_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.dynaBmpSourceName = "bluemarker_small_middle";
               if(!(_loc3_ && _loc2_))
               {
                  addr0059:
                  _loc1_.percentWidth = 100;
                  if(_loc2_)
                  {
                     _loc1_.height = 19;
                     if(_loc2_ || Boolean(this))
                     {
                        addr0081:
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              addr0095:
                              _loc1_.document = this;
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr0095);
               }
               §§goto(addr0081);
            }
            §§goto(addr0095);
         }
         §§goto(addr0059);
      }
      
      private function _HeaderComponentSmall_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(_loc2_ || Boolean(this))
            {
               §§goto(addr0041);
            }
            §§goto(addr0062);
         }
         addr0041:
         _loc1_.dynaBmpSourceName = "bluemarker_small_right";
         if(_loc2_ || _loc2_)
         {
            addr0062:
            _loc1_.height = 19;
            if(!(_loc3_ && _loc3_))
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr0080:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0084);
            }
            §§goto(addr0080);
         }
         addr0084:
         return _loc1_;
      }
      
      private function _HeaderComponentSmall_HGroup2_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || _loc3_)
         {
            _loc1_.height = 19;
            if(_loc2_ || _loc3_)
            {
               _loc1_.maxHeight = 19;
               if(_loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.verticalAlign = "middle";
                     if(!_loc3_)
                     {
                        _loc1_.horizontalAlign = "left";
                        if(!_loc3_)
                        {
                           _loc1_.paddingLeft = 5;
                           if(_loc2_ || _loc2_)
                           {
                              _loc1_.paddingRight = 5;
                              if(_loc2_)
                              {
                                 _loc1_.mxmlContent = [this._HeaderComponentSmall_LocaLabel1_i()];
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    _loc1_.id = "alignGroup";
                                    if(_loc2_)
                                    {
                                       §§goto(addr00bb);
                                    }
                                 }
                                 §§goto(addr00d3);
                              }
                              addr00bb:
                              if(!_loc1_.document)
                              {
                                 if(!_loc3_)
                                 {
                                    addr00d3:
                                    _loc1_.document = this;
                                    if(_loc2_ || Boolean(this))
                                    {
                                       §§goto(addr00e4);
                                    }
                                 }
                                 §§goto(addr00ee);
                              }
                              addr00e4:
                              this.alignGroup = _loc1_;
                              if(_loc2_)
                              {
                                 addr00ee:
                                 BindingManager.executeBindings(this,"alignGroup",this.alignGroup);
                              }
                              return _loc1_;
                           }
                        }
                        §§goto(addr00ee);
                     }
                  }
               }
               §§goto(addr00d3);
            }
         }
         §§goto(addr00ee);
      }
      
      private function _HeaderComponentSmall_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.styleName = "emergencySuccessBarLabel";
            if(_loc2_)
            {
               addr002a:
               _loc1_.maxDisplayedLines = 1;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.id = "labelDisplay";
                  if(!(_loc3_ && _loc3_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              addr0085:
                              this.labelDisplay = _loc1_;
                              if(_loc2_ || Boolean(_loc1_))
                              {
                                 addr0097:
                                 BindingManager.executeBindings(this,"labelDisplay",this.labelDisplay);
                              }
                              §§goto(addr00a4);
                           }
                           §§goto(addr0097);
                        }
                        addr00a4:
                        return _loc1_;
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr0097);
               }
               §§goto(addr0085);
            }
            §§goto(addr0097);
         }
         §§goto(addr002a);
      }
      
      [Bindable(event="propertyChange")]
      public function get alignGroup() : HGroup
      {
         return this._1065153926alignGroup;
      }
      
      public function set alignGroup(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1065153926alignGroup;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1065153926alignGroup = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0064:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"alignGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0073);
                  }
                  §§goto(addr0064);
               }
            }
         }
         addr0073:
      }
      
      [Bindable(event="propertyChange")]
      public function get labelDisplay() : LocaLabel
      {
         return this._1184053038labelDisplay;
      }
      
      public function set labelDisplay(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1184053038labelDisplay;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  addr0036:
                  this._1184053038labelDisplay = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labelDisplay",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr0055);
            }
            addr007b:
            return;
         }
         §§goto(addr0036);
      }
   }
}

