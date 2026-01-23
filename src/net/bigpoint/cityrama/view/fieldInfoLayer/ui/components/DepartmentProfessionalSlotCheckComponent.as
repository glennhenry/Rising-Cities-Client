package net.bigpoint.cityrama.view.fieldInfoLayer.ui.components
{
   import com.greensock.TweenMax;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.DepartmentProfessionalComponentVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.VGroup;
   
   public class DepartmentProfessionalSlotCheckComponent extends Group
   {
      
      private var _3141bg:BriskImageDynaLib;
      
      private var _94627080check:BriskImageDynaLib;
      
      private var _3226745icon:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _isDirty:Boolean;
      
      private var _data:DepartmentProfessionalComponentVo;
      
      public function DepartmentProfessionalSlotCheckComponent()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
            if(_loc1_ || _loc1_)
            {
               mx_internal::_document = this;
               if(!(_loc2_ && Boolean(this)))
               {
                  addr0049:
                  this.mxmlContent = [this._DepartmentProfessionalSlotCheckComponent_Group2_c()];
               }
            }
            return;
         }
         §§goto(addr0049);
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
                  if(_loc2_ || _loc3_)
                  {
                     return;
                  }
               }
               else
               {
                  addr0047:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
         }
         §§goto(addr0047);
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super.initialize();
         }
      }
      
      public function set data(param1:DepartmentProfessionalComponentVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(_loc3_)
               {
                  this._data = param1;
                  if(_loc3_ || _loc3_)
                  {
                     this._isDirty = true;
                     if(!(_loc2_ && _loc2_))
                     {
                        addr0072:
                        invalidateProperties();
                     }
                     §§goto(addr0077);
                  }
               }
               §§goto(addr0072);
            }
            addr0077:
            return;
         }
         §§goto(addr0072);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super.commitProperties();
            if(!(_loc2_ && _loc2_))
            {
               §§push(this._data);
               if(_loc1_)
               {
                  §§push(§§pop());
                  if(_loc1_ || Boolean(this))
                  {
                     var _temp_4:* = §§pop();
                     §§push(_temp_4);
                     if(_temp_4)
                     {
                        if(_loc1_)
                        {
                           §§pop();
                           if(_loc1_ || Boolean(this))
                           {
                              §§push(this._isDirty);
                              if(_loc1_ || _loc2_)
                              {
                                 addr006f:
                                 §§push(§§pop());
                                 if(_loc1_ || _loc2_)
                                 {
                                    §§goto(addr007d);
                                 }
                                 §§goto(addr015a);
                              }
                              §§goto(addr007d);
                           }
                           §§goto(addr00ef);
                        }
                        §§goto(addr006f);
                     }
                     addr007d:
                     if(§§pop())
                     {
                        if(!_loc2_)
                        {
                           this._isDirty = false;
                           if(_loc1_)
                           {
                              §§push(this.icon);
                              if(!_loc2_)
                              {
                                 §§push(this._data);
                                 if(!_loc2_)
                                 {
                                    §§push(§§pop().professionalSWFName);
                                    if(_loc1_)
                                    {
                                       §§pop().dynaSWFFileName = §§pop();
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          §§push(this.icon);
                                          if(_loc1_)
                                          {
                                             addr00c4:
                                             §§push(this._data);
                                             if(_loc1_)
                                             {
                                                §§push(§§pop().professionalLibName);
                                                if(_loc1_ || Boolean(this))
                                                {
                                                   §§pop().dynaLibName = §§pop();
                                                   if(!_loc2_)
                                                   {
                                                      addr00fb:
                                                      this.icon.dynaBmpSourceName = this._data.professionalBmpName;
                                                      addr00f7:
                                                      addr00f3:
                                                      addr00ef:
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         addr010a:
                                                         §§push(this.bg);
                                                         if(_loc1_)
                                                         {
                                                            §§push("gui_popups_optionsPopup");
                                                            if(!(_loc2_ && _loc2_))
                                                            {
                                                               §§pop().dynaLibName = §§pop();
                                                               if(!(_loc2_ && _loc1_))
                                                               {
                                                                  addr0132:
                                                                  §§push(this.check);
                                                                  if(!(_loc2_ && Boolean(this)))
                                                                  {
                                                                     §§push("gui_infield_gui_infolayer");
                                                                     if(_loc1_)
                                                                     {
                                                                        §§pop().dynaLibName = §§pop();
                                                                        if(!_loc2_)
                                                                        {
                                                                           addr0152:
                                                                           addr015a:
                                                                           addr0156:
                                                                           if(this._data.positionOccupied)
                                                                           {
                                                                              if(_loc1_)
                                                                              {
                                                                                 §§push(this.bg);
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    §§push("options_bg_on");
                                                                                    if(_loc1_)
                                                                                    {
                                                                                       §§pop().dynaBmpSourceName = §§pop();
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          addr017b:
                                                                                          §§push(this.check);
                                                                                          if(!(_loc2_ && _loc2_))
                                                                                          {
                                                                                             §§push("checkmark_green_small");
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                addr0194:
                                                                                                §§pop().dynaBmpSourceName = §§pop();
                                                                                                if(_loc1_)
                                                                                                {
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr01c6:
                                                                                                §§pop().dynaBmpSourceName = §§pop();
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   addr01cd:
                                                                                                   TweenMax.to(this.icon,0,{
                                                                                                      "colorMatrixFilter":{"saturation":0},
                                                                                                      "colorTransform":{
                                                                                                         "tint":15263976,
                                                                                                         "tintAmount":0.74
                                                                                                      }
                                                                                                   });
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr01f4);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr01c3:
                                                                                             §§push("checkmark_grey_small");
                                                                                          }
                                                                                          §§goto(addr01c6);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr01a6:
                                                                                       §§pop().dynaBmpSourceName = §§pop();
                                                                                       if(!(_loc2_ && _loc2_))
                                                                                       {
                                                                                          §§goto(addr01c3);
                                                                                          §§push(this.check);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr01cd);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr01a3:
                                                                                    §§push("options_bg_off");
                                                                                 }
                                                                                 §§goto(addr01a6);
                                                                              }
                                                                              §§goto(addr01f4);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(this.bg);
                                                                           }
                                                                           §§goto(addr01a3);
                                                                        }
                                                                        §§goto(addr017b);
                                                                     }
                                                                     §§goto(addr0194);
                                                                  }
                                                                  §§goto(addr01c3);
                                                               }
                                                               §§goto(addr01f4);
                                                            }
                                                            §§goto(addr01a6);
                                                         }
                                                         §§goto(addr01a3);
                                                      }
                                                      §§goto(addr017b);
                                                   }
                                                   §§goto(addr0132);
                                                }
                                                §§goto(addr00fb);
                                             }
                                             §§goto(addr00f7);
                                          }
                                          §§goto(addr00f3);
                                       }
                                       §§goto(addr01f4);
                                    }
                                    §§goto(addr00fb);
                                 }
                                 §§goto(addr00f7);
                              }
                              §§goto(addr00c4);
                           }
                           §§goto(addr0152);
                        }
                        §§goto(addr010a);
                     }
                     addr01f4:
                     return;
                  }
                  §§goto(addr015a);
               }
               §§goto(addr0156);
            }
            §§goto(addr0152);
         }
         §§goto(addr017b);
      }
      
      private function _DepartmentProfessionalSlotCheckComponent_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.mxmlContent = [this._DepartmentProfessionalSlotCheckComponent_BriskImageDynaLib1_c(),this._DepartmentProfessionalSlotCheckComponent_VGroup1_c(),this._DepartmentProfessionalSlotCheckComponent_VGroup2_c(),this._DepartmentProfessionalSlotCheckComponent_BriskImageDynaLib4_i()];
            if(_loc3_)
            {
               addr0063:
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0063);
      }
      
      private function _DepartmentProfessionalSlotCheckComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaBmpSourceName = "options_frame";
            if(!_loc2_)
            {
               _loc1_.dynaLibName = "gui_popups_optionsPopup";
               §§goto(addr0038);
            }
            §§goto(addr006a);
         }
         addr0038:
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            if(!_loc1_.document)
            {
               if(_loc3_ || Boolean(this))
               {
                  addr006a:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _DepartmentProfessionalSlotCheckComponent_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_)
         {
            _loc1_.width = 39;
            if(_loc3_)
            {
               _loc1_.height = 37;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.verticalAlign = "middle";
                  addr003b:
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.horizontalAlign = "center";
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.mxmlContent = [this._DepartmentProfessionalSlotCheckComponent_BriskImageDynaLib2_i()];
                        addr006d:
                        if(!(_loc2_ && _loc3_))
                        {
                           §§goto(addr0093);
                        }
                        §§goto(addr00a7);
                     }
                     §§goto(addr0093);
                  }
                  §§goto(addr006d);
               }
               §§goto(addr0093);
            }
            §§goto(addr003b);
         }
         addr0093:
         if(!_loc1_.document)
         {
            if(!(_loc2_ && _loc2_))
            {
               addr00a7:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _DepartmentProfessionalSlotCheckComponent_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaBmpSourceName = "options_bg_on";
            if(_loc3_)
            {
               addr002a:
               _loc1_.dynaLibName = "gui_popups_optionsPopup";
               if(!(_loc2_ && _loc2_))
               {
                  §§goto(addr004a);
               }
               §§goto(addr0055);
            }
            addr004a:
            _loc1_.id = "bg";
            if(!_loc2_)
            {
               addr0055:
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.document = this;
                     if(_loc3_)
                     {
                        addr007f:
                        this.bg = _loc1_;
                        if(_loc3_)
                        {
                           BindingManager.executeBindings(this,"bg",this.bg);
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
         §§goto(addr002a);
      }
      
      private function _DepartmentProfessionalSlotCheckComponent_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.width = 39;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.height = 37;
               if(_loc2_)
               {
                  addr004f:
                  _loc1_.verticalAlign = "middle";
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.horizontalAlign = "center";
                     if(_loc2_)
                     {
                        addr0077:
                        _loc1_.mxmlContent = [this._DepartmentProfessionalSlotCheckComponent_BriskImageDynaLib3_i()];
                        if(!_loc3_)
                        {
                           addr0087:
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 _loc1_.document = this;
                              }
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr0087);
               }
               §§goto(addr0077);
            }
            §§goto(addr0087);
         }
         §§goto(addr004f);
      }
      
      private function _DepartmentProfessionalSlotCheckComponent_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "icon_badges";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.dynaSWFFileName = "gui_ui_emergencyDepartmentsIcons";
               if(!_loc2_)
               {
                  §§goto(addr004c);
               }
               §§goto(addr006b);
            }
         }
         addr004c:
         _loc1_.id = "icon";
         if(_loc3_)
         {
            if(!_loc1_.document)
            {
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr006b:
                  _loc1_.document = this;
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0088:
                     this.icon = _loc1_;
                     if(_loc3_ || _loc2_)
                     {
                        addr009a:
                        BindingManager.executeBindings(this,"icon",this.icon);
                     }
                     §§goto(addr00a7);
                  }
                  §§goto(addr009a);
               }
               §§goto(addr00a7);
            }
            §§goto(addr0088);
         }
         addr00a7:
         return _loc1_;
      }
      
      private function _DepartmentProfessionalSlotCheckComponent_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaBmpSourceName = "checkmark_green_small";
            if(_loc2_)
            {
               _loc1_.dynaLibName = "gui_infield_gui_infolayer";
               if(!_loc3_)
               {
                  _loc1_.right = -10;
                  if(!_loc3_)
                  {
                     _loc1_.top = -3;
                     if(!(_loc3_ && _loc2_))
                     {
                        §§goto(addr005e);
                     }
                     §§goto(addr0069);
                  }
                  addr005e:
                  _loc1_.id = "check";
                  if(!_loc3_)
                  {
                     addr0069:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           §§goto(addr0075);
                        }
                        §§goto(addr00a6);
                     }
                     §§goto(addr0094);
                  }
                  §§goto(addr0075);
               }
               addr0075:
               _loc1_.document = this;
               if(!(_loc3_ && _loc2_))
               {
                  addr0094:
                  this.check = _loc1_;
                  if(!(_loc3_ && _loc2_))
                  {
                     addr00a6:
                     BindingManager.executeBindings(this,"check",this.check);
                  }
               }
               §§goto(addr00b3);
            }
            addr00b3:
            return _loc1_;
         }
         §§goto(addr0075);
      }
      
      [Bindable(event="propertyChange")]
      public function get bg() : BriskImageDynaLib
      {
         return this._3141bg;
      }
      
      public function set bg(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._3141bg;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._3141bg = param1;
                  if(_loc3_ || _loc3_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bg",_loc2_,param1));
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
         §§goto(addr0057);
      }
      
      [Bindable(event="propertyChange")]
      public function get check() : BriskImageDynaLib
      {
         return this._94627080check;
      }
      
      public function set check(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._94627080check;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._94627080check = param1;
                  if(!_loc3_)
                  {
                     addr005f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"check",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0086);
               }
               §§goto(addr0077);
            }
            addr0086:
            return;
         }
         §§goto(addr005f);
      }
      
      [Bindable(event="propertyChange")]
      public function get icon() : BriskImageDynaLib
      {
         return this._3226745icon;
      }
      
      public function set icon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._3226745icon;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._3226745icon = param1;
                  if(!_loc3_)
                  {
                     addr0049:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"icon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr006f);
               }
               §§goto(addr0049);
            }
         }
         addr006f:
      }
   }
}

