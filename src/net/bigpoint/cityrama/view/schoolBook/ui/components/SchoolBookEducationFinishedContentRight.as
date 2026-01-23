package net.bigpoint.cityrama.view.schoolBook.ui.components
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
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.constants.ServerProfessionalConstants;
   import net.bigpoint.cityrama.model.departmentBook.vo.DepartmentThresholdBarVo;
   import net.bigpoint.cityrama.model.schoolBook.vo.SchoolBookDepartmentVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigProfessionalAttributeThresholdDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalAttributeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalDTO;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.common.components.HeaderComponentSmall;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.departmentBook.ui.components.SecurityBarPartComponent;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.InfrastructureBuildingFieldObject;
   import net.bigpoint.cityrama.view.schoolBook.ui.events.SchoolBookEvent;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Button;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class SchoolBookEducationFinishedContentRight extends Group
   {
      
      private var _1474880769assignButton:MultistateButton;
      
      private var _2075077202barContainer:Group;
      
      private var _319890477buildingContainer:Group;
      
      private var _400476409buildingImage:BriskImageDynaLib;
      
      private var _1352707381buildingStatusImage:BriskImageDynaLib;
      
      private var _453556521departmentImage:BriskImageDynaLib;
      
      private var _1112078072fireButton:MultistateButton;
      
      private var _1846981337informationHeader:HeaderComponentSmall;
      
      private var _1724029514partComponent:SecurityBarPartComponent;
      
      private var _75450170scrollLeftButton:DynamicImageButton;
      
      private var _1993162593scrollRightButton:DynamicImageButton;
      
      private var _1423635287toMarketButton:MultistateButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:SchoolBookDepartmentVo;
      
      private var _infrastructureBuildings:Vector.<InfrastructureBuildingFieldObject>;
      
      private var _departmentThresholdBarVo:Vector.<DepartmentThresholdBarVo>;
      
      private var _dataIsDirty:Boolean;
      
      private var _index:int = 0;
      
      private var _studentData:ProfessionalDTO;
      
      private var _totalPerceptionPointsInBuilding:int;
      
      private var _rangeCurrent:Number;
      
      private var _rangePossible:Number;
      
      public function SchoolBookEducationFinishedContentRight()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(_loc2_)
            {
               addr0028:
               mx_internal::_document = this;
               if(!(_loc1_ && _loc1_))
               {
                  this.mxmlContent = [this._SchoolBookEducationFinishedContentRight_Group2_c()];
               }
            }
            return;
         }
         §§goto(addr0028);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            super.moduleFactory = param1;
            if(_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_)
                  {
                     return;
                  }
               }
               else
               {
                  addr0046:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
         }
         §§goto(addr0046);
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super.initialize();
         }
      }
      
      private function hireProfessional() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            dispatchEvent(new SchoolBookEvent(SchoolBookEvent.HIRE_PROFESSIONAL_TO_DEPARTMENT,true));
         }
      }
      
      public function set data(param1:SchoolBookDepartmentVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §§push(param1 == null);
            if(_loc3_ || _loc2_)
            {
               §§push(!§§pop());
               if(_loc3_ || _loc3_)
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  if(_temp_4)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        §§pop();
                        if(_loc3_)
                        {
                           addr0066:
                           §§push(RandomUtilities.isEqual(param1,this._data));
                           if(_loc3_ || Boolean(param1))
                           {
                              addr0065:
                              §§push(!§§pop());
                           }
                           if(§§pop())
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 this._data = param1;
                                 if(!(_loc2_ && Boolean(param1)))
                                 {
                                    §§push(this._data);
                                    if(_loc3_)
                                    {
                                       if(§§pop().infrastructureBuildings)
                                       {
                                          if(_loc3_ || _loc3_)
                                          {
                                             addr00b3:
                                             this._infrastructureBuildings = this._data.infrastructureBuildings;
                                             if(_loc3_ || _loc2_)
                                             {
                                                addr00cb:
                                                addr00cf:
                                                if(this._data.departmentThresholdBarVo)
                                                {
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      this._departmentThresholdBarVo = this._data.departmentThresholdBarVo;
                                                      if(_loc3_ || Boolean(this))
                                                      {
                                                         addr0107:
                                                         this._dataIsDirty = true;
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            addr0119:
                                                            invalidateProperties();
                                                         }
                                                      }
                                                      §§goto(addr011e);
                                                   }
                                                }
                                             }
                                             §§goto(addr0107);
                                          }
                                          §§goto(addr011e);
                                       }
                                       §§goto(addr00cb);
                                    }
                                    §§goto(addr00cf);
                                 }
                              }
                              §§goto(addr0119);
                           }
                        }
                        addr011e:
                        return;
                     }
                     §§goto(addr0065);
                  }
                  §§goto(addr0066);
               }
               §§goto(addr0065);
            }
            §§goto(addr0066);
         }
         §§goto(addr00b3);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super.commitProperties();
            if(!_loc1_)
            {
               §§push(this._dataIsDirty);
               if(!(_loc1_ && Boolean(this)))
               {
                  if(§§pop())
                  {
                     if(!_loc1_)
                     {
                        addr0042:
                        this._dataIsDirty = false;
                        if(!(_loc1_ && Boolean(this)))
                        {
                           this.buildingImage.dynaLibName = "gui_popups_architect_17001_17005";
                           if(_loc2_)
                           {
                              addr0063:
                              var _temp_5:* = this._infrastructureBuildings;
                              §§push(_temp_5);
                              if(_temp_5)
                              {
                                 §§pop();
                                 if(_loc2_ || Boolean(this))
                                 {
                                    addr008c:
                                    addr007b:
                                    §§push(this._infrastructureBuildings.length);
                                    if(!(_loc1_ && _loc2_))
                                    {
                                       var _temp_8:* = §§pop();
                                       §§push(_temp_8);
                                       §§push(_temp_8);
                                       if(!_loc1_)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc1_)
                                             {
                                                §§pop();
                                                if(!(_loc1_ && Boolean(this)))
                                                {
                                                   addr00b8:
                                                   §§push(this._infrastructureBuildings[this._index]);
                                                   if(_loc2_ || Boolean(this))
                                                   {
                                                      addr00d2:
                                                      var _temp_11:* = §§pop();
                                                      addr00d3:
                                                      §§push(_temp_11);
                                                      if(_temp_11)
                                                      {
                                                         if(!(_loc1_ && _loc2_))
                                                         {
                                                            addr00e4:
                                                            §§pop();
                                                            if(!_loc1_)
                                                            {
                                                               §§goto(addr00f9);
                                                            }
                                                            §§goto(addr0102);
                                                         }
                                                      }
                                                      addr00f9:
                                                      §§goto(addr00f4);
                                                   }
                                                   §§goto(addr00e4);
                                                }
                                                addr00f4:
                                                if(Boolean(this._studentData))
                                                {
                                                   if(_loc2_)
                                                   {
                                                      addr0102:
                                                      this.showIndexData();
                                                      if(_loc2_ || Boolean(this))
                                                      {
                                                         addr0115:
                                                         this.assignTexts();
                                                         if(!_loc1_)
                                                         {
                                                            this.assignTooltips();
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr0125);
                                             }
                                             §§goto(addr00e4);
                                          }
                                          §§goto(addr00d2);
                                       }
                                       §§goto(addr00d3);
                                    }
                                    §§goto(addr00f9);
                                 }
                                 §§goto(addr0125);
                              }
                              §§goto(addr008c);
                           }
                           §§goto(addr00b8);
                        }
                        §§goto(addr0063);
                     }
                     §§goto(addr007b);
                  }
                  addr0125:
                  return;
               }
               §§goto(addr00e4);
            }
            §§goto(addr0115);
         }
         §§goto(addr0042);
      }
      
      private function showIndexData() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this.buildingImage);
            §§push("FieldItem_");
            if(!_loc1_)
            {
               §§push(§§pop() + this._infrastructureBuildings[this._index].billboardObjectVo.configPlayfieldItemVo.gfxId);
               if(!_loc1_)
               {
                  addr003b:
                  §§push(§§pop() + "_level1_big");
               }
               §§pop().dynaBmpSourceName = §§pop();
               if(!_loc1_)
               {
                  this.calculateRanges();
                  if(_loc2_)
                  {
                     this.partComponent.data = this.getThresholdData(this._rangePossible);
                     if(!_loc1_)
                     {
                        this.departmentImage.dynaBmpSourceName = this._data.departmentGfxIds[this._index];
                        if(!_loc1_)
                        {
                           this.checkNavigation();
                           addr008a:
                           if(_loc2_ || _loc2_)
                           {
                              this.assignTexts();
                              if(_loc2_)
                              {
                                 §§goto(addr00b1);
                              }
                              §§goto(addr00c4);
                           }
                           addr00b1:
                           this.assignTooltips();
                           if(!(_loc1_ && Boolean(this)))
                           {
                              addr00c4:
                              this.checkBuildingStatus();
                           }
                           §§goto(addr00ca);
                        }
                     }
                     §§goto(addr00ca);
                  }
                  §§goto(addr008a);
               }
               addr00ca:
               return;
            }
            §§goto(addr003b);
         }
         §§goto(addr00c4);
      }
      
      private function getThresholdData(param1:Number) : DepartmentThresholdBarVo
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:DepartmentThresholdBarVo = this._departmentThresholdBarVo[this._index].copy;
         if(!_loc3_)
         {
            _loc2_.previewValue = param1;
         }
         return _loc2_;
      }
      
      private function checkBuildingStatus() : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc1_:Boolean = false;
         var _loc2_:ProfessionalDTO = null;
         if(!_loc6_)
         {
            if(this._infrastructureBuildings[this._index].billboardObjectVo.buildingDTO.professionals.length >= this._infrastructureBuildings[this._index].billboardObjectVo.buildingDTO.config.maxProfessionalAmount)
            {
               if(_loc5_)
               {
                  addr0056:
                  _loc1_ = false;
                  if(!_loc6_)
                  {
                     this.assignButton.enabled = false;
                     if(!_loc6_)
                     {
                        addr006c:
                        §§push(this.buildingStatusImage);
                        if(!(_loc6_ && _loc3_))
                        {
                           §§pop().dynaBmpSourceName = "people_indicator_atttention";
                           if(!(_loc6_ && Boolean(_loc2_)))
                           {
                              addr0092:
                              §§push(this.buildingStatusImage);
                              if(!(_loc6_ && _loc3_))
                              {
                                 §§pop().visible = true;
                                 if(_loc5_)
                                 {
                                    addr00be:
                                    this.buildingStatusImage.toolTip = LocaUtils.getString("rcl.tooltips.schoolBook","rcl.tooltips.schoolBook.buildingFull");
                                    addr00ba:
                                 }
                                 var _loc3_:int = 0;
                                 for each(_loc2_ in this._infrastructureBuildings[this._index].billboardObjectVo.buildingDTO.professionals)
                                 {
                                    if(!_loc6_)
                                    {
                                       if(_loc2_.lifetime != 0)
                                       {
                                          continue;
                                       }
                                       if(_loc6_ && _loc1_)
                                       {
                                          break;
                                       }
                                    }
                                    _loc1_ = true;
                                    break;
                                 }
                                 if(!(_loc6_ && Boolean(_loc2_)))
                                 {
                                    if(_loc1_)
                                    {
                                       if(!(_loc6_ && Boolean(_loc3_)))
                                       {
                                          §§push(this.buildingStatusImage);
                                          if(!_loc6_)
                                          {
                                             §§pop().dynaBmpSourceName = "people_indicator_expire";
                                             if(_loc5_)
                                             {
                                                addr0167:
                                                this.buildingStatusImage.toolTip = LocaUtils.getString("rcl.tooltips.schoolBook","rcl.tooltips.schoolBook.buildingContractExpired");
                                                addr0163:
                                             }
                                             §§goto(addr018e);
                                          }
                                          §§goto(addr0167);
                                       }
                                       §§goto(addr0163);
                                    }
                                 }
                                 §§goto(addr018e);
                              }
                              §§goto(addr00be);
                           }
                           §§goto(addr00ba);
                        }
                        §§goto(addr00be);
                     }
                     §§goto(addr0092);
                  }
                  §§goto(addr006c);
               }
               §§goto(addr00ba);
            }
            else
            {
               this.buildingStatusImage.visible = false;
               if(_loc5_)
               {
                  this.assignButton.enabled = true;
               }
            }
            addr018e:
            return;
         }
         §§goto(addr0056);
      }
      
      private function assignTexts() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this.informationHeader);
            §§push(LocaUtils);
            §§push("rcl.playfielditems.name");
            §§push("rcl.playfielditems.name.");
            if(!_loc2_)
            {
               §§push(§§pop() + this._infrastructureBuildings[this._index].billboardObjectVo.buildingDTO.config.localeId);
               if(_loc1_)
               {
                  §§push(§§pop() + ".capital");
               }
            }
            §§pop().label = §§pop().getString(§§pop(),§§pop());
            if(_loc1_)
            {
               addr0064:
               this.assignButton.label = LocaUtils.getString("rcl.education.schoolBook","rcl.education.schoolBook.assign");
            }
            return;
         }
         §§goto(addr0064);
      }
      
      private function assignTooltips() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this.barContainer.toolTip = LocaUtils.getString("rcl.tooltips.schoolBook","rcl.tooltips.schoolBook.specialistImpact");
            if(_loc2_ || Boolean(this))
            {
               addr0035:
               §§push(this.assignButton);
               §§push(LocaUtils);
               §§push("rcl.tooltips.schoolBook");
               if(_loc2_)
               {
                  §§push("");
                  if(_loc2_ || Boolean(this))
                  {
                     addr005d:
                     §§push(§§pop() + §§pop());
                     §§push("rcl.tooltips.schoolBook.hireSpecialist");
                  }
                  §§pop().toolTip = §§pop().getString(§§pop(),§§pop());
                  if(_loc2_ || _loc1_)
                  {
                     §§goto(addr007d);
                  }
                  §§goto(addr0093);
               }
               §§goto(addr005d);
            }
            addr007d:
            this.fireButton.toolTip = LocaUtils.getString("rcl.tooltips.schoolBook","rcl.tooltips.schoolBook.fireSpecialist");
            if(!_loc1_)
            {
               addr0093:
               this.toMarketButton.toolTip = LocaUtils.getString("rcl.tooltips.schoolBook","rcl.tooltips.schoolBook.toMarket");
            }
            return;
         }
         §§goto(addr0035);
      }
      
      private function checkNavigation() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            §§push(Boolean(this._infrastructureBuildings));
            if(_loc1_)
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               if(_temp_2)
               {
                  if(_loc1_ || _loc2_)
                  {
                     §§pop();
                     if(!_loc2_)
                     {
                        addr0048:
                        if(this._infrastructureBuildings.length > 1)
                        {
                           if(_loc1_)
                           {
                              §§push(this.scrollLeftButton);
                              if(_loc1_ || _loc2_)
                              {
                                 §§push(this._index > 0);
                                 if(_loc1_)
                                 {
                                    §§pop().enabled = §§pop();
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       addr0088:
                                       §§push(this.scrollRightButton);
                                       if(_loc1_ || _loc2_)
                                       {
                                          §§push(this._index < this._infrastructureBuildings.length - 1);
                                          if(_loc1_ || _loc1_)
                                          {
                                             §§pop().enabled = §§pop();
                                             if(_loc1_ || _loc2_)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             addr00ea:
                                             §§pop().enabled = §§pop();
                                          }
                                          §§goto(addr00ed);
                                       }
                                       else
                                       {
                                          addr00e9:
                                          §§push(false);
                                       }
                                       §§goto(addr00ea);
                                    }
                                 }
                                 else
                                 {
                                    addr00d5:
                                    §§pop().enabled = §§pop();
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       §§goto(addr00e9);
                                       §§push(this.scrollRightButton);
                                    }
                                 }
                                 §§goto(addr00ed);
                              }
                              else
                              {
                                 addr00d4:
                                 §§push(false);
                              }
                              §§goto(addr00d5);
                           }
                           §§goto(addr00ed);
                        }
                        else
                        {
                           §§push(this.scrollLeftButton);
                        }
                        §§goto(addr00d4);
                     }
                     §§goto(addr0088);
                  }
               }
            }
            §§goto(addr0048);
         }
         addr00ed:
      }
      
      private function handleAssignClick() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SchoolBookEvent = null;
         if(!_loc3_)
         {
            §§push(Boolean(this._infrastructureBuildings));
            if(_loc2_)
            {
               var _temp_1:* = §§pop();
               §§push(_temp_1);
               if(_temp_1)
               {
                  if(_loc2_)
                  {
                     §§pop();
                     if(!(_loc3_ && Boolean(this)))
                     {
                        §§goto(addr005a);
                     }
                     §§goto(addr005e);
                  }
               }
            }
            addr005a:
            §§goto(addr004b);
         }
         addr004b:
         if(this._infrastructureBuildings[this._index] is InfrastructureBuildingFieldObject)
         {
            addr005e:
            _loc1_ = new SchoolBookEvent(SchoolBookEvent.HIRE_PROFESSIONAL_TO_DEPARTMENT,true);
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.bid = this._infrastructureBuildings[this._index].billboardObjectVo.buildingDTO.id;
               if(!(_loc3_ && Boolean(this)))
               {
                  addr00aa:
                  dispatchEvent(_loc1_);
               }
               §§goto(addr00b0);
            }
            §§goto(addr00aa);
         }
         addr00b0:
      }
      
      private function calculateRanges() : void
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc3_:ProfessionalAttributeDTO = null;
         var _loc4_:ProfessionalDTO = null;
         var _loc1_:Vector.<ProfessionalDTO> = this._infrastructureBuildings[this._index].billboardObjectVo.buildingDTO.professionals;
         var _loc2_:* = 0;
         var _loc5_:int = 0;
         var _loc6_:* = _loc1_;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc6_,_loc5_));
            if(!(_loc9_ || Boolean(this)))
            {
               break;
            }
            if(§§pop())
            {
               _loc4_ = §§nextvalue(_loc5_,_loc6_);
               if(_loc4_)
               {
                  if(_loc9_)
                  {
                     var _loc7_:int = 0;
                     if(_loc9_)
                     {
                        for each(_loc3_ in _loc4_.attributes)
                        {
                           if(!(_loc10_ && Boolean(this)))
                           {
                              if(_loc3_.config.attributeType == ServerProfessionalConstants.ATTRIBUTE_PERCEPTION)
                              {
                                 if(!(_loc10_ && Boolean(_loc1_)))
                                 {
                                    §§push(_loc2_);
                                    if(_loc9_)
                                    {
                                       §§push(int(§§pop() + _loc3_.attributePoints));
                                    }
                                    _loc2_ = §§pop();
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               continue;
            }
            if(!(_loc10_ && Boolean(_loc1_)))
            {
               if(!_loc10_)
               {
                  if(_loc9_ || Boolean(_loc1_))
                  {
                     _loc5_ = 0;
                     if(_loc9_ || Boolean(_loc3_))
                     {
                        _loc6_ = this._studentData.attributes;
                        while(true)
                        {
                           §§push(§§hasnext(_loc6_,_loc5_));
                           break loop0;
                        }
                        addr017a:
                        addr0173:
                     }
                     §§goto(addr017c);
                  }
                  §§goto(addr018c);
               }
               addr017c:
               if(!(_loc10_ && Boolean(_loc2_)))
               {
                  addr018c:
                  this._rangePossible = _loc2_;
               }
               return;
            }
            §§goto(addr017a);
         }
         while(§§pop())
         {
            _loc3_ = §§nextvalue(_loc5_,_loc6_);
            if(!_loc10_)
            {
               if(_loc3_.config.attributeType == ServerProfessionalConstants.ATTRIBUTE_PERCEPTION)
               {
                  if(!(_loc10_ && Boolean(this)))
                  {
                     addr0165:
                     §§push(_loc2_);
                     if(!_loc10_)
                     {
                        §§push(int(§§pop() + _loc3_.attributePoints));
                     }
                     _loc2_ = §§pop();
                  }
               }
               §§goto(addr0173);
            }
            §§goto(addr0165);
         }
         §§goto(addr017a);
      }
      
      private function get buildingRanges() : Array
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc2_:ProfessionalAttributeDTO = null;
         var _loc3_:ConfigProfessionalAttributeThresholdDTO = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this._studentData.attributes)
         {
            if(_loc8_ || Boolean(this))
            {
               if(_loc2_.config.attributeType == ServerProfessionalConstants.ATTRIBUTE_PERCEPTION)
               {
                  if(!_loc9_)
                  {
                     var _loc6_:int = 0;
                     if(_loc8_)
                     {
                        for each(_loc3_ in _loc2_.config.attributeThresholds)
                        {
                           if(_loc8_)
                           {
                              if(_loc3_.type == ServerProfessionalConstants.SECURITY_RANGE)
                              {
                                 if(!(_loc9_ && Boolean(_loc2_)))
                                 {
                                    if(!_loc1_[_loc3_.value - 1])
                                    {
                                       if(_loc9_)
                                       {
                                          continue;
                                       }
                                       _loc1_[_loc3_.value - 1] = _loc3_.threshold;
                                       if(!(_loc9_ && Boolean(_loc2_)))
                                       {
                                          continue;
                                       }
                                    }
                                    else
                                    {
                                       if(_loc1_[_loc3_.value - 1] >= _loc3_.threshold)
                                       {
                                          continue;
                                       }
                                       if(!_loc8_)
                                       {
                                          continue;
                                       }
                                    }
                                    _loc1_[_loc3_.value - 1] = _loc3_.threshold;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         return _loc1_;
      }
      
      public function set studentData(param1:ProfessionalDTO) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(!RandomUtilities.isEqual(param1,this._studentData))
            {
               if(_loc3_)
               {
                  addr0038:
                  this._studentData = param1;
                  if(_loc3_)
                  {
                     this._dataIsDirty = true;
                     if(_loc3_ || Boolean(this))
                     {
                        addr0054:
                        invalidateProperties();
                     }
                     §§goto(addr0059);
                  }
                  §§goto(addr0054);
               }
            }
            addr0059:
            return;
         }
         §§goto(addr0038);
      }
      
      private function scrollLeft() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            var _loc1_:* = this;
            §§push(_loc1_._index);
            if(_loc3_)
            {
               §§push(§§pop() - 1);
            }
            var _loc2_:* = §§pop();
            if(!_loc4_)
            {
               _loc1_._index = _loc2_;
            }
            if(_loc3_)
            {
               invalidateProperties();
               if(_loc3_ || _loc3_)
               {
                  addr005a:
                  this._dataIsDirty = true;
               }
            }
            return;
         }
         §§goto(addr005a);
      }
      
      private function scrollRight() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && _loc1_))
         {
            var _loc1_:* = this;
            §§push(_loc1_._index);
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop() + 1);
            }
            var _loc2_:* = §§pop();
            if(_loc3_ || Boolean(this))
            {
               _loc1_._index = _loc2_;
            }
            if(_loc3_ || Boolean(this))
            {
               invalidateProperties();
               if(!_loc4_)
               {
                  this._dataIsDirty = true;
               }
            }
         }
      }
      
      private function handleFireProfessionalClick() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SchoolBookEvent = new SchoolBookEvent(SchoolBookEvent.FIRE_PROFESSIONAL,true);
         if(_loc3_ || _loc2_)
         {
            _loc1_.pDTO = this._studentData;
            if(!(_loc2_ && Boolean(this)))
            {
               addr0056:
               dispatchEvent(_loc1_);
            }
            return;
         }
         §§goto(addr0056);
      }
      
      private function handleInfoClick() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SchoolBookEvent = new SchoolBookEvent(SchoolBookEvent.SHOW_BUILDING_INFO,true);
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.infrastructureFieldObject = this._data.infrastructureBuildings[this._index];
            if(!_loc3_)
            {
               addr0051:
               dispatchEvent(_loc1_);
            }
            return;
         }
         §§goto(addr0051);
      }
      
      private function _SchoolBookEducationFinishedContentRight_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.top = 0;
            if(!_loc3_)
            {
               addr002c:
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  _loc1_.percentWidth = 100;
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.mxmlContent = [this._SchoolBookEducationFinishedContentRight_BriskImageDynaLib1_c(),this._SchoolBookEducationFinishedContentRight_VGroup1_c()];
                     if(_loc2_)
                     {
                        addr0076:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              addr008a:
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr008a);
            }
            §§goto(addr0076);
         }
         §§goto(addr002c);
      }
      
      private function _SchoolBookEducationFinishedContentRight_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaBmpSourceName = "bg_blue_finished";
            if(_loc3_ || _loc3_)
            {
               _loc1_.dynaLibName = "gui_popups_schoolBook";
               if(!_loc2_)
               {
                  addr0057:
                  _loc1_.width = 372;
                  if(!_loc2_)
                  {
                     addr0062:
                     _loc1_.height = 280;
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr0079:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr007d);
                     }
                     §§goto(addr0079);
                  }
                  §§goto(addr007d);
               }
               §§goto(addr0062);
            }
            addr007d:
            return _loc1_;
         }
         §§goto(addr0057);
      }
      
      private function _SchoolBookEducationFinishedContentRight_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.paddingLeft = 10;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.paddingRight = 10;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.gap = 0;
                     if(_loc2_)
                     {
                        _loc1_.horizontalAlign = "center";
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0093:
                           _loc1_.mxmlContent = [this._SchoolBookEducationFinishedContentRight_Group3_c(),this._SchoolBookEducationFinishedContentRight_HGroup1_c(),this._SchoolBookEducationFinishedContentRight_Group7_i(),this._SchoolBookEducationFinishedContentRight_HGroup2_c()];
                           if(_loc2_)
                           {
                              addr00b5:
                              if(!_loc1_.document)
                              {
                                 if(!_loc3_)
                                 {
                                    addr00c1:
                                    _loc1_.document = this;
                                 }
                              }
                           }
                           §§goto(addr00c5);
                        }
                        §§goto(addr00b5);
                     }
                     §§goto(addr00c1);
                  }
                  §§goto(addr00c5);
               }
               §§goto(addr00b5);
            }
            §§goto(addr0093);
         }
         addr00c5:
         return _loc1_;
      }
      
      private function _SchoolBookEducationFinishedContentRight_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc2_)
         {
            _loc1_.height = 40;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.percentWidth = 100;
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._SchoolBookEducationFinishedContentRight_HeaderComponentSmall1_i()];
                  if(_loc3_)
                  {
                     addr006d:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr0079:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr006d);
            }
         }
         §§goto(addr0079);
      }
      
      private function _SchoolBookEducationFinishedContentRight_HeaderComponentSmall1_i() : HeaderComponentSmall
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HeaderComponentSmall = new HeaderComponentSmall();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.textHAlign = "center";
               if(_loc3_ || Boolean(this))
               {
                  addr0050:
                  _loc1_.bottom = 4;
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.id = "informationHeader";
                     if(_loc3_)
                     {
                        addr006e:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 addr008f:
                                 this.informationHeader = _loc1_;
                                 if(_loc3_ || Boolean(this))
                                 {
                                    addr00a1:
                                    BindingManager.executeBindings(this,"informationHeader",this.informationHeader);
                                 }
                                 §§goto(addr00ae);
                              }
                              §§goto(addr00a1);
                           }
                           §§goto(addr00ae);
                        }
                        §§goto(addr008f);
                     }
                     addr00ae:
                     return _loc1_;
                  }
                  §§goto(addr00a1);
               }
               §§goto(addr006e);
            }
            §§goto(addr00a1);
         }
         §§goto(addr0050);
      }
      
      private function _SchoolBookEducationFinishedContentRight_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.verticalAlign = "top";
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.horizontalAlign = "center";
                     if(!_loc2_)
                     {
                        _loc1_.mxmlContent = [this._SchoolBookEducationFinishedContentRight_Group4_c(),this._SchoolBookEducationFinishedContentRight_Group5_i(),this._SchoolBookEducationFinishedContentRight_Group6_c()];
                        if(_loc3_ || Boolean(this))
                        {
                           addr009f:
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr00b3:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr00b7);
                     }
                     §§goto(addr009f);
                  }
               }
               addr00b7:
               return _loc1_;
            }
            §§goto(addr00b3);
         }
         §§goto(addr009f);
      }
      
      private function _SchoolBookEducationFinishedContentRight_Group4_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.width = 41;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._SchoolBookEducationFinishedContentRight_DynamicImageButton1_i()];
                  if(_loc3_ || Boolean(this))
                  {
                     addr0063:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               §§goto(addr007b);
            }
            §§goto(addr0063);
         }
         addr007b:
         return _loc1_;
      }
      
      private function _SchoolBookEducationFinishedContentRight_DynamicImageButton1_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.verticalCenter = 0;
            if(_loc3_)
            {
               _loc1_.horizontalCenter = 0;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.styleName = "listLeft";
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.addEventListener("click",this.__scrollLeftButton_click);
                     if(_loc3_)
                     {
                        addr0072:
                        _loc1_.id = "scrollLeftButton";
                        if(!_loc2_)
                        {
                           addr007d:
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr0094:
                                 _loc1_.document = this;
                                 if(_loc3_)
                                 {
                                    addr009d:
                                    this.scrollLeftButton = _loc1_;
                                    if(!(_loc2_ && Boolean(this)))
                                    {
                                       addr00af:
                                       BindingManager.executeBindings(this,"scrollLeftButton",this.scrollLeftButton);
                                    }
                                 }
                              }
                              §§goto(addr00bc);
                           }
                        }
                        §§goto(addr009d);
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr0072);
               }
               addr00bc:
               return _loc1_;
            }
            §§goto(addr0094);
         }
         §§goto(addr00af);
      }
      
      public function __scrollLeftButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this.scrollLeft();
         }
      }
      
      private function _SchoolBookEducationFinishedContentRight_Group5_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.mxmlContent = [this._SchoolBookEducationFinishedContentRight_BriskImageDynaLib2_c(),this._SchoolBookEducationFinishedContentRight_BriskImageDynaLib3_i(),this._SchoolBookEducationFinishedContentRight_BriskImageDynaLib4_i(),this._SchoolBookEducationFinishedContentRight_Button1_c(),this._SchoolBookEducationFinishedContentRight_BriskMCDynaLib1_c()];
            if(!(_loc3_ && _loc2_))
            {
               addr0061:
               _loc1_.id = "buildingContainer";
               if(!(_loc3_ && Boolean(this)))
               {
                  addr0074:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.document = this;
                        if(_loc2_ || _loc3_)
                        {
                           addr00a5:
                           this.buildingContainer = _loc1_;
                           if(!_loc3_)
                           {
                              addr00af:
                              BindingManager.executeBindings(this,"buildingContainer",this.buildingContainer);
                           }
                           §§goto(addr00bc);
                        }
                        §§goto(addr00af);
                     }
                     addr00bc:
                     return _loc1_;
                  }
                  §§goto(addr00a5);
               }
               §§goto(addr00af);
            }
            §§goto(addr0074);
         }
         §§goto(addr0061);
      }
      
      private function _SchoolBookEducationFinishedContentRight_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "architect_blueprint_big";
               if(_loc2_ || _loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        addr0067:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr006b);
               }
            }
            §§goto(addr0067);
         }
         addr006b:
         return _loc1_;
      }
      
      private function _SchoolBookEducationFinishedContentRight_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.verticalCenter = 0;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.horizontalCenter = 0;
               addr003b:
               if(!_loc3_)
               {
                  §§goto(addr0051);
               }
               §§goto(addr007e);
            }
            addr0051:
            _loc1_.id = "buildingImage";
            if(!(_loc3_ && _loc2_))
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr007e:
                     _loc1_.document = this;
                     if(!(_loc3_ && _loc2_))
                     {
                        §§goto(addr008f);
                     }
                     §§goto(addr0099);
                  }
               }
            }
            addr008f:
            this.buildingImage = _loc1_;
            if(_loc2_)
            {
               addr0099:
               BindingManager.executeBindings(this,"buildingImage",this.buildingImage);
            }
            return _loc1_;
         }
         §§goto(addr003b);
      }
      
      private function _SchoolBookEducationFinishedContentRight_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.top = -10;
            if(!(_loc3_ && _loc2_))
            {
               §§goto(addr0031);
            }
            §§goto(addr005c);
         }
         addr0031:
         _loc1_.right = -10;
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_schoolBook";
            if(!(_loc3_ && _loc2_))
            {
               addr005c:
               _loc1_.visible = false;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.id = "buildingStatusImage";
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           §§goto(addr0090);
                        }
                        §§goto(addr00ab);
                     }
                     §§goto(addr0099);
                  }
               }
               §§goto(addr0090);
            }
            §§goto(addr0099);
         }
         addr0090:
         _loc1_.document = this;
         if(!_loc3_)
         {
            addr0099:
            this.buildingStatusImage = _loc1_;
            if(!(_loc3_ && _loc2_))
            {
               addr00ab:
               BindingManager.executeBindings(this,"buildingStatusImage",this.buildingStatusImage);
            }
         }
         return _loc1_;
      }
      
      private function _SchoolBookEducationFinishedContentRight_Button1_c() : Button
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Button = new Button();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.styleName = "iButton";
            if(!_loc3_)
            {
               _loc1_.bottom = 16;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.right = 13;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr0064:
                     _loc1_.width = 16;
                     if(!(_loc3_ && _loc2_))
                     {
                        _loc1_.height = 16;
                        if(_loc2_ || _loc3_)
                        {
                           addr0094:
                           _loc1_.addEventListener("click",this.___SchoolBookEducationFinishedContentRight_Button1_click);
                           if(!_loc3_)
                           {
                              §§goto(addr00a5);
                           }
                           §§goto(addr00b1);
                        }
                     }
                  }
                  §§goto(addr00a5);
               }
               §§goto(addr0064);
            }
            §§goto(addr0094);
         }
         addr00a5:
         if(!_loc1_.document)
         {
            if(!_loc3_)
            {
               addr00b1:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      public function ___SchoolBookEducationFinishedContentRight_Button1_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this.handleInfoClick();
         }
      }
      
      private function _SchoolBookEducationFinishedContentRight_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.dynaMCSourceName = "stickytape_top";
               if(_loc2_)
               {
                  _loc1_.top = -2;
                  addr004c:
                  if(!_loc3_)
                  {
                     addr0063:
                     _loc1_.horizontalCenter = 0;
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              addr0081:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr0081);
               }
               addr0085:
               return _loc1_;
            }
            §§goto(addr004c);
         }
         §§goto(addr0063);
      }
      
      private function _SchoolBookEducationFinishedContentRight_Group6_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.width = 41;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  _loc1_.mxmlContent = [this._SchoolBookEducationFinishedContentRight_DynamicImageButton2_i()];
                  addr004a:
                  if(!(_loc3_ && _loc3_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr0085:
                           _loc1_.document = this;
                        }
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr0085);
            }
            §§goto(addr004a);
         }
         §§goto(addr0085);
      }
      
      private function _SchoolBookEducationFinishedContentRight_DynamicImageButton2_i() : DynamicImageButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.verticalCenter = 0;
            if(_loc2_ || Boolean(this))
            {
               §§goto(addr003a);
            }
            §§goto(addr0074);
         }
         addr003a:
         _loc1_.horizontalCenter = 0;
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.styleName = "listRight";
            if(_loc2_)
            {
               _loc1_.addEventListener("click",this.__scrollRightButton_click);
               if(_loc2_)
               {
                  addr0074:
                  _loc1_.id = "scrollRightButton";
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           §§goto(addr00a5);
                        }
                     }
                  }
                  §§goto(addr00ae);
               }
               §§goto(addr00c0);
            }
            §§goto(addr0074);
         }
         addr00a5:
         _loc1_.document = this;
         if(!_loc3_)
         {
            addr00ae:
            this.scrollRightButton = _loc1_;
            if(_loc2_ || Boolean(_loc1_))
            {
               addr00c0:
               BindingManager.executeBindings(this,"scrollRightButton",this.scrollRightButton);
            }
         }
         return _loc1_;
      }
      
      public function __scrollRightButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.scrollRight();
         }
      }
      
      private function _SchoolBookEducationFinishedContentRight_Group7_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.height = 42;
            if(!_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._SchoolBookEducationFinishedContentRight_Group8_c(),this._SchoolBookEducationFinishedContentRight_SecurityBarPartComponent1_i()];
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.id = "barContainer";
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr0075:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              §§goto(addr008d);
                           }
                           §§goto(addr00a8);
                        }
                        §§goto(addr0096);
                     }
                     addr008d:
                     _loc1_.document = this;
                     if(!_loc2_)
                     {
                        addr0096:
                        this.barContainer = _loc1_;
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr00a8:
                           BindingManager.executeBindings(this,"barContainer",this.barContainer);
                        }
                     }
                     §§goto(addr00b5);
                  }
                  §§goto(addr0075);
               }
               addr00b5:
               return _loc1_;
            }
            §§goto(addr008d);
         }
         §§goto(addr0075);
      }
      
      private function _SchoolBookEducationFinishedContentRight_Group8_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.percentHeight = 100;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.verticalCenter = 0;
               if(_loc3_)
               {
                  _loc1_.left = -4;
                  if(!_loc2_)
                  {
                     addr0062:
                     _loc1_.mxmlContent = [this._SchoolBookEducationFinishedContentRight_BriskImageDynaLib5_c(),this._SchoolBookEducationFinishedContentRight_BriskImageDynaLib6_i()];
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr0084:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0088);
                     }
                  }
               }
               §§goto(addr0084);
            }
            addr0088:
            return _loc1_;
         }
         §§goto(addr0062);
      }
      
      private function _SchoolBookEducationFinishedContentRight_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.dynaBmpSourceName = "batchbase_green";
               if(_loc2_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(!_loc3_)
                  {
                     _loc1_.top = 12;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr0074:
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc3_)
                           {
                              addr0088:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr008c);
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0088);
            }
            §§goto(addr0074);
         }
         addr008c:
         return _loc1_;
      }
      
      private function _SchoolBookEducationFinishedContentRight_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "small_badges";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "";
               if(!_loc2_)
               {
                  _loc1_.dynaSWFFileName = "gui_ui_emergencyDepartmentsIcons";
                  if(!_loc2_)
                  {
                     _loc1_.horizontalCenter = 0;
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.top = 0;
                        if(_loc3_ || Boolean(this))
                        {
                           addr0070:
                           _loc1_.id = "departmentImage";
                           if(!(_loc2_ && Boolean(this)))
                           {
                              if(!_loc1_.document)
                              {
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    addr0097:
                                    _loc1_.document = this;
                                    if(!(_loc2_ && Boolean(this)))
                                    {
                                       §§goto(addr00b3);
                                    }
                                 }
                                 §§goto(addr00c5);
                              }
                              addr00b3:
                              this.departmentImage = _loc1_;
                              if(_loc3_ || Boolean(this))
                              {
                                 addr00c5:
                                 BindingManager.executeBindings(this,"departmentImage",this.departmentImage);
                              }
                              §§goto(addr00d2);
                           }
                           §§goto(addr0097);
                        }
                        §§goto(addr00d2);
                     }
                     §§goto(addr00b3);
                  }
                  §§goto(addr0070);
               }
               §§goto(addr0097);
            }
         }
         addr00d2:
         return _loc1_;
      }
      
      private function _SchoolBookEducationFinishedContentRight_SecurityBarPartComponent1_i() : SecurityBarPartComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SecurityBarPartComponent = new SecurityBarPartComponent();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.width = 290;
            if(!_loc3_)
            {
               _loc1_.right = 14;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.id = "partComponent";
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr0067:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           _loc1_.document = this;
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              §§goto(addr0090);
                           }
                           §§goto(addr009a);
                        }
                     }
                     addr0090:
                     this.partComponent = _loc1_;
                     if(!_loc3_)
                     {
                        addr009a:
                        BindingManager.executeBindings(this,"partComponent",this.partComponent);
                     }
                     §§goto(addr00a7);
                  }
                  addr00a7:
                  return _loc1_;
               }
               §§goto(addr009a);
            }
            §§goto(addr0090);
         }
         §§goto(addr0067);
      }
      
      private function _SchoolBookEducationFinishedContentRight_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(this))
            {
               addr0045:
               _loc1_.verticalAlign = "middle";
               if(!_loc2_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.mxmlContent = [this._SchoolBookEducationFinishedContentRight_MultistateButton1_i(),this._SchoolBookEducationFinishedContentRight_MultistateButton2_i(),this._SchoolBookEducationFinishedContentRight_MultistateButton3_i()];
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              addr00a0:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr00a4);
                     }
                     §§goto(addr00a0);
                  }
                  addr00a4:
                  return _loc1_;
               }
            }
            §§goto(addr00a0);
         }
         §§goto(addr0045);
      }
      
      private function _SchoolBookEducationFinishedContentRight_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(!_loc2_)
         {
            _loc1_.libNameLeft = "gui_popups_schoolBook";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.imageNameLeft = "white_x_icon";
               if(_loc3_ || _loc2_)
               {
                  _loc1_.styleName = "abort";
                  if(!_loc2_)
                  {
                     addr0060:
                     _loc1_.width = 42;
                     if(_loc3_)
                     {
                        _loc1_.addEventListener("click",this.__fireButton_click);
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           _loc1_.id = "fireButton";
                           if(!_loc2_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(_loc3_)
                                 {
                                    addr00a5:
                                    _loc1_.document = this;
                                    if(_loc3_ || _loc2_)
                                    {
                                       §§goto(addr00b6);
                                    }
                                    §§goto(addr00c0);
                                 }
                              }
                           }
                           addr00b6:
                           this.fireButton = _loc1_;
                           if(!_loc2_)
                           {
                              addr00c0:
                              BindingManager.executeBindings(this,"fireButton",this.fireButton);
                           }
                           §§goto(addr00cd);
                        }
                     }
                  }
               }
               addr00cd:
               return _loc1_;
            }
            §§goto(addr0060);
         }
         §§goto(addr00a5);
      }
      
      public function __fireButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.handleFireProfessionalClick();
         }
      }
      
      private function _SchoolBookEducationFinishedContentRight_MultistateButton2_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.libNameLeft = "gui_popups_FriendBook";
            if(_loc3_)
            {
               _loc1_.imageNameLeft = "button_icon_checkmark";
               if(!_loc2_)
               {
                  addr003e:
                  _loc1_.width = 200;
                  if(_loc3_)
                  {
                     §§goto(addr0049);
                  }
                  §§goto(addr006e);
               }
               addr0049:
               _loc1_.addEventListener("click",this.__assignButton_click);
               if(!(_loc2_ && _loc2_))
               {
                  addr006e:
                  _loc1_.id = "assignButton";
                  if(_loc3_ || Boolean(this))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           _loc1_.document = this;
                           if(!(_loc2_ && _loc2_))
                           {
                              addr00b2:
                              this.assignButton = _loc1_;
                              if(_loc3_ || Boolean(_loc1_))
                              {
                                 addr00c4:
                                 BindingManager.executeBindings(this,"assignButton",this.assignButton);
                              }
                           }
                           §§goto(addr00d1);
                        }
                        §§goto(addr00c4);
                     }
                  }
                  §§goto(addr00b2);
               }
               addr00d1:
               return _loc1_;
            }
            §§goto(addr003e);
         }
         §§goto(addr00b2);
      }
      
      public function __assignButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this.handleAssignClick();
         }
      }
      
      private function _SchoolBookEducationFinishedContentRight_MultistateButton3_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.libNameLeft = "gui_popups_schoolBook";
            if(_loc3_ || _loc3_)
            {
               _loc1_.imageNameLeft = "white_x_icon";
               if(!_loc2_)
               {
                  _loc1_.includeInLayout = false;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.visible = false;
                     if(_loc3_)
                     {
                        _loc1_.width = 42;
                        if(!(_loc2_ && _loc3_))
                        {
                           _loc1_.id = "toMarketButton";
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr0091:
                              if(!_loc1_.document)
                              {
                                 if(!_loc2_)
                                 {
                                    _loc1_.document = this;
                                    if(_loc3_ || _loc2_)
                                    {
                                       addr00ba:
                                       this.toMarketButton = _loc1_;
                                       if(!(_loc2_ && Boolean(this)))
                                       {
                                          addr00cc:
                                          BindingManager.executeBindings(this,"toMarketButton",this.toMarketButton);
                                       }
                                    }
                                    return _loc1_;
                                 }
                              }
                           }
                           §§goto(addr00ba);
                        }
                        §§goto(addr0091);
                     }
                  }
                  §§goto(addr00ba);
               }
            }
         }
         §§goto(addr00cc);
      }
      
      [Bindable(event="propertyChange")]
      public function get assignButton() : MultistateButton
      {
         return this._1474880769assignButton;
      }
      
      public function set assignButton(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1474880769assignButton;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1474880769assignButton = param1;
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"assignButton",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr006f);
      }
      
      [Bindable(event="propertyChange")]
      public function get barContainer() : Group
      {
         return this._2075077202barContainer;
      }
      
      public function set barContainer(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2075077202barContainer;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._2075077202barContainer = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"barContainer",_loc2_,param1));
                        }
                     }
                     §§goto(addr007f);
                  }
               }
               §§goto(addr0070);
            }
            addr007f:
            return;
         }
         §§goto(addr0070);
      }
      
      [Bindable(event="propertyChange")]
      public function get buildingContainer() : Group
      {
         return this._319890477buildingContainer;
      }
      
      public function set buildingContainer(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._319890477buildingContainer;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._319890477buildingContainer = param1;
                  if(_loc3_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buildingContainer",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0075);
      }
      
      [Bindable(event="propertyChange")]
      public function get buildingImage() : BriskImageDynaLib
      {
         return this._400476409buildingImage;
      }
      
      public function set buildingImage(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._400476409buildingImage;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._400476409buildingImage = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buildingImage",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr005e);
      }
      
      [Bindable(event="propertyChange")]
      public function get buildingStatusImage() : BriskImageDynaLib
      {
         return this._1352707381buildingStatusImage;
      }
      
      public function set buildingStatusImage(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1352707381buildingStatusImage;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._1352707381buildingStatusImage = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr0079:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buildingStatusImage",_loc2_,param1));
                        }
                     }
                     §§goto(addr0088);
                  }
                  §§goto(addr0079);
               }
            }
            addr0088:
            return;
         }
         §§goto(addr0079);
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
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._453556521departmentImage = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"departmentImage",_loc2_,param1));
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
      public function get fireButton() : MultistateButton
      {
         return this._1112078072fireButton;
      }
      
      public function set fireButton(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1112078072fireButton;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1112078072fireButton = param1;
                  addr0040:
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fireButton",_loc2_,param1));
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
         §§goto(addr0040);
      }
      
      [Bindable(event="propertyChange")]
      public function get informationHeader() : HeaderComponentSmall
      {
         return this._1846981337informationHeader;
      }
      
      public function set informationHeader(param1:HeaderComponentSmall) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1846981337informationHeader;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1846981337informationHeader = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"informationHeader",_loc2_,param1));
                        }
                     }
                     §§goto(addr0075);
                  }
               }
               §§goto(addr0066);
            }
         }
         addr0075:
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
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._1724029514partComponent = param1;
                  addr004c:
                  if(_loc4_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr007b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"partComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr008a);
                  }
                  §§goto(addr007b);
               }
            }
            addr008a:
            return;
         }
         §§goto(addr004c);
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollLeftButton() : DynamicImageButton
      {
         return this._75450170scrollLeftButton;
      }
      
      public function set scrollLeftButton(param1:DynamicImageButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._75450170scrollLeftButton;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._75450170scrollLeftButton = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollLeftButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr0083);
                  }
               }
               §§goto(addr0074);
            }
         }
         addr0083:
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollRightButton() : DynamicImageButton
      {
         return this._1993162593scrollRightButton;
      }
      
      public function set scrollRightButton(param1:DynamicImageButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1993162593scrollRightButton;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1993162593scrollRightButton = param1;
                  if(!_loc4_)
                  {
                     addr0043:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollRightButton",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0043);
      }
      
      [Bindable(event="propertyChange")]
      public function get toMarketButton() : MultistateButton
      {
         return this._1423635287toMarketButton;
      }
      
      public function set toMarketButton(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1423635287toMarketButton;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._1423635287toMarketButton = param1;
                  addr0045:
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr0064);
                  }
                  §§goto(addr0074);
               }
               addr0064:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_)
                  {
                     addr0074:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"toMarketButton",_loc2_,param1));
                  }
               }
               §§goto(addr0083);
            }
            addr0083:
            return;
         }
         §§goto(addr0045);
      }
   }
}

