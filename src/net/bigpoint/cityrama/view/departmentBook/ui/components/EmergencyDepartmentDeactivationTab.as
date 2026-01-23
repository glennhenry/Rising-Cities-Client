package net.bigpoint.cityrama.view.departmentBook.ui.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.common.components.BlueBarComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class EmergencyDepartmentDeactivationTab extends Group
   {
      
      public static const STATE_DEACTIVATED:String = "STATE_DEACTIVATED";
      
      public static const STATE_ACTIVE:String = "STATE_ACTIVE";
      
      public static const STATE_ACTIVE_EMERGENCY_RUNNING:String = "STATE_ACTIVE_EMERGENCY_RUNNING";
      
      public static const EVENT_DEACTIVATE_EMERGENCIES:String = "EVENT_DEACTIVATE_EMERGENCIES";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         STATE_DEACTIVATED = "STATE_DEACTIVATED";
         if(_loc2_)
         {
            addr002e:
            STATE_ACTIVE = "STATE_ACTIVE";
            if(_loc2_ || _loc2_)
            {
               STATE_ACTIVE_EMERGENCY_RUNNING = "STATE_ACTIVE_EMERGENCY_RUNNING";
               if(!_loc1_)
               {
                  addr0052:
                  EVENT_DEACTIVATE_EMERGENCIES = "EVENT_DEACTIVATE_EMERGENCIES";
               }
               return;
            }
         }
         §§goto(addr0052);
      }
      §§goto(addr002e);
      
      private var _1682553352bottomText:LocaLabel;
      
      private var _1256794519deactivationButton:MultistateButton;
      
      private var _1166031975headerLabel:LocaLabel;
      
      private var _1139881950topText:LocaLabel;
      
      private var _481019159warningText:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:String;
      
      private var _isDirty:Boolean;
      
      public function EmergencyDepartmentDeactivationTab()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super();
            if(!(_loc1_ && _loc1_))
            {
               mx_internal::_document = this;
               if(_loc2_ || Boolean(this))
               {
                  addr0052:
                  this.percentWidth = 100;
                  if(!(_loc1_ && Boolean(this)))
                  {
                     §§goto(addr006e);
                  }
                  §§goto(addr0078);
               }
               addr006e:
               this.percentHeight = 100;
               if(_loc2_)
               {
                  addr0078:
                  this.mxmlContent = [this._EmergencyDepartmentDeactivationTab_BlueBarComponent1_c(),this._EmergencyDepartmentDeactivationTab_BriskImageDynaLib1_c(),this._EmergencyDepartmentDeactivationTab_HGroup1_c(),this._EmergencyDepartmentDeactivationTab_VGroup1_c(),this._EmergencyDepartmentDeactivationTab_BriskImageDynaLib2_c()];
               }
               return;
            }
            §§goto(addr0078);
         }
         §§goto(addr0052);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            super.moduleFactory = param1;
            if(_loc3_ || Boolean(param1))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     §§goto(addr0058);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
               §§goto(addr006c);
            }
            addr0058:
            return;
         }
         addr006c:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super.initialize();
         }
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            super.commitProperties();
            if(!_loc2_)
            {
               §§push(Boolean(this._data));
               if(_loc3_ || _loc3_)
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  if(_temp_4)
                  {
                     if(_loc3_)
                     {
                        addr0045:
                        §§pop();
                        if(!_loc2_)
                        {
                           §§goto(addr0055);
                        }
                        §§goto(addr02ae);
                     }
                     §§goto(addr0054);
                  }
                  addr0055:
                  §§push(this._isDirty);
                  if(_loc3_)
                  {
                     addr0054:
                     §§push(§§pop());
                  }
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        addr005e:
                        this._isDirty = false;
                        if(_loc3_ || _loc3_)
                        {
                           addr0070:
                           §§push(this.deactivationButton);
                           if(_loc3_ || _loc1_)
                           {
                              §§push(LocaUtils.getString("rcl.booklayer.departmentBook","rcl.booklayer.departmentBook.deactivation.button.capital"));
                              if(_loc3_)
                              {
                                 §§pop().label = §§pop();
                                 if(_loc3_)
                                 {
                                    §§push(this.deactivationButton);
                                    if(!_loc2_)
                                    {
                                       addr00af:
                                       §§pop().toolTip = LocaUtils.getString("rcl.tooltips.departmentBook","rcl.tooltips.departmentBook.deactivation.button");
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          addr00c2:
                                          this.deactivationButton.enabled = false;
                                          addr00be:
                                          if(_loc3_)
                                          {
                                             addr00cb:
                                             this.warningText.includeInLayout = this.warningText.visible = false;
                                          }
                                          addr02ae:
                                          var _loc1_:* = this._data;
                                          if(_loc3_)
                                          {
                                             §§push(STATE_ACTIVE);
                                             if(!_loc2_)
                                             {
                                                §§push(_loc1_);
                                                if(!_loc2_)
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         §§push(0);
                                                         if(_loc2_)
                                                         {
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr031f:
                                                         §§push(2);
                                                         if(_loc2_ && _loc3_)
                                                         {
                                                         }
                                                      }
                                                      §§goto(addr033e);
                                                   }
                                                   else
                                                   {
                                                      §§push(STATE_ACTIVE_EMERGENCY_RUNNING);
                                                      if(!_loc2_)
                                                      {
                                                         §§push(_loc1_);
                                                         if(_loc3_ || Boolean(this))
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  §§push(1);
                                                                  if(_loc2_)
                                                                  {
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr031f);
                                                               }
                                                               §§goto(addr033e);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr031b);
                                                            }
                                                         }
                                                         addr031b:
                                                      }
                                                      §§goto(addr031a);
                                                   }
                                                }
                                                §§goto(addr031b);
                                             }
                                             addr031a:
                                             if(STATE_DEACTIVATED === _loc1_)
                                             {
                                                §§goto(addr031f);
                                             }
                                             else
                                             {
                                                §§push(3);
                                             }
                                             addr033e:
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   §§push(this.headerLabel);
                                                   if(!(_loc2_ && _loc3_))
                                                   {
                                                      §§push(LocaUtils.getString("rcl.booklayer.departmentBook","rcl.booklayer.departmentBook.deactivation.header.active.capital"));
                                                      if(!(_loc2_ && Boolean(_loc1_)))
                                                      {
                                                         §§pop().text = §§pop();
                                                         if(_loc2_ && _loc3_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(this.topText);
                                                         if(!(_loc2_ && _loc2_))
                                                         {
                                                            §§push(LocaUtils.getString("rcl.booklayer.departmentBook","rcl.booklayer.departmentBook.deactivation.explanationText.top.active"));
                                                            if(!_loc2_)
                                                            {
                                                               §§pop().text = §§pop();
                                                               if(!_loc2_)
                                                               {
                                                                  §§push(this.bottomText);
                                                                  if(!_loc2_)
                                                                  {
                                                                     §§push(LocaUtils.getString("rcl.booklayer.departmentBook","rcl.booklayer.departmentBook.deactivation.explanationText.bottom.active"));
                                                                     if(!_loc2_)
                                                                     {
                                                                        §§pop().text = §§pop();
                                                                        if(_loc2_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        this.deactivationButton.enabled = true;
                                                                        if(!_loc2_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        addr028a:
                                                                        addr0286:
                                                                        §§push(this.bottomText);
                                                                        §§push(LocaUtils.getString("rcl.booklayer.departmentBook","rcl.booklayer.departmentBook.deactivation.explanationText.bottom.inactive"));
                                                                     }
                                                                     addr0296:
                                                                     §§pop().text = §§pop();
                                                                     if(_loc3_ || Boolean(this))
                                                                     {
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr028a);
                                                               }
                                                               else
                                                               {
                                                                  addr0238:
                                                                  var _temp_14:* = this.warningText;
                                                                  this.warningText.visible = _loc1_ = true;
                                                                  _temp_14.includeInLayout = _loc1_;
                                                                  addr0234:
                                                                  if(_loc3_ || _loc1_)
                                                                  {
                                                                     break;
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr027f:
                                                               §§pop().text = §§pop();
                                                               if(!_loc3_)
                                                               {
                                                                  break;
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr01c7:
                                                            §§push(LocaUtils.getString("rcl.booklayer.departmentBook","rcl.booklayer.departmentBook.deactivation.explanationText.top.active"));
                                                            if(!_loc2_)
                                                            {
                                                               §§pop().text = §§pop();
                                                               if(_loc2_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(this.bottomText);
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  §§push(LocaUtils.getString("rcl.booklayer.departmentBook","rcl.booklayer.departmentBook.deactivation.explanationText.bottom.active"));
                                                                  if(_loc3_)
                                                                  {
                                                                     §§pop().text = §§pop();
                                                                     if(!(_loc3_ || _loc3_))
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(this.warningText);
                                                                     if(_loc3_)
                                                                     {
                                                                        §§pop().text = LocaUtils.getString("rcl.booklayer.departmentBook","rcl.booklayer.departmentBook.deactivation.blockedText");
                                                                        if(!(_loc3_ || _loc2_))
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§goto(addr0234);
                                                                     }
                                                                     §§goto(addr0238);
                                                                  }
                                                                  §§goto(addr0296);
                                                               }
                                                               §§goto(addr028a);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr027f);
                                                            }
                                                         }
                                                         §§goto(addr0286);
                                                      }
                                                      else
                                                      {
                                                         addr01af:
                                                         §§pop().text = §§pop();
                                                         if(_loc2_ && _loc3_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(this.topText);
                                                         if(!_loc2_)
                                                         {
                                                            §§goto(addr01c7);
                                                         }
                                                         else
                                                         {
                                                            addr0273:
                                                            §§push(LocaUtils.getString("rcl.booklayer.departmentBook","rcl.booklayer.departmentBook.deactivation.explanationText.top.inactive"));
                                                         }
                                                         §§goto(addr027f);
                                                      }
                                                      §§goto(addr01c7);
                                                   }
                                                   else
                                                   {
                                                      addr0268:
                                                      §§pop().text = LocaUtils.getString("rcl.booklayer.departmentBook","rcl.booklayer.departmentBook.deactivation.header.inactive.capital");
                                                      addr025c:
                                                      if(_loc2_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(this.topText);
                                                   }
                                                   §§goto(addr0273);
                                                case 1:
                                                   §§push(this.headerLabel);
                                                   if(!(_loc2_ && _loc3_))
                                                   {
                                                      §§push(LocaUtils.getString("rcl.booklayer.departmentBook","rcl.booklayer.departmentBook.deactivation.header.active.capital"));
                                                      if(!(_loc2_ && _loc1_))
                                                      {
                                                         §§goto(addr01af);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr0268);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr025c);
                                                   }
                                                   §§goto(addr0268);
                                                case 2:
                                                   §§goto(addr025c);
                                                   §§push(this.headerLabel);
                                             }
                                             §§goto(addr0351);
                                          }
                                          §§goto(addr031f);
                                       }
                                       §§goto(addr00cb);
                                    }
                                    §§goto(addr00c2);
                                 }
                                 §§goto(addr00cb);
                              }
                              §§goto(addr00af);
                           }
                           §§goto(addr00c2);
                        }
                        §§goto(addr00be);
                     }
                     §§goto(addr0070);
                  }
                  addr0351:
                  return;
               }
               §§goto(addr0045);
            }
            §§goto(addr00cb);
         }
         §§goto(addr005e);
      }
      
      public function set data(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(_loc3_ || _loc2_)
               {
                  this._data = param1;
                  if(_loc3_)
                  {
                     addr0056:
                     this._isDirty = true;
                     if(_loc3_)
                     {
                        addr0060:
                        invalidateProperties();
                     }
                  }
                  §§goto(addr0065);
               }
               §§goto(addr0056);
            }
            addr0065:
            return;
         }
         §§goto(addr0060);
      }
      
      private function handleDeactivationClick() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this.deactivationButton.enabled = false;
            if(!_loc1_)
            {
               addr0023:
               dispatchEvent(new Event(EVENT_DEACTIVATE_EMERGENCIES,true,true));
            }
            return;
         }
         §§goto(addr0023);
      }
      
      private function _EmergencyDepartmentDeactivationTab_BlueBarComponent1_c() : BlueBarComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BlueBarComponent = new BlueBarComponent();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               addr002e:
               _loc1_.height = 38;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.horizontalCenter = 0;
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.left = 20;
                     if(_loc3_)
                     {
                        _loc1_.right = 20;
                        addr006a:
                        if(!_loc2_)
                        {
                           _loc1_.top = 5;
                           if(_loc3_ || _loc3_)
                           {
                              §§goto(addr0091);
                           }
                           §§goto(addr009d);
                        }
                        addr0091:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr009d:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr00a1);
                     }
                     §§goto(addr009d);
                  }
                  §§goto(addr00a1);
               }
               §§goto(addr006a);
            }
            addr00a1:
            return _loc1_;
         }
         §§goto(addr002e);
      }
      
      private function _EmergencyDepartmentDeactivationTab_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc3_ || _loc3_)
            {
               _loc1_.dynaBmpSourceName = "infolayer_icon_attention";
               if(_loc3_ || _loc3_)
               {
                  addr0051:
                  _loc1_.left = 16;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr006e:
                     _loc1_.top = -10;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr008c:
                              _loc1_.document = this;
                           }
                        }
                        return _loc1_;
                     }
                  }
                  §§goto(addr008c);
               }
               §§goto(addr006e);
            }
            §§goto(addr008c);
         }
         §§goto(addr0051);
      }
      
      private function _EmergencyDepartmentDeactivationTab_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || _loc3_)
         {
            _loc1_.verticalAlign = "middle";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.horizontalAlign = "center";
               if(!_loc3_)
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc3_)
                  {
                     _loc1_.height = 38;
                     if(!_loc3_)
                     {
                        _loc1_.top = 5;
                        if(!_loc3_)
                        {
                           _loc1_.left = 54;
                           if(_loc2_)
                           {
                              addr0079:
                              _loc1_.right = 220;
                              if(!(_loc3_ && _loc3_))
                              {
                                 _loc1_.mxmlContent = [this._EmergencyDepartmentDeactivationTab_LocaLabel1_i()];
                                 addr008c:
                                 if(!(_loc3_ && Boolean(_loc1_)))
                                 {
                                    §§goto(addr00b0);
                                 }
                                 §§goto(addr00c4);
                              }
                              addr00b0:
                              if(!_loc1_.document)
                              {
                                 if(_loc2_ || Boolean(this))
                                 {
                                    addr00c4:
                                    _loc1_.document = this;
                                 }
                              }
                              §§goto(addr00c8);
                           }
                        }
                        §§goto(addr008c);
                     }
                     §§goto(addr00c8);
                  }
                  §§goto(addr00c4);
               }
               addr00c8:
               return _loc1_;
            }
            §§goto(addr008c);
         }
         §§goto(addr0079);
      }
      
      private function _EmergencyDepartmentDeactivationTab_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.styleName = "StatusBarStyleright";
            if(_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.maxDisplayedLines = 1;
                  if(!_loc3_)
                  {
                     _loc1_.id = "headerLabel";
                     if(_loc2_ || _loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr0081:
                              _loc1_.document = this;
                              if(_loc2_)
                              {
                                 addr008a:
                                 this.headerLabel = _loc1_;
                                 if(!_loc3_)
                                 {
                                    addr0094:
                                    BindingManager.executeBindings(this,"headerLabel",this.headerLabel);
                                 }
                              }
                           }
                           return _loc1_;
                        }
                     }
                     §§goto(addr008a);
                  }
                  §§goto(addr0081);
               }
               §§goto(addr008a);
            }
            §§goto(addr0094);
         }
         §§goto(addr0081);
      }
      
      private function _EmergencyDepartmentDeactivationTab_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.top = 54;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.left = 24;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.right = 230;
                  if(!_loc2_)
                  {
                     _loc1_.height = 280;
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.percentWidth = 100;
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr008c:
                           _loc1_.gap = 0;
                           if(!_loc2_)
                           {
                              addr0096:
                              _loc1_.horizontalAlign = "center";
                              if(_loc3_)
                              {
                                 _loc1_.mxmlContent = [this._EmergencyDepartmentDeactivationTab_HGroup2_c(),this._EmergencyDepartmentDeactivationTab_HGroup3_c(),this._EmergencyDepartmentDeactivationTab_Group2_c(),this._EmergencyDepartmentDeactivationTab_MultistateButton1_i(),this._EmergencyDepartmentDeactivationTab_Group3_c(),this._EmergencyDepartmentDeactivationTab_HGroup4_c()];
                                 addr00a0:
                                 if(_loc3_ || Boolean(this))
                                 {
                                    addr00e2:
                                    if(!_loc1_.document)
                                    {
                                       if(_loc3_)
                                       {
                                          addr00ee:
                                          _loc1_.document = this;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr00f2);
                           }
                           §§goto(addr00ee);
                        }
                        §§goto(addr00a0);
                     }
                     addr00f2:
                     return _loc1_;
                  }
                  §§goto(addr0096);
               }
            }
            §§goto(addr008c);
         }
         §§goto(addr00e2);
      }
      
      private function _EmergencyDepartmentDeactivationTab_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.height = 90;
               if(_loc3_ || _loc3_)
               {
                  addr0057:
                  _loc1_.verticalAlign = "middle";
                  if(!_loc2_)
                  {
                     §§goto(addr0062);
                  }
                  §§goto(addr0091);
               }
               §§goto(addr0081);
            }
            addr0062:
            _loc1_.horizontalAlign = "center";
            if(!(_loc2_ && _loc3_))
            {
               addr0081:
               _loc1_.mxmlContent = [this._EmergencyDepartmentDeactivationTab_LocaLabel2_i()];
               if(_loc3_)
               {
                  addr0091:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(this))
                     {
                        addr00a5:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr00a9);
               }
               §§goto(addr00a5);
            }
            addr00a9:
            return _loc1_;
         }
         §§goto(addr0057);
      }
      
      private function _EmergencyDepartmentDeactivationTab_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.styleName = "twelveDarkCenter";
            if(!_loc3_)
            {
               _loc1_.percentWidth = 90;
               if(_loc2_)
               {
                  addr003c:
                  _loc1_.id = "topText";
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           addr006f:
                           _loc1_.document = this;
                           if(!(_loc3_ && Boolean(this)))
                           {
                              §§goto(addr008c);
                           }
                           §§goto(addr009e);
                        }
                     }
                     addr008c:
                     this.topText = _loc1_;
                     if(_loc2_ || _loc2_)
                     {
                        addr009e:
                        BindingManager.executeBindings(this,"topText",this.topText);
                     }
                     return _loc1_;
                  }
                  §§goto(addr006f);
               }
               §§goto(addr009e);
            }
            §§goto(addr006f);
         }
         §§goto(addr003c);
      }
      
      private function _EmergencyDepartmentDeactivationTab_HGroup3_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.height = 90;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0068:
                     _loc1_.horizontalAlign = "center";
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr0087:
                        _loc1_.mxmlContent = [this._EmergencyDepartmentDeactivationTab_LocaLabel3_i()];
                        if(_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 addr00a3:
                                 _loc1_.document = this;
                              }
                           }
                           return _loc1_;
                        }
                     }
                     §§goto(addr00a3);
                  }
                  §§goto(addr0087);
               }
               §§goto(addr0068);
            }
            §§goto(addr0087);
         }
         §§goto(addr00a3);
      }
      
      private function _EmergencyDepartmentDeactivationTab_LocaLabel3_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc3_)
         {
            _loc1_.styleName = "twelveBlueCenter";
            if(_loc3_)
            {
               _loc1_.percentWidth = 90;
               if(_loc3_)
               {
                  _loc1_.id = "bottomText";
                  if(!_loc2_)
                  {
                     addr0054:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           _loc1_.document = this;
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr0087:
                              this.bottomText = _loc1_;
                              if(!_loc2_)
                              {
                                 addr0091:
                                 BindingManager.executeBindings(this,"bottomText",this.bottomText);
                              }
                           }
                           §§goto(addr009e);
                        }
                        §§goto(addr0091);
                     }
                     §§goto(addr0087);
                  }
                  §§goto(addr0091);
               }
               §§goto(addr0054);
            }
            §§goto(addr0087);
         }
         addr009e:
         return _loc1_;
      }
      
      private function _EmergencyDepartmentDeactivationTab_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.height = 5;
            if(!_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr0041:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0041);
      }
      
      private function _EmergencyDepartmentDeactivationTab_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc3_ || _loc3_)
         {
            _loc1_.width = 200;
            if(_loc3_ || Boolean(this))
            {
               addr003a:
               _loc1_.enabled = false;
               if(_loc3_)
               {
                  _loc1_.addEventListener("click",this.__deactivationButton_click);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.id = "deactivationButton";
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 addr009d:
                                 this.deactivationButton = _loc1_;
                                 if(_loc3_ || _loc2_)
                                 {
                                    addr00af:
                                    BindingManager.executeBindings(this,"deactivationButton",this.deactivationButton);
                                 }
                              }
                              return _loc1_;
                           }
                           §§goto(addr00af);
                        }
                        §§goto(addr009d);
                     }
                     §§goto(addr00af);
                  }
               }
            }
            §§goto(addr009d);
         }
         §§goto(addr003a);
      }
      
      public function __deactivationButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this.handleDeactivationClick();
         }
      }
      
      private function _EmergencyDepartmentDeactivationTab_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.height = 5;
            if(!(_loc3_ && _loc2_))
            {
               §§goto(addr0045);
            }
            §§goto(addr0051);
         }
         addr0045:
         if(!_loc1_.document)
         {
            if(_loc2_)
            {
               addr0051:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _EmergencyDepartmentDeactivationTab_HGroup4_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.height = 50;
               if(_loc3_)
               {
                  addr0048:
                  _loc1_.verticalAlign = "middle";
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.horizontalAlign = "center";
                     if(_loc3_)
                     {
                        _loc1_.mxmlContent = [this._EmergencyDepartmentDeactivationTab_LocaLabel4_i()];
                        if(_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr008d:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr0091);
                        }
                     }
                     §§goto(addr008d);
                  }
               }
               addr0091:
               return _loc1_;
            }
            §§goto(addr0048);
         }
         §§goto(addr008d);
      }
      
      private function _EmergencyDepartmentDeactivationTab_LocaLabel4_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.styleName = "twelveRedCenter";
            if(!_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(!_loc3_)
               {
                  _loc1_.includeInLayout = false;
                  if(!_loc3_)
                  {
                     _loc1_.visible = false;
                     if(!_loc3_)
                     {
                        _loc1_.id = "warningText";
                        §§goto(addr0047);
                     }
                  }
                  §§goto(addr0078);
               }
            }
            §§goto(addr0064);
         }
         addr0047:
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            addr0064:
            if(!_loc1_.document)
            {
               if(_loc2_ || Boolean(_loc1_))
               {
                  addr0078:
                  _loc1_.document = this;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     §§goto(addr0094);
                  }
                  §§goto(addr00a6);
               }
            }
         }
         addr0094:
         this.warningText = _loc1_;
         if(!(_loc3_ && _loc3_))
         {
            addr00a6:
            BindingManager.executeBindings(this,"warningText",this.warningText);
         }
         return _loc1_;
      }
      
      private function _EmergencyDepartmentDeactivationTab_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "char_emergencyOff";
               if(_loc3_)
               {
                  _loc1_.right = 30;
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.top = -10;
                     addr0055:
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              addr0087:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr008b);
                     }
                     §§goto(addr0087);
                  }
               }
            }
            addr008b:
            return _loc1_;
         }
         §§goto(addr0055);
      }
      
      [Bindable(event="propertyChange")]
      public function get bottomText() : LocaLabel
      {
         return this._1682553352bottomText;
      }
      
      public function set bottomText(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1682553352bottomText;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1682553352bottomText = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     §§goto(addr0056);
                  }
                  §§goto(addr0065);
               }
               addr0056:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_)
                  {
                     addr0065:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bottomText",_loc2_,param1));
                  }
               }
               §§goto(addr0074);
            }
         }
         addr0074:
      }
      
      [Bindable(event="propertyChange")]
      public function get deactivationButton() : MultistateButton
      {
         return this._1256794519deactivationButton;
      }
      
      public function set deactivationButton(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1256794519deactivationButton;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  addr004e:
                  this._1256794519deactivationButton = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"deactivationButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0076);
               }
               §§goto(addr0067);
            }
            addr0076:
            return;
         }
         §§goto(addr004e);
      }
      
      [Bindable(event="propertyChange")]
      public function get headerLabel() : LocaLabel
      {
         return this._1166031975headerLabel;
      }
      
      public function set headerLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1166031975headerLabel;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._1166031975headerLabel = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr006e);
               }
            }
         }
         addr007d:
      }
      
      [Bindable(event="propertyChange")]
      public function get topText() : LocaLabel
      {
         return this._1139881950topText;
      }
      
      public function set topText(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1139881950topText;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._1139881950topText = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"topText",_loc2_,param1));
                        }
                     }
                     §§goto(addr0083);
                  }
                  §§goto(addr0074);
               }
            }
         }
         addr0083:
      }
      
      [Bindable(event="propertyChange")]
      public function get warningText() : LocaLabel
      {
         return this._481019159warningText;
      }
      
      public function set warningText(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._481019159warningText;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._481019159warningText = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"warningText",_loc2_,param1));
                        }
                     }
                     §§goto(addr007a);
                  }
                  §§goto(addr006b);
               }
            }
            addr007a:
            return;
         }
         §§goto(addr006b);
      }
   }
}

