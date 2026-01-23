package net.bigpoint.cityrama.view.departmentBook.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.cityrama.view.departmentBook.ui.components.DepartmentSecurityBarComponent;
   import net.bigpoint.cityrama.view.departmentBook.ui.components.SecurityBarPartComponent;
   import net.bigpoint.cityrama.view.departmentBook.ui.components.SecurityGradeComponent;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.skins.SparkSkin;
   
   public class DepartmentSecurityBarSkin extends SparkSkin implements IStateClient2
   {
      
      private var _453556521departmentImage:BriskImageDynaLib;
      
      private var _1184053038labelDisplay:LocaLabel;
      
      private var _1724029514partComponent:SecurityBarPartComponent;
      
      private var _1043845478securityGrade1:SecurityGradeComponent;
      
      private var _1043845477securityGrade2:SecurityGradeComponent;
      
      private var _1043845476securityGrade3:SecurityGradeComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:DepartmentSecurityBarComponent;
      
      public function DepartmentSecurityBarSkin()
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
                  this.mxmlContent = [this._DepartmentSecurityBarSkin_StickyNoteComponent1_c(),this._DepartmentSecurityBarSkin_Group1_c(),this._DepartmentSecurityBarSkin_Group3_c(),this._DepartmentSecurityBarSkin_Group4_c()];
                  addr0030:
                  if(!_loc1_)
                  {
                     this.currentState = "normal";
                     if(_loc2_ || _loc2_)
                     {
                        addr007a:
                        states = [new State({
                           "name":"normal",
                           "overrides":[]
                        }),new State({
                           "name":"disabled",
                           "overrides":[]
                        })];
                     }
                     §§goto(addr00a2);
                  }
                  §§goto(addr007a);
               }
               addr00a2:
               return;
            }
         }
         §§goto(addr0030);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            super.moduleFactory = param1;
            if(_loc3_ || _loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     return;
                  }
               }
               else
               {
                  addr0066:
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         §§goto(addr0066);
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super.initialize();
         }
      }
      
      private function _DepartmentSecurityBarSkin_StickyNoteComponent1_c() : StickyNoteComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.tapeRight = true;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.tapeLeft = true;
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.styleName = "blue";
                  if(_loc2_)
                  {
                     addr0061:
                     _loc1_.width = 526;
                     if(_loc2_ || _loc3_)
                     {
                        addr0074:
                        _loc1_.height = 80;
                        if(!_loc3_)
                        {
                           _loc1_.bottom = -6;
                           addr007e:
                           if(_loc2_)
                           {
                              §§goto(addr0094);
                           }
                           §§goto(addr00b2);
                        }
                        §§goto(addr009e);
                     }
                     §§goto(addr007e);
                  }
               }
               addr0094:
               _loc1_.right = 0;
               if(_loc2_)
               {
                  addr009e:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr00b2:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr0074);
         }
         §§goto(addr0061);
      }
      
      private function _DepartmentSecurityBarSkin_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.right = 34;
            if(_loc3_)
            {
               _loc1_.left = 10;
               if(!_loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(_loc3_)
                  {
                     _loc1_.percentHeight = 100;
                     if(!_loc2_)
                     {
                        §§goto(addr0062);
                     }
                     §§goto(addr0072);
                  }
                  §§goto(addr007e);
               }
               addr0062:
               _loc1_.mxmlContent = [this._DepartmentSecurityBarSkin_Group2_c()];
               if(!_loc2_)
               {
                  addr0072:
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr007e:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr007e);
      }
      
      private function _DepartmentSecurityBarSkin_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.bottom = 4;
            if(_loc3_ || _loc3_)
            {
               _loc1_.percentWidth = 100;
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._DepartmentSecurityBarSkin_HGroup1_c(),this._DepartmentSecurityBarSkin_LocaLabel1_i(),this._DepartmentSecurityBarSkin_HGroup2_c()];
                  addr004b:
                  if(!(_loc2_ && _loc3_))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           addr0090:
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr004b);
         }
         §§goto(addr0090);
      }
      
      private function _DepartmentSecurityBarSkin_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.gap = 0;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.left = 10;
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc3_)
                  {
                     _loc1_.verticalAlign = "middle";
                     if(!_loc3_)
                     {
                        _loc1_.mxmlContent = [this._DepartmentSecurityBarSkin_BriskImageDynaLib1_c(),this._DepartmentSecurityBarSkin_BriskImageDynaLib2_c(),this._DepartmentSecurityBarSkin_BriskImageDynaLib3_c()];
                        addr006e:
                        if(!(_loc3_ && _loc3_))
                        {
                           addr009d:
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 addr00a9:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr00ad);
                     }
                     §§goto(addr00a9);
                  }
                  §§goto(addr009d);
               }
               §§goto(addr00ad);
            }
            §§goto(addr006e);
         }
         addr00ad:
         return _loc1_;
      }
      
      private function _DepartmentSecurityBarSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "bluemarker_small_left";
               if(_loc2_ || Boolean(this))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr0069:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr006d);
               }
               §§goto(addr0069);
            }
            addr006d:
            return _loc1_;
         }
         §§goto(addr0069);
      }
      
      private function _DepartmentSecurityBarSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "bluemarker_small_middle";
               if(_loc2_ || _loc2_)
               {
                  addr005e:
                  _loc1_.percentWidth = 100;
                  if(_loc2_ || _loc2_)
                  {
                     addr0070:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr005e);
         }
         §§goto(addr0070);
      }
      
      private function _DepartmentSecurityBarSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.dynaBmpSourceName = "bluemarker_small_right";
               if(_loc3_ || _loc2_)
               {
                  §§goto(addr0068);
               }
               §§goto(addr007c);
            }
         }
         addr0068:
         if(!_loc1_.document)
         {
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               addr007c:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _DepartmentSecurityBarSkin_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.verticalCenter = 0;
               if(!_loc3_)
               {
                  _loc1_.left = 16;
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.styleName = "departmentSecurityLabel";
                     if(_loc2_ || _loc2_)
                     {
                        addr006d:
                        _loc1_.maxDisplayedLines = 1;
                        if(_loc2_ || _loc2_)
                        {
                           _loc1_.id = "labelDisplay";
                           if(!_loc3_)
                           {
                              addr008b:
                              if(!_loc1_.document)
                              {
                                 if(!_loc3_)
                                 {
                                    _loc1_.document = this;
                                    if(_loc2_ || Boolean(_loc1_))
                                    {
                                       §§goto(addr00b5);
                                    }
                                 }
                                 §§goto(addr00bf);
                              }
                           }
                           addr00b5:
                           this.labelDisplay = _loc1_;
                           if(_loc2_)
                           {
                              addr00bf:
                              BindingManager.executeBindings(this,"labelDisplay",this.labelDisplay);
                           }
                           §§goto(addr00cc);
                        }
                     }
                     addr00cc:
                     return _loc1_;
                  }
                  §§goto(addr006d);
               }
               §§goto(addr008b);
            }
            §§goto(addr00bf);
         }
         §§goto(addr006d);
      }
      
      private function _DepartmentSecurityBarSkin_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc3_)
         {
            _loc1_.right = 0;
            if(_loc3_)
            {
               _loc1_.gap = 0;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.mxmlContent = [this._DepartmentSecurityBarSkin_SecurityGradeComponent1_i(),this._DepartmentSecurityBarSkin_SecurityGradeComponent2_i(),this._DepartmentSecurityBarSkin_SecurityGradeComponent3_i()];
                  if(_loc3_)
                  {
                     addr0078:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           addr008c:
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr0078);
         }
         §§goto(addr008c);
      }
      
      private function _DepartmentSecurityBarSkin_SecurityGradeComponent1_i() : SecurityGradeComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SecurityGradeComponent = new SecurityGradeComponent();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.styleName = "departmentSecurity";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.id = "securityGrade1";
               if(_loc3_ || Boolean(this))
               {
                  addr005e:
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        §§goto(addr007d);
                     }
                  }
                  §§goto(addr008e);
               }
               §§goto(addr0098);
            }
            addr007d:
            _loc1_.document = this;
            if(_loc3_ || Boolean(_loc1_))
            {
               addr008e:
               this.securityGrade1 = _loc1_;
               if(!_loc2_)
               {
                  addr0098:
                  BindingManager.executeBindings(this,"securityGrade1",this.securityGrade1);
               }
            }
            return _loc1_;
         }
         §§goto(addr005e);
      }
      
      private function _DepartmentSecurityBarSkin_SecurityGradeComponent2_i() : SecurityGradeComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SecurityGradeComponent = new SecurityGradeComponent();
         if(!_loc3_)
         {
            _loc1_.styleName = "departmentSecurity";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.id = "securityGrade2";
               if(_loc2_)
               {
                  addr004e:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        _loc1_.document = this;
                        if(_loc2_ || _loc3_)
                        {
                           addr0078:
                           this.securityGrade2 = _loc1_;
                           if(_loc2_ || Boolean(this))
                           {
                              BindingManager.executeBindings(this,"securityGrade2",this.securityGrade2);
                           }
                        }
                        §§goto(addr0097);
                     }
                  }
                  §§goto(addr0078);
               }
               addr0097:
               return _loc1_;
            }
         }
         §§goto(addr004e);
      }
      
      private function _DepartmentSecurityBarSkin_SecurityGradeComponent3_i() : SecurityGradeComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SecurityGradeComponent = new SecurityGradeComponent();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.styleName = "departmentSecurity";
            if(!_loc3_)
            {
               _loc1_.id = "securityGrade3";
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc3_)
                     {
                        addr0069:
                        _loc1_.document = this;
                        if(_loc2_)
                        {
                           §§goto(addr0072);
                        }
                     }
                     §§goto(addr0084);
                  }
               }
            }
            addr0072:
            this.securityGrade3 = _loc1_;
            if(_loc2_ || Boolean(this))
            {
               addr0084:
               BindingManager.executeBindings(this,"securityGrade3",this.securityGrade3);
            }
            return _loc1_;
         }
         §§goto(addr0069);
      }
      
      private function _DepartmentSecurityBarSkin_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.percentHeight = 100;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.left = 10;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.mxmlContent = [this._DepartmentSecurityBarSkin_BriskImageDynaLib4_c(),this._DepartmentSecurityBarSkin_BriskImageDynaLib5_i()];
                  if(!_loc2_)
                  {
                     addr0077:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0083:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0077);
            }
            §§goto(addr0083);
         }
         §§goto(addr0077);
      }
      
      private function _DepartmentSecurityBarSkin_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.dynaBmpSourceName = "batchbase_green";
               if(_loc2_ || Boolean(this))
               {
                  addr0065:
                  _loc1_.horizontalCenter = 0;
                  if(!_loc3_)
                  {
                     _loc1_.top = 15;
                     if(!_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr0085:
                              _loc1_.document = this;
                           }
                        }
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr0085);
            }
            §§goto(addr0065);
         }
         §§goto(addr0085);
      }
      
      private function _DepartmentSecurityBarSkin_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "small_badges";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.dynaSWFFileName = "gui_ui_emergencyDepartmentsIcons";
               if(!_loc2_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.top = 2;
                     if(!_loc2_)
                     {
                        _loc1_.id = "departmentImage";
                        if(!_loc2_)
                        {
                           addr0084:
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr0090:
                                 _loc1_.document = this;
                                 if(_loc3_)
                                 {
                                    addr0099:
                                    this.departmentImage = _loc1_;
                                    if(_loc3_)
                                    {
                                       addr00a3:
                                       BindingManager.executeBindings(this,"departmentImage",this.departmentImage);
                                    }
                                    §§goto(addr00b0);
                                 }
                                 §§goto(addr00a3);
                              }
                              §§goto(addr00b0);
                           }
                           §§goto(addr0099);
                        }
                        §§goto(addr0090);
                     }
                     addr00b0:
                     return _loc1_;
                  }
                  §§goto(addr0084);
               }
               §§goto(addr00a3);
            }
            §§goto(addr0090);
         }
         §§goto(addr0099);
      }
      
      private function _DepartmentSecurityBarSkin_Group4_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.top = 12;
            if(_loc3_)
            {
               §§goto(addr0036);
            }
            §§goto(addr0058);
         }
         addr0036:
         _loc1_.left = 70;
         if(_loc3_)
         {
            _loc1_.right = 30;
            if(!_loc2_)
            {
               addr0058:
               _loc1_.mxmlContent = [this._DepartmentSecurityBarSkin_SecurityBarPartComponent1_i()];
               if(!(_loc2_ && _loc3_))
               {
                  §§goto(addr0070);
               }
               §§goto(addr007c);
            }
            addr0070:
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  addr007c:
                  _loc1_.document = this;
               }
            }
            §§goto(addr0080);
         }
         addr0080:
         return _loc1_;
      }
      
      private function _DepartmentSecurityBarSkin_SecurityBarPartComponent1_i() : SecurityBarPartComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SecurityBarPartComponent = new SecurityBarPartComponent();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.id = "partComponent";
               if(_loc2_ || Boolean(_loc1_))
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.document = this;
                        if(_loc2_)
                        {
                           addr007f:
                           this.partComponent = _loc1_;
                           if(_loc2_ || _loc3_)
                           {
                              addr0091:
                              BindingManager.executeBindings(this,"partComponent",this.partComponent);
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr0091);
                  }
               }
               §§goto(addr007f);
            }
         }
         §§goto(addr0091);
      }
      
      [Bindable(event="propertyChange")]
      public function get departmentImage() : BriskImageDynaLib
      {
         return this._453556521departmentImage;
      }
      
      public function set departmentImage(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._453556521departmentImage;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._453556521departmentImage = param1;
                  if(!_loc4_)
                  {
                     addr0043:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0052:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"departmentImage",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0061);
               }
               §§goto(addr0052);
            }
            addr0061:
            return;
         }
         §§goto(addr0043);
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
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._1184053038labelDisplay = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labelDisplay",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get partComponent() : SecurityBarPartComponent
      {
         return this._1724029514partComponent;
      }
      
      public function set partComponent(param1:SecurityBarPartComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1724029514partComponent;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1724029514partComponent = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"partComponent",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0066);
      }
      
      [Bindable(event="propertyChange")]
      public function get securityGrade1() : SecurityGradeComponent
      {
         return this._1043845478securityGrade1;
      }
      
      public function set securityGrade1(param1:SecurityGradeComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1043845478securityGrade1;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1043845478securityGrade1 = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr005c:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0073:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"securityGrade1",_loc2_,param1));
                        }
                     }
                     §§goto(addr0082);
                  }
               }
               §§goto(addr0073);
            }
            addr0082:
            return;
         }
         §§goto(addr005c);
      }
      
      [Bindable(event="propertyChange")]
      public function get securityGrade2() : SecurityGradeComponent
      {
         return this._1043845477securityGrade2;
      }
      
      public function set securityGrade2(param1:SecurityGradeComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1043845477securityGrade2;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._1043845477securityGrade2 = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"securityGrade2",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get securityGrade3() : SecurityGradeComponent
      {
         return this._1043845476securityGrade3;
      }
      
      public function set securityGrade3(param1:SecurityGradeComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1043845476securityGrade3;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._1043845476securityGrade3 = param1;
                  if(!_loc3_)
                  {
                     addr0060:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"securityGrade3",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0087);
               }
               §§goto(addr0060);
            }
         }
         addr0087:
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : DepartmentSecurityBarComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:DepartmentSecurityBarComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._213507019hostComponent = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     addr0065:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0083);
                  }
                  §§goto(addr0074);
               }
            }
            addr0083:
            return;
         }
         §§goto(addr0065);
      }
   }
}

