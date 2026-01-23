package net.bigpoint.cityrama.view.architectBook.ui.components
{
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import mx.binding.*;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.architecturalBook.vo.BlueprintSecuritygradeVO;
   import net.bigpoint.cityrama.model.infrastructure.vo.SecurityStatusVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.departmentBook.ui.components.SecurityGradeComponent;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.VGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class ArchitectSecuritygradeRenderer extends ItemRenderer implements IStateClient2
   {
      
      private var _453556521departmentImage:BriskImageDynaLib;
      
      private var _1043845478securityGrade1:SecurityGradeComponent;
      
      private var _1043845477securityGrade2:SecurityGradeComponent;
      
      private var _1043845476securityGrade3:SecurityGradeComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private const MAX_VALID_GRADES:int = 3;
      
      private var _data:BlueprintSecuritygradeVO;
      
      private var _dataIsDirty:Boolean;
      
      public function ArchitectSecuritygradeRenderer()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super();
            if(!(_loc1_ && _loc1_))
            {
               mx_internal::_document = this;
               if(_loc2_ || Boolean(this))
               {
                  addr0048:
                  this.autoDrawBackground = false;
                  if(_loc2_ || Boolean(this))
                  {
                     addr0064:
                     this.minWidth = 110;
                     if(_loc2_ || Boolean(this))
                     {
                        addr0077:
                        this.mxmlContent = [this._ArchitectSecuritygradeRenderer_VGroup1_c()];
                        if(_loc2_ || Boolean(this))
                        {
                           this.currentState = "normal";
                           if(!(_loc1_ && _loc2_))
                           {
                              states = [new State({
                                 "name":"normal",
                                 "overrides":[]
                              }),new State({
                                 "name":"hovered",
                                 "overrides":[]
                              }),new State({
                                 "name":"selected",
                                 "overrides":[]
                              })];
                              addr00a3:
                           }
                           return;
                        }
                     }
                     §§goto(addr00a3);
                  }
                  §§goto(addr0077);
               }
               §§goto(addr0064);
            }
         }
         §§goto(addr0048);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
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
                  addr0068:
                  this.__moduleFactoryInitialized = true;
               }
               §§goto(addr006e);
            }
            §§goto(addr0068);
         }
         addr006e:
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
      
      override public function set data(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.data = param1;
            if(_loc2_)
            {
               if(!RandomUtilities.isEqual(param1,this._data))
               {
                  if(_loc2_)
                  {
                     this._data = param1 as BlueprintSecuritygradeVO;
                     addr0041:
                     if(_loc2_ || Boolean(this))
                     {
                        this._dataIsDirty = true;
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr0074:
                           invalidateProperties();
                        }
                        §§goto(addr0079);
                     }
                     §§goto(addr0074);
                  }
               }
               §§goto(addr0079);
            }
            §§goto(addr0041);
         }
         addr0079:
      }
      
      private function getGradeComponentByLevel(param1:int) : SecurityGradeComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §§push(this);
            §§push("securityGrade");
            if(!(_loc3_ && Boolean(param1)))
            {
               §§push(§§pop() + param1);
            }
            if(§§pop().hasOwnProperty(§§pop()))
            {
               if(_loc2_ || _loc2_)
               {
                  §§push(this);
                  §§push("securityGrade");
                  if(_loc2_ || _loc2_)
                  {
                     §§push(§§pop() + param1);
                  }
                  return §§pop()[§§pop()] as SecurityGradeComponent;
               }
            }
         }
         return null;
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc1_:int = 0;
         var _loc2_:SecurityGradeComponent = null;
         var _loc3_:SecurityStatusVo = null;
         if(_loc6_)
         {
            super.commitProperties();
            if(!_loc5_)
            {
               if(this._dataIsDirty)
               {
                  if(!_loc5_)
                  {
                     this._dataIsDirty = false;
                     if(!_loc5_)
                     {
                        this.securityGrade1.visible = this.securityGrade1.includeInLayout = false;
                        if(!_loc5_)
                        {
                           this.securityGrade2.visible = this.securityGrade2.includeInLayout = false;
                           if(!(_loc5_ && Boolean(_loc1_)))
                           {
                              addr0088:
                              this.securityGrade3.visible = this.securityGrade3.includeInLayout = false;
                              if(!_loc5_)
                              {
                                 addr00a2:
                                 §§push(this.departmentImage);
                                 if(!(_loc5_ && Boolean(_loc2_)))
                                 {
                                    §§push(this._data);
                                    if(_loc6_ || Boolean(_loc3_))
                                    {
                                       §§push(§§pop().departmentVisualLibName);
                                       if(!(_loc5_ && Boolean(this)))
                                       {
                                          §§pop().dynaLibName = §§pop();
                                          if(_loc6_)
                                          {
                                             addr00ec:
                                             §§push(this.departmentImage);
                                             if(_loc6_)
                                             {
                                                §§push(this._data);
                                                if(_loc6_)
                                                {
                                                   addr0100:
                                                   §§push(§§pop().departmentVisualSWFName);
                                                   if(_loc6_ || Boolean(this))
                                                   {
                                                      §§pop().dynaSWFFileName = §§pop();
                                                      if(_loc6_ || Boolean(_loc3_))
                                                      {
                                                         addr012d:
                                                         this.departmentImage.dynaBmpSourceName = this._data.departmentVisualSourceName;
                                                         addr012a:
                                                         addr0126:
                                                         addr0122:
                                                         if(!(_loc5_ && Boolean(_loc1_)))
                                                         {
                                                            addr013d:
                                                            _loc1_ = 0;
                                                         }
                                                      }
                                                      while(_loc1_ < this._data.gradeVoList.length)
                                                      {
                                                         _loc3_ = this._data.gradeVoList[_loc1_];
                                                         _loc2_ = this.getGradeComponentByLevel(_loc3_.level);
                                                         if(_loc6_)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  addr0174:
                                                                  _loc2_.visible = _loc2_.includeInLayout = true;
                                                                  if(!(_loc5_ && Boolean(_loc2_)))
                                                                  {
                                                                     _loc2_.data = _loc3_;
                                                                     if(!(_loc6_ || Boolean(_loc3_)))
                                                                     {
                                                                        continue;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            _loc1_++;
                                                            continue;
                                                         }
                                                         §§goto(addr0174);
                                                      }
                                                      addr01bf:
                                                      return;
                                                      addr01b1:
                                                   }
                                                   §§goto(addr012d);
                                                }
                                                §§goto(addr012a);
                                             }
                                             §§goto(addr0126);
                                          }
                                          §§goto(addr0122);
                                       }
                                       §§goto(addr012d);
                                    }
                                    §§goto(addr0100);
                                 }
                                 §§goto(addr0126);
                              }
                              §§goto(addr01b1);
                           }
                           §§goto(addr013d);
                        }
                     }
                     §§goto(addr00ec);
                  }
                  §§goto(addr00a2);
               }
               §§goto(addr01bf);
            }
            §§goto(addr013d);
         }
         §§goto(addr0088);
      }
      
      private function _ArchitectSecuritygradeRenderer_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.height = 130;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.top = 0;
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.gap = 4;
                     if(_loc2_)
                     {
                        _loc1_.horizontalAlign = "center";
                        if(!_loc3_)
                        {
                           _loc1_.mxmlContent = [this._ArchitectSecuritygradeRenderer_BriskImageDynaLib1_i(),this._ArchitectSecuritygradeRenderer_Group1_c(),this._ArchitectSecuritygradeRenderer_SecurityGradeComponent1_i(),this._ArchitectSecuritygradeRenderer_SecurityGradeComponent2_i(),this._ArchitectSecuritygradeRenderer_SecurityGradeComponent3_i(),this._ArchitectSecuritygradeRenderer_Group2_c()];
                           addr007a:
                           if(!_loc3_)
                           {
                              §§goto(addr00b6);
                           }
                           §§goto(addr00c2);
                        }
                        addr00b6:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr00c2:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr00c6);
                     }
                     §§goto(addr007a);
                  }
                  §§goto(addr00c2);
               }
               addr00c6:
               return _loc1_;
            }
         }
         §§goto(addr00c2);
      }
      
      private function _ArchitectSecuritygradeRenderer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.verticalCenter = 0;
            if(_loc2_ || _loc3_)
            {
               _loc1_.dynaLibName = "small_badges";
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.dynaSWFFileName = "gui_ui_emergencyDepartmentsIcons";
                  if(_loc2_ || _loc3_)
                  {
                     addr0063:
                     _loc1_.id = "departmentImage";
                     if(!(_loc3_ && _loc3_))
                     {
                        addr0076:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 addr009f:
                                 this.departmentImage = _loc1_;
                                 if(!(_loc3_ && Boolean(_loc1_)))
                                 {
                                    BindingManager.executeBindings(this,"departmentImage",this.departmentImage);
                                 }
                              }
                              return _loc1_;
                           }
                        }
                     }
                  }
                  §§goto(addr009f);
               }
               §§goto(addr0076);
            }
            §§goto(addr009f);
         }
         §§goto(addr0063);
      }
      
      private function _ArchitectSecuritygradeRenderer_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.percentHeight = 100;
            if(_loc2_)
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
      
      private function _ArchitectSecuritygradeRenderer_SecurityGradeComponent1_i() : SecurityGradeComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SecurityGradeComponent = new SecurityGradeComponent();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.styleName = "departmentArchitectSecurity";
               if(_loc3_ || _loc3_)
               {
                  _loc1_.includeInLayout = false;
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.visible = false;
                     if(!_loc2_)
                     {
                        _loc1_.id = "securityGrade1";
                        if(!_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr0091:
                                 _loc1_.document = this;
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    §§goto(addr00a2);
                                 }
                                 §§goto(addr00ac);
                              }
                           }
                           addr00a2:
                           this.securityGrade1 = _loc1_;
                           if(_loc3_)
                           {
                              addr00ac:
                              BindingManager.executeBindings(this,"securityGrade1",this.securityGrade1);
                           }
                           §§goto(addr00b9);
                        }
                        §§goto(addr0091);
                     }
                     §§goto(addr00ac);
                  }
                  §§goto(addr0091);
               }
               §§goto(addr00ac);
            }
            §§goto(addr0091);
         }
         addr00b9:
         return _loc1_;
      }
      
      private function _ArchitectSecuritygradeRenderer_SecurityGradeComponent2_i() : SecurityGradeComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SecurityGradeComponent = new SecurityGradeComponent();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.styleName = "departmentArchitectSecurity";
               if(_loc3_ || _loc3_)
               {
                  _loc1_.includeInLayout = false;
                  if(_loc3_)
                  {
                     _loc1_.visible = false;
                     if(_loc3_)
                     {
                        _loc1_.id = "securityGrade2";
                        if(!(_loc2_ && _loc2_))
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr0092:
                                 _loc1_.document = this;
                                 if(!_loc2_)
                                 {
                                    addr009b:
                                    this.securityGrade2 = _loc1_;
                                    if(_loc3_)
                                    {
                                       addr00a5:
                                       BindingManager.executeBindings(this,"securityGrade2",this.securityGrade2);
                                    }
                                 }
                                 §§goto(addr00b2);
                              }
                           }
                        }
                        §§goto(addr009b);
                     }
                     §§goto(addr00b2);
                  }
                  §§goto(addr00a5);
               }
               addr00b2:
               return _loc1_;
            }
         }
         §§goto(addr0092);
      }
      
      private function _ArchitectSecuritygradeRenderer_SecurityGradeComponent3_i() : SecurityGradeComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SecurityGradeComponent = new SecurityGradeComponent();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.styleName = "departmentArchitectSecurity";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr004a:
                  _loc1_.includeInLayout = false;
                  if(_loc2_)
                  {
                     _loc1_.visible = false;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.id = "securityGrade3";
                        if(_loc2_)
                        {
                           addr007c:
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || _loc2_)
                              {
                                 _loc1_.document = this;
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    addr00ae:
                                    this.securityGrade3 = _loc1_;
                                    if(!_loc3_)
                                    {
                                       addr00b8:
                                       BindingManager.executeBindings(this,"securityGrade3",this.securityGrade3);
                                    }
                                 }
                                 §§goto(addr00c5);
                              }
                           }
                           §§goto(addr00ae);
                        }
                        §§goto(addr00b8);
                     }
                     §§goto(addr00ae);
                  }
                  §§goto(addr00b8);
               }
               §§goto(addr007c);
            }
            §§goto(addr004a);
         }
         addr00c5:
         return _loc1_;
      }
      
      private function _ArchitectSecuritygradeRenderer_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.percentHeight = 100;
            if(_loc3_ || Boolean(this))
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
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._453556521departmentImage = param1;
                  addr0047:
                  if(_loc4_ || Boolean(this))
                  {
                     addr0065:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"departmentImage",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0083);
               }
               §§goto(addr0065);
            }
            addr0083:
            return;
         }
         §§goto(addr0047);
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
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._1043845478securityGrade1 = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr0058);
                  }
                  §§goto(addr0067);
               }
               addr0058:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr0067:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"securityGrade1",_loc2_,param1));
                  }
               }
               §§goto(addr0076);
            }
         }
         addr0076:
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
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1043845477securityGrade2 = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"securityGrade2",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr006e);
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._1043845476securityGrade3 = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"securityGrade3",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
   }
}

