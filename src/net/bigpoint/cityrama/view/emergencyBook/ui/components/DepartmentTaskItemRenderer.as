package net.bigpoint.cityrama.view.emergencyBook.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.GradeVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.SeparatorItemRenderer;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   
   public class DepartmentTaskItemRenderer extends SeparatorItemRenderer
   {
      
      private var _1836954358baseImage:BriskImageDynaLib;
      
      private var _133200872checkMarkBackgroundImage:BriskImageDynaLib;
      
      private var _880103014checkMarkImage:BriskImageDynaLib;
      
      private var _453556521departmentImage:BriskImageDynaLib;
      
      private var _1732829925separator:BriskImageDynaLib;
      
      private var _909318622statusLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _dataIsDirty:Boolean = false;
      
      private var _data:GradeVo;
      
      public function DepartmentTaskItemRenderer()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
            if(_loc1_)
            {
               mx_internal::_document = this;
               if(!(_loc2_ && Boolean(this)))
               {
                  this.width = 450;
                  if(_loc1_)
                  {
                     this.height = 48;
                     if(_loc1_)
                     {
                        addr0056:
                        this.autoDrawBackground = false;
                        if(_loc1_ || _loc1_)
                        {
                           §§goto(addr0072);
                        }
                     }
                     §§goto(addr0090);
                  }
               }
               §§goto(addr0056);
            }
            addr0072:
            this.mxmlContent = [this._DepartmentTaskItemRenderer_Group1_c(),this._DepartmentTaskItemRenderer_BriskImageDynaLib6_i()];
            if(!(_loc2_ && _loc1_))
            {
               addr0090:
               this.addEventListener("creationComplete",this.___DepartmentTaskItemRenderer_SeparatorItemRenderer1_creationComplete);
            }
            return;
         }
         §§goto(addr0090);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.moduleFactory = param1;
            if(_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || Boolean(this))
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
         if(!(_loc1_ && _loc1_))
         {
            super.initialize();
         }
      }
      
      protected function handleCreationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            invalidateProperties();
            if(_loc3_ || _loc3_)
            {
               §§push(this.separator);
               if(_loc3_)
               {
                  §§push(true);
                  if(_loc3_ || Boolean(param1))
                  {
                     §§pop().visible = §§pop();
                     if(!(_loc2_ && _loc3_))
                     {
                        addr0078:
                        this.separator.includeInLayout = true;
                        addr0077:
                        addr0073:
                     }
                     §§goto(addr007a);
                  }
                  §§goto(addr0078);
               }
               §§goto(addr0077);
            }
            §§goto(addr0073);
         }
         addr007a:
      }
      
      override public function set data(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            super.data = param1;
            if(!_loc3_)
            {
               if(!RandomUtilities.isEqual(this._data,param1))
               {
                  if(_loc2_)
                  {
                     this._dataIsDirty = true;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr0069:
                        this._data = param1 as GradeVo;
                        if(!_loc3_)
                        {
                           addr0077:
                           invalidateProperties();
                        }
                        §§goto(addr007c);
                     }
                     §§goto(addr0077);
                  }
               }
               addr007c:
               return;
            }
            §§goto(addr0069);
         }
         §§goto(addr0077);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc1_:* = false;
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         if(!_loc6_)
         {
            super.commitProperties();
            if(!(_loc6_ && _loc1_))
            {
               §§push(this._dataIsDirty);
               if(_loc7_ || Boolean(_loc3_))
               {
                  if(§§pop())
                  {
                     if(_loc7_)
                     {
                        this._dataIsDirty = false;
                        if(_loc7_ || _loc1_)
                        {
                           addr007c:
                           _loc1_ = this._data.currentGrade >= this._data.requiredGrade;
                           addr006d:
                           if(!_loc6_)
                           {
                              §§push(this.baseImage);
                              if(!(_loc6_ && Boolean(this)))
                              {
                                 if(_loc1_)
                                 {
                                    addr009a:
                                    §§push("batchbase_green");
                                    if(_loc6_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §§push("batchbase_red");
                                 }
                                 §§pop().dynaBmpSourceName = §§pop();
                                 if(_loc7_)
                                 {
                                    addr00b2:
                                    §§push(this.statusLabel);
                                    if(_loc7_)
                                    {
                                       if(_loc1_)
                                       {
                                          if(!(_loc6_ && Boolean(_loc2_)))
                                          {
                                             "emergencyDepartmentBoxAcitveLabel".styleName = _loc7_ || Boolean(_loc2_) ? §§pop() : §§pop();
                                             addr00cf:
                                             if(!(_loc6_ && Boolean(_loc2_)))
                                             {
                                                addr00fd:
                                                §§push(this.checkMarkImage);
                                                if(!_loc6_)
                                                {
                                                   if(_loc1_)
                                                   {
                                                      addr010c:
                                                      §§push("checkmark_green");
                                                      if(_loc7_ || Boolean(_loc2_))
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push("checkmark_gray");
                                                   }
                                                   §§pop().dynaBmpSourceName = §§pop();
                                                   if(_loc7_)
                                                   {
                                                      §§push(this.checkMarkBackgroundImage);
                                                      if(!(_loc6_ && Boolean(this)))
                                                      {
                                                         if(_loc1_)
                                                         {
                                                            addr0143:
                                                            §§push("options_bg_on");
                                                            if(_loc7_)
                                                            {
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push("options_bg_off");
                                                         }
                                                         §§pop().dynaBmpSourceName = §§pop();
                                                         if(_loc7_)
                                                         {
                                                            this.departmentImage.dynaBmpSourceName = this._data.gfxID.toString();
                                                            if(_loc7_)
                                                            {
                                                               §§push(ResourceManager.getInstance());
                                                               if(_loc7_ || Boolean(_loc3_))
                                                               {
                                                                  §§push(§§pop().getString(String("rcl.emergencybook.layer"),String("rcl.emergencybook.layer.grade." + this._data.requiredGrade)));
                                                                  if(!(_loc6_ && Boolean(_loc3_)))
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!(_loc6_ && Boolean(_loc3_)))
                                                                     {
                                                                        _loc2_ = §§pop();
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(ResourceManager.getInstance());
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§push(§§pop().getString(String("rcl.emergencybook.layer"),String("rcl.emergencybook.layer.grade." + this._data.currentGrade)));
                                                                              if(!(_loc6_ && Boolean(_loc3_)))
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    _loc3_ = §§pop();
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       addr021b:
                                                                                       §§push(ResourceManager.getInstance());
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          addr0227:
                                                                                          §§push(§§pop().getString(String("rcl.emergencybook.layer"),String("rcl.emergencybook.layer.department." + this._data.locaID)));
                                                                                          if(_loc7_ || _loc1_)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(!(_loc6_ && _loc1_))
                                                                                             {
                                                                                                _loc4_ = §§pop();
                                                                                                if(!(_loc6_ && Boolean(_loc3_)))
                                                                                                {
                                                                                                   addr0277:
                                                                                                   addr0271:
                                                                                                   §§push(ResourceManager.getInstance().getString(String("rcl.emergencybook.layer"),String("rcl.emergencybook.layer.status")));
                                                                                                   if(_loc7_ || Boolean(this))
                                                                                                   {
                                                                                                      addr029a:
                                                                                                      §§push(§§pop());
                                                                                                      if(!(_loc6_ && Boolean(this)))
                                                                                                      {
                                                                                                         §§goto(addr02a9);
                                                                                                      }
                                                                                                      §§goto(addr02be);
                                                                                                   }
                                                                                                   addr02a9:
                                                                                                   _loc5_ = §§pop();
                                                                                                   §§push(_loc5_);
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      addr02be:
                                                                                                      §§push(§§pop().replace("{0}",_loc4_).replace("{1}",_loc2_).replace("{2}",_loc3_));
                                                                                                   }
                                                                                                   _loc5_ = §§pop();
                                                                                                   if(_loc7_ || Boolean(this))
                                                                                                   {
                                                                                                      addr02ed:
                                                                                                      this.statusLabel.text = _loc5_;
                                                                                                      addr02e9:
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr02f1);
                                                                                             }
                                                                                             §§goto(addr02a9);
                                                                                          }
                                                                                          §§goto(addr02be);
                                                                                       }
                                                                                       §§goto(addr0277);
                                                                                    }
                                                                                    §§goto(addr0271);
                                                                                 }
                                                                                 §§goto(addr029a);
                                                                              }
                                                                              §§goto(addr02be);
                                                                           }
                                                                           §§goto(addr0277);
                                                                        }
                                                                        §§goto(addr02e9);
                                                                     }
                                                                  }
                                                                  §§goto(addr02be);
                                                               }
                                                               §§goto(addr0227);
                                                            }
                                                            §§goto(addr0271);
                                                         }
                                                         §§goto(addr021b);
                                                      }
                                                      §§goto(addr0143);
                                                   }
                                                   §§goto(addr02e9);
                                                }
                                                §§goto(addr010c);
                                             }
                                             §§goto(addr02e9);
                                          }
                                          §§goto(addr02ed);
                                       }
                                       else
                                       {
                                          §§push("emergencyDepartmentBoxDeacitveLabel");
                                       }
                                       §§goto(addr00eb);
                                    }
                                    §§goto(addr00cf);
                                 }
                                 §§goto(addr021b);
                              }
                              §§goto(addr009a);
                           }
                           §§goto(addr00fd);
                        }
                     }
                     §§goto(addr0271);
                  }
                  addr02f1:
                  return;
               }
               §§goto(addr007c);
            }
            §§goto(addr00b2);
         }
         §§goto(addr006d);
      }
      
      private function _DepartmentTaskItemRenderer_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.mxmlContent = [this._DepartmentTaskItemRenderer_HGroup1_c()];
               if(!_loc2_)
               {
                  addr005d:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr005d);
      }
      
      private function _DepartmentTaskItemRenderer_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.verticalAlign = "middle";
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.horizontalAlign = "left";
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.paddingRight = 5;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        _loc1_.mxmlContent = [this._DepartmentTaskItemRenderer_Group2_c(),this._DepartmentTaskItemRenderer_LocaLabel1_i(),this._DepartmentTaskItemRenderer_Group3_c()];
                        if(_loc3_)
                        {
                           addr00a7:
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr00bb:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr00bf);
                        }
                        §§goto(addr00bb);
                     }
                     §§goto(addr00bf);
                  }
                  §§goto(addr00bb);
               }
               §§goto(addr00a7);
            }
            §§goto(addr00bb);
         }
         addr00bf:
         return _loc1_;
      }
      
      private function _DepartmentTaskItemRenderer_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.mxmlContent = [this._DepartmentTaskItemRenderer_BriskImageDynaLib1_i(),this._DepartmentTaskItemRenderer_BriskImageDynaLib2_i()];
            if(_loc3_ || Boolean(_loc1_))
            {
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _DepartmentTaskItemRenderer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "batchbase_red";
               if(_loc3_)
               {
                  §§goto(addr0037);
               }
               §§goto(addr00a7);
            }
            addr0037:
            _loc1_.horizontalCenter = 0;
            if(_loc3_)
            {
               _loc1_.bottom = 0;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.id = "baseImage";
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           _loc1_.document = this;
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr0095:
                              this.baseImage = _loc1_;
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr00a7:
                                 BindingManager.executeBindings(this,"baseImage",this.baseImage);
                              }
                           }
                           §§goto(addr00b4);
                        }
                     }
                  }
               }
               §§goto(addr0095);
            }
            addr00b4:
            return _loc1_;
         }
         §§goto(addr0095);
      }
      
      private function _DepartmentTaskItemRenderer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.dynaSWFFileName = "gui_ui_emergencyDepartmentsIcons";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.dynaLibName = "small_badges";
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.horizontalCenter = 0;
                  if(!_loc2_)
                  {
                     _loc1_.verticalCenter = -4;
                     if(!_loc2_)
                     {
                        addr006e:
                        _loc1_.id = "departmentImage";
                        if(!(_loc2_ && _loc3_))
                        {
                           addr0081:
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 _loc1_.document = this;
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr00b2:
                                    this.departmentImage = _loc1_;
                                    if(!(_loc2_ && Boolean(this)))
                                    {
                                       addr00c4:
                                       BindingManager.executeBindings(this,"departmentImage",this.departmentImage);
                                    }
                                 }
                                 §§goto(addr00d1);
                              }
                              §§goto(addr00c4);
                           }
                           §§goto(addr00b2);
                        }
                        §§goto(addr00c4);
                     }
                     §§goto(addr00d1);
                  }
                  §§goto(addr006e);
               }
               §§goto(addr00c4);
            }
            §§goto(addr0081);
         }
         addr00d1:
         return _loc1_;
      }
      
      private function _DepartmentTaskItemRenderer_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.styleName = "emergencyDepartmentBoxLabel";
            if(_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(_loc3_)
               {
                  _loc1_.maxDisplayedLines = 2;
                  if(_loc3_)
                  {
                     addr004c:
                     _loc1_.id = "statusLabel";
                     if(!_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && Boolean(this)))
                           {
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 addr0081:
                                 this.statusLabel = _loc1_;
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    addr0093:
                                    BindingManager.executeBindings(this,"statusLabel",this.statusLabel);
                                 }
                              }
                           }
                           §§goto(addr00a0);
                        }
                        §§goto(addr0081);
                     }
                     §§goto(addr0093);
                  }
                  addr00a0:
                  return _loc1_;
               }
               §§goto(addr0093);
            }
            §§goto(addr004c);
         }
         §§goto(addr0081);
      }
      
      private function _DepartmentTaskItemRenderer_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.mxmlContent = [this._DepartmentTaskItemRenderer_BriskImageDynaLib3_c(),this._DepartmentTaskItemRenderer_BriskImageDynaLib4_i(),this._DepartmentTaskItemRenderer_BriskImageDynaLib5_i()];
            if(!_loc3_)
            {
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
      
      private function _DepartmentTaskItemRenderer_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_optionsPopup";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.verticalCenter = 0;
               if(_loc2_ || Boolean(_loc1_))
               {
                  addr0058:
                  _loc1_.horizontalCenter = 0;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.dynaBmpSourceName = "options_frame";
                     if(_loc2_ || Boolean(this))
                     {
                        addr0087:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr0087);
         }
         §§goto(addr0058);
      }
      
      private function _DepartmentTaskItemRenderer_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_optionsPopup";
            if(_loc2_ || _loc3_)
            {
               _loc1_.verticalCenter = 0;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.horizontalCenter = 0;
                  if(!_loc3_)
                  {
                     _loc1_.dynaBmpSourceName = "options_bg_off";
                     if(!_loc3_)
                     {
                        _loc1_.id = "checkMarkBackgroundImage";
                        if(_loc2_)
                        {
                           addr006e:
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 addr0088:
                                 _loc1_.document = this;
                                 if(_loc2_ || Boolean(_loc1_))
                                 {
                                    addr0099:
                                    this.checkMarkBackgroundImage = _loc1_;
                                    if(!_loc3_)
                                    {
                                       addr00a3:
                                       BindingManager.executeBindings(this,"checkMarkBackgroundImage",this.checkMarkBackgroundImage);
                                    }
                                    §§goto(addr00b0);
                                 }
                                 §§goto(addr00a3);
                              }
                              addr00b0:
                              return _loc1_;
                           }
                        }
                        §§goto(addr0099);
                     }
                     §§goto(addr006e);
                  }
                  §§goto(addr0088);
               }
            }
            §§goto(addr006e);
         }
         §§goto(addr00a3);
      }
      
      private function _DepartmentTaskItemRenderer_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "checkmark_gray";
               if(_loc2_ || _loc2_)
               {
                  _loc1_.verticalCenter = 0;
                  if(_loc2_)
                  {
                     addr005d:
                     _loc1_.horizontalCenter = 0;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        _loc1_.id = "checkMarkImage";
                        if(_loc2_)
                        {
                           addr007a:
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 _loc1_.document = this;
                                 if(!(_loc3_ && Boolean(_loc1_)))
                                 {
                                    addr00a2:
                                    this.checkMarkImage = _loc1_;
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       addr00b4:
                                       BindingManager.executeBindings(this,"checkMarkImage",this.checkMarkImage);
                                    }
                                    §§goto(addr00c1);
                                 }
                                 §§goto(addr00b4);
                              }
                              §§goto(addr00c1);
                           }
                           §§goto(addr00a2);
                        }
                        §§goto(addr00b4);
                     }
                     §§goto(addr007a);
                  }
                  §§goto(addr00a2);
               }
               addr00c1:
               return _loc1_;
            }
         }
         §§goto(addr005d);
      }
      
      private function _DepartmentTaskItemRenderer_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "quest_taskline";
               if(_loc3_)
               {
                  _loc1_.width = 450;
                  if(_loc3_)
                  {
                     _loc1_.bottom = 3;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        _loc1_.id = "separator";
                        if(_loc3_ || Boolean(this))
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr008c:
                                 _loc1_.document = this;
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    addr009d:
                                    this.separator = _loc1_;
                                    if(_loc3_)
                                    {
                                       addr00a7:
                                       BindingManager.executeBindings(this,"separator",this.separator);
                                    }
                                    §§goto(addr00b4);
                                 }
                                 §§goto(addr00a7);
                              }
                              §§goto(addr00b4);
                           }
                           §§goto(addr009d);
                        }
                        §§goto(addr00b4);
                     }
                     §§goto(addr00a7);
                  }
                  §§goto(addr00b4);
               }
               §§goto(addr00a7);
            }
            addr00b4:
            return _loc1_;
         }
         §§goto(addr008c);
      }
      
      public function ___DepartmentTaskItemRenderer_SeparatorItemRenderer1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this.handleCreationComplete(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get baseImage() : BriskImageDynaLib
      {
         return this._1836954358baseImage;
      }
      
      public function set baseImage(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1836954358baseImage;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._1836954358baseImage = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"baseImage",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr006e);
            }
            addr007d:
            return;
         }
         §§goto(addr006e);
      }
      
      [Bindable(event="propertyChange")]
      public function get checkMarkBackgroundImage() : BriskImageDynaLib
      {
         return this._133200872checkMarkBackgroundImage;
      }
      
      public function set checkMarkBackgroundImage(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._133200872checkMarkBackgroundImage;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._133200872checkMarkBackgroundImage = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     addr0059:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0068:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"checkMarkBackgroundImage",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0077);
               }
               §§goto(addr0068);
            }
            addr0077:
            return;
         }
         §§goto(addr0059);
      }
      
      [Bindable(event="propertyChange")]
      public function get checkMarkImage() : BriskImageDynaLib
      {
         return this._880103014checkMarkImage;
      }
      
      public function set checkMarkImage(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._880103014checkMarkImage;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  addr004c:
                  this._880103014checkMarkImage = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"checkMarkImage",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr004c);
      }
      
      [Bindable(event="propertyChange")]
      public function get departmentImage() : BriskImageDynaLib
      {
         return this._453556521departmentImage;
      }
      
      public function set departmentImage(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._453556521departmentImage;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._453556521departmentImage = param1;
                  if(_loc4_)
                  {
                     §§goto(addr0061);
                  }
                  §§goto(addr0070);
               }
               addr0061:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr0070:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"departmentImage",_loc2_,param1));
                  }
               }
               §§goto(addr007f);
            }
         }
         addr007f:
      }
      
      [Bindable(event="propertyChange")]
      public function get separator() : BriskImageDynaLib
      {
         return this._1732829925separator;
      }
      
      public function set separator(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1732829925separator;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1732829925separator = param1;
                  addr003f:
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"separator",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr003f);
      }
      
      [Bindable(event="propertyChange")]
      public function get statusLabel() : LocaLabel
      {
         return this._909318622statusLabel;
      }
      
      public function set statusLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._909318622statusLabel;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._909318622statusLabel = param1;
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"statusLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr007e);
                  }
               }
               §§goto(addr006f);
            }
            addr007e:
            return;
         }
         §§goto(addr006f);
      }
   }
}

