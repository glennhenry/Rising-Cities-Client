package net.bigpoint.cityrama.view.fieldInfoLayer.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.ImprovementIconComponentVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class ImprovementIconComponent extends Group
   {
      
      private var _949820541flavourLabel:LocaLabel;
      
      private var _100029144icon1:ImprovementIcon;
      
      private var _100029145icon2:ImprovementIcon;
      
      private var _100029146icon3:ImprovementIcon;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ImprovementIconComponentVo;
      
      private var _dirty:Boolean;
      
      public function ImprovementIconComponent()
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
               if(_loc2_)
               {
                  §§goto(addr003a);
               }
               §§goto(addr006e);
            }
            addr003a:
            this.percentWidth = 100;
            if(!(_loc1_ && _loc1_))
            {
               addr0056:
               this.mxmlContent = [this._ImprovementIconComponent_VGroup1_c()];
               if(_loc2_ || _loc1_)
               {
                  addr006e:
                  this.addEventListener("creationComplete",this.___ImprovementIconComponent_Group1_creationComplete);
               }
            }
            return;
         }
         §§goto(addr0056);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc2_ || _loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc3_ && Boolean(this)))
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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super.initialize();
         }
      }
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.flavourLabel.text = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.improvement.slotDescription");
         }
      }
      
      public function set data(param1:ImprovementIconComponentVo) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            this._dirty = true;
            if(_loc3_)
            {
               this._data = param1;
               if(!_loc4_)
               {
                  §§goto(addr0038);
               }
            }
            §§goto(addr0057);
         }
         addr0038:
         this.includeInLayout = this.visible = this._data.enabled;
         if(_loc3_ || _loc3_)
         {
            addr0057:
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            §§push(this._dirty);
            if(_loc1_)
            {
               §§push(§§pop());
               if(!(_loc2_ && Boolean(this)))
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(_temp_3)
                  {
                     if(_loc1_ || Boolean(this))
                     {
                        §§pop();
                        if(_loc1_)
                        {
                           addr005b:
                           if(Boolean(this._data))
                           {
                              if(!(_loc2_ && _loc1_))
                              {
                                 this._dirty = false;
                                 if(_loc1_ || _loc2_)
                                 {
                                    addr007e:
                                    this.icon1.currentState = this._data.getIcon1;
                                    if(_loc1_ || Boolean(this))
                                    {
                                       addr00a4:
                                       this.icon2.currentState = this._data.getIcon2;
                                       if(_loc1_)
                                       {
                                          this.icon3.currentState = this._data.getIcon3;
                                          if(_loc1_ || Boolean(this))
                                          {
                                             addr00d4:
                                             super.commitProperties();
                                          }
                                       }
                                    }
                                 }
                                 return;
                              }
                              §§goto(addr00a4);
                           }
                           §§goto(addr00d4);
                        }
                        §§goto(addr00a4);
                     }
                  }
               }
            }
            §§goto(addr005b);
         }
         §§goto(addr007e);
      }
      
      private function _ImprovementIconComponent_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.horizontalAlign = "center";
               if(_loc3_)
               {
                  _loc1_.paddingLeft = 16;
                  if(!_loc2_)
                  {
                     addr006b:
                     _loc1_.paddingRight = 14;
                     if(_loc3_)
                     {
                        _loc1_.mxmlContent = [this._ImprovementIconComponent_HGroup1_c(),this._ImprovementIconComponent_VGroup2_c()];
                        if(_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr0098:
                                 _loc1_.document = this;
                              }
                           }
                        }
                     }
                     §§goto(addr009c);
                  }
                  §§goto(addr0098);
               }
               addr009c:
               return _loc1_;
            }
         }
         §§goto(addr006b);
      }
      
      private function _ImprovementIconComponent_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.mxmlContent = [this._ImprovementIconComponent_LocaLabel1_i(),this._ImprovementIconComponent_HGroup2_c()];
               if(_loc2_ || Boolean(this))
               {
                  addr005c:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr0068:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr005c);
         }
         §§goto(addr0068);
      }
      
      private function _ImprovementIconComponent_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc3_)
            {
               _loc1_.height = 24;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.maxDisplayedLines = 2;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.styleName = "residentialOutputItem";
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.setStyle("verticalAlign","middle");
                        if(_loc2_)
                        {
                           _loc1_.id = "flavourLabel";
                           if(!_loc3_)
                           {
                              §§goto(addr00a8);
                           }
                        }
                        §§goto(addr00b4);
                     }
                     §§goto(addr00c7);
                  }
                  §§goto(addr00b4);
               }
               addr00a8:
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr00b4:
                     _loc1_.document = this;
                     if(!_loc3_)
                     {
                        §§goto(addr00bd);
                     }
                     §§goto(addr00c7);
                  }
               }
               §§goto(addr00bd);
            }
            addr00bd:
            this.flavourLabel = _loc1_;
            if(!_loc3_)
            {
               addr00c7:
               BindingManager.executeBindings(this,"flavourLabel",this.flavourLabel);
            }
            return _loc1_;
         }
         §§goto(addr00a8);
      }
      
      private function _ImprovementIconComponent_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.gap = 0;
            if(_loc3_ || _loc3_)
            {
               _loc1_.mxmlContent = [this._ImprovementIconComponent_ImprovementIcon1_i(),this._ImprovementIconComponent_ImprovementIcon2_i(),this._ImprovementIconComponent_ImprovementIcon3_i()];
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr0079:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr0079);
      }
      
      private function _ImprovementIconComponent_ImprovementIcon1_i() : ImprovementIcon
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ImprovementIcon = new ImprovementIcon();
         if(_loc2_)
         {
            _loc1_.id = "icon1";
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     _loc1_.document = this;
                     if(_loc2_)
                     {
                        §§goto(addr005e);
                     }
                     §§goto(addr0070);
                  }
               }
            }
         }
         addr005e:
         this.icon1 = _loc1_;
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            addr0070:
            BindingManager.executeBindings(this,"icon1",this.icon1);
         }
         return _loc1_;
      }
      
      private function _ImprovementIconComponent_ImprovementIcon2_i() : ImprovementIcon
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ImprovementIcon = new ImprovementIcon();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.id = "icon2";
            if(_loc2_ || Boolean(_loc1_))
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     _loc1_.document = this;
                     if(!_loc3_)
                     {
                        §§goto(addr006b);
                     }
                     §§goto(addr007d);
                  }
               }
               §§goto(addr006b);
            }
            §§goto(addr007d);
         }
         addr006b:
         this.icon2 = _loc1_;
         if(!(_loc3_ && Boolean(this)))
         {
            addr007d:
            BindingManager.executeBindings(this,"icon2",this.icon2);
         }
         return _loc1_;
      }
      
      private function _ImprovementIconComponent_ImprovementIcon3_i() : ImprovementIcon
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ImprovementIcon = new ImprovementIcon();
         if(_loc3_)
         {
            _loc1_.id = "icon3";
            if(_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     _loc1_.document = this;
                     if(_loc3_ || Boolean(this))
                     {
                        addr0066:
                        this.icon3 = _loc1_;
                        if(_loc3_)
                        {
                           addr0070:
                           BindingManager.executeBindings(this,"icon3",this.icon3);
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0066);
            }
            §§goto(addr0070);
         }
         §§goto(addr0066);
      }
      
      private function _ImprovementIconComponent_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.gap = 0;
               if(!_loc2_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc3_)
                  {
                     _loc1_.mxmlContent = [this._ImprovementIconComponent_BriskImageDynaLib1_c(),this._ImprovementIconComponent_Group2_c()];
                     if(!_loc2_)
                     {
                        §§goto(addr0074);
                     }
                     §§goto(addr0088);
                  }
               }
               addr0074:
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     addr0088:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr008c);
            }
            addr008c:
            return _loc1_;
         }
         §§goto(addr0074);
      }
      
      private function _ImprovementIconComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "infolayer_divider_new";
               if(_loc2_ || _loc2_)
               {
                  _loc1_.horizontalCenter = 0;
                  addr0052:
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     §§goto(addr0070);
                  }
                  §§goto(addr0084);
               }
            }
            addr0070:
            if(!_loc1_.document)
            {
               if(_loc2_ || _loc3_)
               {
                  addr0084:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0052);
      }
      
      private function _ImprovementIconComponent_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.height = 2;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr0050:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0054);
            }
            §§goto(addr0050);
         }
         addr0054:
         return _loc1_;
      }
      
      public function ___ImprovementIconComponent_Group1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this.creationCompleteHandler(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourLabel() : LocaLabel
      {
         return this._949820541flavourLabel;
      }
      
      public function set flavourLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._949820541flavourLabel;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._949820541flavourLabel = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     addr0063:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0073:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0082);
                  }
                  §§goto(addr0073);
               }
            }
            addr0082:
            return;
         }
         §§goto(addr0063);
      }
      
      [Bindable(event="propertyChange")]
      public function get icon1() : ImprovementIcon
      {
         return this._100029144icon1;
      }
      
      public function set icon1(param1:ImprovementIcon) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._100029144icon1;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  addr003d:
                  this._100029144icon1 = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0057:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"icon1",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0066);
               }
               §§goto(addr0057);
            }
            addr0066:
            return;
         }
         §§goto(addr003d);
      }
      
      [Bindable(event="propertyChange")]
      public function get icon2() : ImprovementIcon
      {
         return this._100029145icon2;
      }
      
      public function set icon2(param1:ImprovementIcon) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._100029145icon2;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._100029145icon2 = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"icon2",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr006c);
      }
      
      [Bindable(event="propertyChange")]
      public function get icon3() : ImprovementIcon
      {
         return this._100029146icon3;
      }
      
      public function set icon3(param1:ImprovementIcon) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._100029146icon3;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  addr004e:
                  this._100029146icon3 = param1;
                  if(_loc3_)
                  {
                     addr0058:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"icon3",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0076);
               }
               §§goto(addr0058);
            }
            addr0076:
            return;
         }
         §§goto(addr004e);
      }
   }
}

