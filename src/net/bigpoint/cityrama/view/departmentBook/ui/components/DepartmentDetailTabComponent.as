package net.bigpoint.cityrama.view.departmentBook.ui.components
{
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.departmentBook.vo.DepartmentProfessionalListVo;
   import net.bigpoint.cityrama.model.departmentBook.vo.DepartmentSecurityBarVo;
   import net.bigpoint.cityrama.model.detailViews.vo.DepartmentDetailViewVo;
   import net.bigpoint.cityrama.model.residentialBook.vo.UpgradeProgressVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.cityrama.view.departmentBook.ui.skins.DepartmentSecurityBarSkin;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ResidentialHeaderComponent;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class DepartmentDetailTabComponent extends Group
   {
      
      private var _1415215337evaluationHeader:ResidentialHeaderComponent;
      
      private var _800887486flavourText:LocaLabel;
      
      private var _2112922897polaroidImage:BriskImageDynaLib;
      
      private var _1795991707professionalList:DepartmentSlotComponent;
      
      private var _1296646151rangeBarComponent:DepartmentSecurityBarComponent;
      
      private var _2007548268upgradeProgressComponent:InfraUpgradeProgressComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:DepartmentDetailViewVo;
      
      private var _isDirty:Boolean;
      
      private var _departmentName:String = "";
      
      public function DepartmentDetailTabComponent()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super();
            if(_loc2_ || _loc1_)
            {
               mx_internal::_document = this;
               if(!(_loc1_ && _loc1_))
               {
                  addr005c:
                  this.percentWidth = 100;
                  if(_loc2_)
                  {
                     this.percentHeight = 100;
                     if(!_loc1_)
                     {
                        addr0070:
                        this.mxmlContent = [this._DepartmentDetailTabComponent_HGroup1_c(),this._DepartmentDetailTabComponent_Group2_c()];
                     }
                     §§goto(addr0081);
                  }
               }
               §§goto(addr0070);
            }
            addr0081:
            return;
         }
         §§goto(addr005c);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            super.moduleFactory = param1;
            if(_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc2_ && Boolean(param1)))
                  {
                     §§goto(addr0053);
                  }
               }
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         addr0053:
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
      
      public function set data(param1:DepartmentDetailViewVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(_loc3_)
               {
                  this._isDirty = true;
                  if(_loc3_)
                  {
                     this._data = param1;
                     if(!(_loc2_ && _loc2_))
                     {
                        addr0060:
                        invalidateProperties();
                     }
                     §§goto(addr0065);
                  }
                  §§goto(addr0060);
               }
            }
            addr0065:
            return;
         }
         §§goto(addr0060);
      }
      
      private function get departmentName() : String
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this._departmentName);
            if(!_loc2_)
            {
               §§push(§§pop() == "");
               if(_loc1_ || Boolean(this))
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  if(_temp_2)
                  {
                     if(!(_loc2_ && Boolean(this)))
                     {
                        §§pop();
                        if(_loc1_ || _loc1_)
                        {
                           §§goto(addr0067);
                        }
                        §§goto(addr0070);
                     }
                  }
               }
               addr0067:
               if(Boolean(this._data))
               {
                  if(_loc1_)
                  {
                     addr0070:
                     §§push(this);
                     §§push(LocaUtils);
                     §§push("rcl.playfielditems.name");
                     §§push("rcl.playfielditems.name.");
                     if(!_loc2_)
                     {
                        §§push(§§pop() + this._data.localeId);
                     }
                     §§pop()._departmentName = §§pop().getString(§§pop(),§§pop());
                  }
               }
               §§goto(addr0090);
            }
            addr0090:
            return this._departmentName;
         }
         §§goto(addr0070);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super.commitProperties();
            if(!_loc1_)
            {
               addr0028:
               §§push(Boolean(this._data));
               if(_loc2_ || _loc2_)
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  if(_temp_4)
                  {
                     if(!(_loc1_ && _loc2_))
                     {
                        §§pop();
                        if(!_loc1_)
                        {
                           §§goto(addr0070);
                        }
                        §§goto(addr0079);
                     }
                     §§goto(addr006f);
                  }
                  addr0070:
                  §§goto(addr0066);
               }
               §§goto(addr006f);
            }
            addr0066:
            §§push(this._isDirty);
            if(!_loc1_)
            {
               addr006f:
               §§push(§§pop());
            }
            if(§§pop())
            {
               if(_loc2_)
               {
                  addr0079:
                  this._isDirty = false;
                  if(!_loc1_)
                  {
                     this.fillContent();
                  }
               }
            }
            return;
         }
         §§goto(addr0028);
      }
      
      private function fillContent() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            §§push(this.flavourText);
            §§push(LocaUtils);
            §§push("rcl.booklayer.departmentBook");
            if(_loc2_)
            {
               §§push("");
               if(_loc2_)
               {
                  addr0034:
                  §§push(§§pop() + §§pop());
                  §§push("rcl.booklayer.departmentBook.flavortext_");
                  if(!(_loc1_ && Boolean(this)))
                  {
                     §§push(§§pop() + this._data.localeId);
                  }
               }
               §§pop().text = §§pop().getString(§§pop(),§§pop());
               if(!(_loc1_ && Boolean(this)))
               {
                  this.evaluationHeader.text = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.currentUpgrade",[this._data.upgradeCurrentLevel]);
                  if(!(_loc1_ && _loc2_))
                  {
                     §§push(this.polaroidImage);
                     if(!_loc1_)
                     {
                        §§push("department_");
                        if(_loc2_)
                        {
                           §§push(this._data);
                           if(_loc2_)
                           {
                              §§push(§§pop() + §§pop().gfxId);
                              if(_loc2_ || Boolean(this))
                              {
                                 §§push("_level");
                                 if(!(_loc1_ && Boolean(this)))
                                 {
                                    §§goto(addr00e3);
                                 }
                                 §§goto(addr00e2);
                              }
                              §§goto(addr00e3);
                           }
                           §§goto(addr00d6);
                        }
                        addr00e3:
                        §§push(§§pop() + §§pop());
                        if(_loc2_)
                        {
                           addr00d6:
                           §§push(§§pop() + this._data.upgradeCurrentLevel);
                           if(!_loc1_)
                           {
                              addr00e2:
                              §§push(§§pop() + "_big");
                           }
                        }
                        §§pop().dynaBmpSourceName = §§pop();
                        if(!(_loc1_ && Boolean(this)))
                        {
                           addr00f6:
                           §§push(this.polaroidImage);
                           §§push(LocaUtils);
                           §§push("rcl.playfielditems.name");
                           §§push("rcl.playfielditems.name.");
                           if(_loc2_ || _loc2_)
                           {
                              §§push(§§pop() + this._data.localeId);
                           }
                           §§pop().toolTip = §§pop().getString(§§pop(),§§pop());
                           if(_loc2_ || _loc1_)
                           {
                              this.initUpgradeProgress();
                              addr0125:
                              if(_loc2_ || _loc1_)
                              {
                                 §§goto(addr0142);
                              }
                              §§goto(addr0159);
                           }
                           addr0142:
                           this.initSecurityProgress(this._data);
                           if(_loc2_ || Boolean(this))
                           {
                              addr0159:
                              this.initProfessionalList(this._data);
                           }
                           §§goto(addr0163);
                        }
                        addr0163:
                        return;
                     }
                     §§goto(addr00f6);
                  }
                  §§goto(addr0142);
               }
               §§goto(addr0125);
            }
            §§goto(addr0034);
         }
         §§goto(addr0142);
      }
      
      private function initProfessionalList(param1:DepartmentDetailViewVo) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:DepartmentProfessionalListVo = new DepartmentProfessionalListVo();
         if(_loc4_)
         {
            _loc2_.flavourText = LocaUtils.getString("rcl.booklayer.departmentBook","rcl.booklayer.departmentBook.slots",[param1.currentSlots,param1.maxSlots]);
            if(_loc4_ || Boolean(param1))
            {
               _loc2_.professionalSlots = param1.professionalList;
               if(!_loc3_)
               {
                  _loc2_.headerIconImg = this._data.headerIcon;
                  if(!_loc3_)
                  {
                     §§goto(addr0084);
                  }
                  §§goto(addr0098);
               }
               §§goto(addr00ad);
            }
            §§goto(addr0098);
         }
         addr0084:
         _loc2_.headerIconLib = "gui_popups_emergencyBook";
         if(!(_loc3_ && Boolean(param1)))
         {
            addr0098:
            _loc2_.headerText = LocaUtils.getString("rcl.booklayer.departmentBook","rcl.booklayer.departmentBook.header_170011");
            if(!_loc3_)
            {
               addr00ad:
               this.professionalList.data = _loc2_;
            }
         }
      }
      
      private function initSecurityProgress(param1:DepartmentDetailViewVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §§push(this.rangeBarComponent);
            if(!(_loc3_ && Boolean(this)))
            {
               §§pop().data = new DepartmentSecurityBarVo(param1.attributePoints,param1.maxAttributePoints,param1.type,param1.departmentGfxId,param1.configSecurityGrades,param1.thresholds,param1.buildingSizeX,param1.buildingSizeY);
               if(!_loc3_)
               {
                  addr0061:
                  §§push(this.rangeBarComponent);
                  if(!_loc3_)
                  {
                     §§push(LocaUtils.getString("rcl.booklayer.departmentBook","rcl.booklayer.departmentBook.securityArea"));
                     if(_loc2_ || _loc3_)
                     {
                        §§pop().label = §§pop();
                        if(!_loc3_)
                        {
                           addr00ae:
                           this.rangeBarComponent.toolTip = LocaUtils.getString("rcl.tooltips.departmentBook","rcl.tooltips.departmentBook.radiusBar",[this.departmentName]);
                           addr009b:
                        }
                        §§goto(addr00b0);
                     }
                     §§goto(addr00ae);
                  }
                  §§goto(addr009b);
               }
               addr00b0:
               return;
            }
            §§goto(addr009b);
         }
         §§goto(addr0061);
      }
      
      private function initUpgradeProgress() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:UpgradeProgressVo = new UpgradeProgressVo();
         if(_loc3_ || _loc3_)
         {
            _loc1_.currentProgress = this._data.emergencyCount;
            if(!_loc4_)
            {
               addr003e:
               _loc1_.hasEnoughMoney = this._data.hasEnoughDD;
               if(!(_loc4_ && _loc2_))
               {
                  _loc1_.neededProgress = this._data.upgradeCountTotal;
                  if(!_loc4_)
                  {
                     _loc1_.price = this._data.upgradePrice;
                     if(!(_loc4_ && _loc3_))
                     {
                        _loc1_.upgradeCurrentLevel = this._data.upgradeCurrentLevel;
                        if(_loc3_)
                        {
                           _loc1_.upgradeMaxLevel = this._data.upgradeMaxLevel;
                           if(!_loc4_)
                           {
                              _loc1_.upgradeNextLevel = this._data.upgradeNextLevel;
                              if(_loc3_ || _loc3_)
                              {
                                 _loc1_.instaFinishRCCost = this._data.upgradeInstaFinishRCCost;
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    _loc1_.userRCStock = this._data.userRcStock;
                                    if(_loc3_)
                                    {
                                       addr00e3:
                                       §§push(this.upgradeProgressComponent);
                                       if(!_loc4_)
                                       {
                                          §§pop().data = _loc1_;
                                          if(!_loc4_)
                                          {
                                             §§push(this._data);
                                             if(_loc3_ || _loc2_)
                                             {
                                                §§push(§§pop().nextDepartmentDetail);
                                                if(_loc3_ || _loc2_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc3_ || Boolean(this))
                                                      {
                                                         §§push(this._data);
                                                         if(_loc3_)
                                                         {
                                                            §§push(§§pop().upgradeReady);
                                                            if(!(_loc4_ && Boolean(this)))
                                                            {
                                                               §§push(§§pop());
                                                               if(!(_loc4_ && Boolean(_loc1_)))
                                                               {
                                                                  addr0151:
                                                                  var _temp_11:* = §§pop();
                                                                  §§push(_temp_11);
                                                                  if(_temp_11)
                                                                  {
                                                                     if(!(_loc4_ && Boolean(this)))
                                                                     {
                                                                        §§pop();
                                                                        if(_loc3_ || _loc2_)
                                                                        {
                                                                           §§push(this._data);
                                                                           if(!(_loc4_ && _loc2_))
                                                                           {
                                                                              addr0193:
                                                                              addr0192:
                                                                              if(Boolean(§§pop().nextDepartmentDetail))
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    addr019d:
                                                                                    §§push(this.upgradeProgressComponent);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§push(§§pop().instaBuyButton);
                                                                                       if(!(_loc4_ && Boolean(_loc1_)))
                                                                                       {
                                                                                          §§pop().addEventListener(MouseEvent.MOUSE_OVER,this.handleUpgradeMouseOver);
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             addr01c9:
                                                                                             §§push(this.upgradeProgressComponent);
                                                                                             if(_loc3_ || Boolean(this))
                                                                                             {
                                                                                                §§push(§§pop().upgradeButton);
                                                                                                if(_loc3_ || Boolean(this))
                                                                                                {
                                                                                                   §§pop().addEventListener(MouseEvent.MOUSE_OVER,this.handleUpgradeMouseOver);
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      addr01fb:
                                                                                                      §§push(this.upgradeProgressComponent);
                                                                                                      if(_loc3_ || Boolean(this))
                                                                                                      {
                                                                                                         §§push(§§pop().instaBuyButton);
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            addr0215:
                                                                                                            §§pop().addEventListener(MouseEvent.MOUSE_OUT,this.handleUpgradeMouseOut);
                                                                                                            if(_loc3_ || _loc3_)
                                                                                                            {
                                                                                                               addr022e:
                                                                                                               §§push(this.upgradeProgressComponent);
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  §§push(§§pop().upgradeButton);
                                                                                                                  if(!(_loc4_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§pop().addEventListener(MouseEvent.MOUSE_OUT,this.handleUpgradeMouseOut);
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr02e0:
                                                                                                                     §§pop().removeEventListener(MouseEvent.MOUSE_OUT,this.handleUpgradeMouseOut);
                                                                                                                  }
                                                                                                                  §§goto(addr02ec);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr02c0:
                                                                                                                  §§push(§§pop().upgradeButton);
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     §§pop().removeEventListener(MouseEvent.MOUSE_OVER,this.handleUpgradeMouseOver);
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        addr02dd:
                                                                                                                        addr02d9:
                                                                                                                        §§goto(addr02e0);
                                                                                                                        §§push(this.upgradeProgressComponent.upgradeButton);
                                                                                                                     }
                                                                                                                     §§goto(addr02ec);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr02e0);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr0277:
                                                                                                            §§pop().removeEventListener(MouseEvent.MOUSE_OVER,this.handleUpgradeMouseOver);
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               addr0289:
                                                                                                               §§push(this.upgradeProgressComponent);
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  addr0295:
                                                                                                                  §§pop().instaBuyButton.removeEventListener(MouseEvent.MOUSE_OUT,this.handleUpgradeMouseOut);
                                                                                                                  addr0292:
                                                                                                                  if(_loc3_ || Boolean(_loc1_))
                                                                                                                  {
                                                                                                                     addr02ae:
                                                                                                                     §§push(this.upgradeProgressComponent);
                                                                                                                     if(!(_loc4_ && Boolean(_loc2_)))
                                                                                                                     {
                                                                                                                        §§goto(addr02c0);
                                                                                                                     }
                                                                                                                     §§goto(addr02dd);
                                                                                                                  }
                                                                                                                  §§goto(addr02d9);
                                                                                                               }
                                                                                                               §§goto(addr02dd);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr02ec);
                                                                                                      }
                                                                                                      §§goto(addr0292);
                                                                                                   }
                                                                                                   §§goto(addr02d9);
                                                                                                }
                                                                                                §§goto(addr02e0);
                                                                                             }
                                                                                             §§goto(addr0292);
                                                                                          }
                                                                                          §§goto(addr02ec);
                                                                                       }
                                                                                       §§goto(addr0215);
                                                                                    }
                                                                                    §§goto(addr0292);
                                                                                 }
                                                                                 §§goto(addr02d9);
                                                                              }
                                                                              addr02ec:
                                                                           }
                                                                           §§goto(addr02f0);
                                                                        }
                                                                        §§goto(addr022e);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr0193);
                                                            }
                                                            §§goto(addr0151);
                                                         }
                                                         §§goto(addr02f0);
                                                      }
                                                      §§goto(addr02ec);
                                                   }
                                                   else
                                                   {
                                                      §§push(this.upgradeProgressComponent);
                                                      if(_loc3_)
                                                      {
                                                         §§push(§§pop().instaBuyButton);
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            §§goto(addr0277);
                                                         }
                                                         §§goto(addr0295);
                                                      }
                                                   }
                                                   §§goto(addr0292);
                                                }
                                                §§goto(addr0192);
                                             }
                                             addr02f0:
                                             §§push(this._data.upgradeCountTotal);
                                             if(!(_loc4_ && Boolean(_loc1_)))
                                             {
                                                §§push(§§pop() - this._data.emergencyCount);
                                             }
                                             var _loc2_:int = §§pop();
                                             if(_loc3_ || _loc3_)
                                             {
                                                this.upgradeProgressComponent.upgradeButton.toolTip = LocaUtils.getString("rcl.tooltips.residentialBook","rcl.tooltips.residentialBook.upgradeButton");
                                             }
                                             return;
                                          }
                                          §§goto(addr01fb);
                                       }
                                       §§goto(addr02dd);
                                    }
                                    §§goto(addr0289);
                                 }
                                 §§goto(addr02ae);
                              }
                              §§goto(addr02d9);
                           }
                           §§goto(addr00e3);
                        }
                        §§goto(addr02d9);
                     }
                     §§goto(addr019d);
                  }
                  §§goto(addr02ec);
               }
               §§goto(addr01c9);
            }
            §§goto(addr022e);
         }
         §§goto(addr003e);
      }
      
      private function handleUpgradeMouseOut(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._isDirty = true;
            if(_loc2_)
            {
               invalidateProperties();
            }
         }
      }
      
      private function handleUpgradeMouseOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            §§push(this.polaroidImage);
            §§push("department_");
            if(!_loc3_)
            {
               §§push(this._data);
               if(_loc2_)
               {
                  §§push(§§pop() + §§pop().gfxId);
                  if(_loc2_)
                  {
                     addr0048:
                     §§push("_level");
                     if(_loc2_)
                     {
                        §§push(§§pop() + §§pop());
                        if(!_loc3_)
                        {
                           §§goto(addr0072);
                        }
                        §§goto(addr006e);
                     }
                     §§goto(addr0071);
                  }
                  addr0072:
                  §§goto(addr0065);
               }
               addr0065:
               §§push(§§pop() + this._data.upgradeNextLevel);
               if(!_loc3_)
               {
                  addr006e:
                  addr0071:
                  §§push(§§pop() + "_big");
               }
               §§pop().dynaBmpSourceName = §§pop();
               if(_loc2_)
               {
                  addr0079:
                  this.initProfessionalList(this._data.nextDepartmentDetail);
                  if(_loc2_)
                  {
                     this.initSecurityProgress(this._data.nextDepartmentDetail);
                  }
               }
               return;
            }
            §§goto(addr0048);
         }
         §§goto(addr0079);
      }
      
      private function _DepartmentDetailTabComponent_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 90;
            if(!_loc2_)
            {
               _loc1_.height = 40;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.horizontalCenter = 0;
                  if(!_loc2_)
                  {
                     _loc1_.top = -20;
                     if(!(_loc2_ && _loc2_))
                     {
                        addr006e:
                        _loc1_.verticalAlign = "middle";
                        if(!_loc2_)
                        {
                           _loc1_.horizontalAlign = "center";
                           if(!(_loc2_ && _loc3_))
                           {
                              addr0096:
                              _loc1_.mxmlContent = [this._DepartmentDetailTabComponent_LocaLabel1_i()];
                              if(!_loc2_)
                              {
                                 addr00a6:
                                 if(!_loc1_.document)
                                 {
                                    if(!(_loc2_ && Boolean(_loc1_)))
                                    {
                                       _loc1_.document = this;
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr00be);
                     }
                     §§goto(addr00a6);
                  }
                  addr00be:
                  return _loc1_;
               }
               §§goto(addr006e);
            }
         }
         §§goto(addr0096);
      }
      
      private function _DepartmentDetailTabComponent_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.styleName = "flavorText";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.maxDisplayedLines = 2;
               if(!(_loc3_ && _loc3_))
               {
                  addr0057:
                  _loc1_.percentWidth = 100;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.id = "flavourText";
                     if(!_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              _loc1_.document = this;
                              if(_loc2_)
                              {
                                 addr009c:
                                 this.flavourText = _loc1_;
                                 if(_loc2_ || _loc3_)
                                 {
                                    addr00ae:
                                    BindingManager.executeBindings(this,"flavourText",this.flavourText);
                                 }
                              }
                              §§goto(addr00bb);
                           }
                        }
                        §§goto(addr009c);
                     }
                     addr00bb:
                     return _loc1_;
                  }
               }
               §§goto(addr009c);
            }
            §§goto(addr00ae);
         }
         §§goto(addr0057);
      }
      
      private function _DepartmentDetailTabComponent_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.percentWidth = 98;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.height = 315;
               if(_loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.top = 20;
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_.mxmlContent = [this._DepartmentDetailTabComponent_Group3_c(),this._DepartmentDetailTabComponent_Group5_c()];
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           addr00a1:
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr00ad:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr00b1);
                     }
                     §§goto(addr00ad);
                  }
                  addr00b1:
                  return _loc1_;
               }
               §§goto(addr00a1);
            }
         }
         §§goto(addr00ad);
      }
      
      private function _DepartmentDetailTabComponent_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.width = 500;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.percentHeight = 100;
               if(_loc3_)
               {
                  addr0052:
                  _loc1_.right = 0;
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr0070);
                  }
                  §§goto(addr009e);
               }
               §§goto(addr0092);
            }
            addr0070:
            _loc1_.mxmlContent = [this._DepartmentDetailTabComponent_BriskImageDynaLib1_c(),this._DepartmentDetailTabComponent_BriskMCDynaLib1_c(),this._DepartmentDetailTabComponent_DepartmentSlotComponent1_i(),this._DepartmentDetailTabComponent_Group4_c()];
            if(_loc3_)
            {
               addr0092:
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr009e:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0052);
      }
      
      private function _DepartmentDetailTabComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "quadrillepaper_quer";
               if(_loc3_)
               {
                  _loc1_.right = 0;
                  if(!_loc2_)
                  {
                     _loc1_.top = 0;
                     if(_loc3_ || Boolean(this))
                     {
                        §§goto(addr006d);
                     }
                  }
                  §§goto(addr0079);
               }
            }
            addr006d:
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  addr0079:
                  _loc1_.document = this;
               }
            }
            §§goto(addr007d);
         }
         addr007d:
         return _loc1_;
      }
      
      private function _DepartmentDetailTabComponent_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.top = -5;
               if(_loc2_)
               {
                  §§goto(addr004a);
               }
               §§goto(addr007c);
            }
            addr004a:
            _loc1_.horizontalCenter = 0;
            if(_loc2_ || _loc2_)
            {
               _loc1_.dynaMCSourceName = "stickytape_top";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr007c:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr0090:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0094);
               }
               §§goto(addr0090);
            }
            addr0094:
            return _loc1_;
         }
         §§goto(addr007c);
      }
      
      private function _DepartmentDetailTabComponent_DepartmentSlotComponent1_i() : DepartmentSlotComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DepartmentSlotComponent = new DepartmentSlotComponent();
         if(!_loc3_)
         {
            _loc1_.top = 16;
            if(_loc2_)
            {
               _loc1_.height = 234;
               if(!_loc3_)
               {
                  §§goto(addr0035);
               }
               §§goto(addr0091);
            }
            addr0035:
            _loc1_.width = 493;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.id = "professionalList";
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.document = this;
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0091:
                           this.professionalList = _loc1_;
                           if(!_loc3_)
                           {
                              BindingManager.executeBindings(this,"professionalList",this.professionalList);
                           }
                        }
                        §§goto(addr00a8);
                     }
                  }
               }
               §§goto(addr0091);
            }
            addr00a8:
            return _loc1_;
         }
         §§goto(addr0091);
      }
      
      private function _DepartmentDetailTabComponent_Group4_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc3_))
            {
               addr0045:
               _loc1_.bottom = -4;
               if(!_loc2_)
               {
                  _loc1_.right = -10;
                  if(_loc3_)
                  {
                     _loc1_.mxmlContent = [this._DepartmentDetailTabComponent_DepartmentSecurityBarComponent1_i()];
                     addr005a:
                     if(_loc3_ || Boolean(this))
                     {
                        §§goto(addr007e);
                     }
                     §§goto(addr0092);
                  }
                  addr007e:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        addr0092:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr005a);
            }
            §§goto(addr0092);
         }
         §§goto(addr0045);
      }
      
      private function _DepartmentDetailTabComponent_DepartmentSecurityBarComponent1_i() : DepartmentSecurityBarComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DepartmentSecurityBarComponent = new DepartmentSecurityBarComponent();
         if(_loc2_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc2_)
            {
               _loc1_.setStyle("skinClass",DepartmentSecurityBarSkin);
               if(_loc2_)
               {
                  _loc1_.id = "rangeBarComponent";
                  if(_loc2_)
                  {
                     addr0061:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           §§goto(addr0082);
                        }
                     }
                     §§goto(addr008b);
                  }
                  §§goto(addr0082);
               }
               §§goto(addr0061);
            }
            addr0082:
            _loc1_.document = this;
            if(!_loc3_)
            {
               addr008b:
               this.rangeBarComponent = _loc1_;
               if(!(_loc3_ && _loc2_))
               {
                  BindingManager.executeBindings(this,"rangeBarComponent",this.rangeBarComponent);
               }
            }
            §§goto(addr00aa);
         }
         addr00aa:
         return _loc1_;
      }
      
      private function _DepartmentDetailTabComponent_Group5_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.width = 210;
            if(_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc2_)
               {
                  _loc1_.left = 0;
                  if(!_loc2_)
                  {
                     addr0060:
                     _loc1_.mxmlContent = [this._DepartmentDetailTabComponent_Group6_c(),this._DepartmentDetailTabComponent_StickyNoteComponent1_c(),this._DepartmentDetailTabComponent_BriskMCDynaLib3_c()];
                     if(_loc3_)
                     {
                        §§goto(addr007c);
                     }
                     §§goto(addr0088);
                  }
                  addr007c:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
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
            §§goto(addr0060);
         }
         §§goto(addr0088);
      }
      
      private function _DepartmentDetailTabComponent_Group6_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.bottom = -8;
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._DepartmentDetailTabComponent_BriskImageDynaLib2_i(),this._DepartmentDetailTabComponent_BriskMCDynaLib2_c()];
                  if(!(_loc2_ && _loc3_))
                  {
                     §§goto(addr006c);
                  }
               }
               §§goto(addr0078);
            }
            addr006c:
            if(!_loc1_.document)
            {
               if(!_loc2_)
               {
                  addr0078:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0078);
      }
      
      private function _DepartmentDetailTabComponent_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc3_)
         {
            _loc1_.horizontalCenter = 0;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.dynaLibName = "gui_popups_emergencyBook";
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.verticalCenter = 0;
                  if(_loc2_)
                  {
                     addr0063:
                     _loc1_.id = "polaroidImage";
                     if(!_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr007a:
                              _loc1_.document = this;
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr0098:
                                 this.polaroidImage = _loc1_;
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr00aa:
                                    BindingManager.executeBindings(this,"polaroidImage",this.polaroidImage);
                                 }
                                 §§goto(addr00b7);
                              }
                              §§goto(addr00aa);
                           }
                           addr00b7:
                           return _loc1_;
                        }
                        §§goto(addr0098);
                     }
                     §§goto(addr007a);
                  }
                  §§goto(addr0098);
               }
               §§goto(addr0063);
            }
            §§goto(addr00aa);
         }
         §§goto(addr0063);
      }
      
      private function _DepartmentDetailTabComponent_BriskMCDynaLib2_c() : BriskMCDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_ || _loc3_)
            {
               _loc1_.dynaMCSourceName = "stickytape_top";
               if(!_loc2_)
               {
                  _loc1_.height = 25;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr005e:
                     _loc1_.top = -12;
                     if(!(_loc2_ && _loc3_))
                     {
                        _loc1_.horizontalCenter = 0;
                        if(!_loc2_)
                        {
                           §§goto(addr0086);
                        }
                     }
                     §§goto(addr0091);
                  }
                  addr0086:
                  _loc1_.width = 140;
                  if(_loc3_)
                  {
                     addr0091:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr009d:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0091);
            }
            §§goto(addr005e);
         }
         §§goto(addr009d);
      }
      
      private function _DepartmentDetailTabComponent_StickyNoteComponent1_c() : StickyNoteComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(!_loc3_)
         {
            _loc1_.height = 128;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.horizontalCenter = 0;
               if(_loc2_)
               {
                  addr0052:
                  _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._DepartmentDetailTabComponent_Array8_c);
                  if(_loc2_ || Boolean(this))
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr007b:
                           _loc1_.document = this;
                        }
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr007b);
            }
         }
         §§goto(addr0052);
      }
      
      private function _DepartmentDetailTabComponent_Array8_c() : Array
      {
         return [this._DepartmentDetailTabComponent_VGroup1_c()];
      }
      
      private function _DepartmentDetailTabComponent_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.horizontalCenter = 0;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.mxmlContent = [this._DepartmentDetailTabComponent_ResidentialHeaderComponent1_i(),this._DepartmentDetailTabComponent_InfraUpgradeProgressComponent1_i()];
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr0071:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0071);
      }
      
      private function _DepartmentDetailTabComponent_ResidentialHeaderComponent1_i() : ResidentialHeaderComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ResidentialHeaderComponent = new ResidentialHeaderComponent();
         if(!_loc3_)
         {
            _loc1_.id = "evaluationHeader";
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr0054:
                     _loc1_.document = this;
                     if(_loc2_ || Boolean(this))
                     {
                        §§goto(addr0065);
                     }
                  }
                  §§goto(addr006f);
               }
               addr0065:
               this.evaluationHeader = _loc1_;
               if(!_loc3_)
               {
                  addr006f:
                  BindingManager.executeBindings(this,"evaluationHeader",this.evaluationHeader);
               }
               return _loc1_;
            }
            §§goto(addr006f);
         }
         §§goto(addr0054);
      }
      
      private function _DepartmentDetailTabComponent_InfraUpgradeProgressComponent1_i() : InfraUpgradeProgressComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:InfraUpgradeProgressComponent = new InfraUpgradeProgressComponent();
         if(_loc3_ || _loc3_)
         {
            _loc1_.id = "upgradeProgressComponent";
            if(_loc3_)
            {
               addr0045:
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.document = this;
                     if(!_loc2_)
                     {
                        addr006d:
                        this.upgradeProgressComponent = _loc1_;
                        if(!_loc2_)
                        {
                           addr0077:
                           BindingManager.executeBindings(this,"upgradeProgressComponent",this.upgradeProgressComponent);
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr0077);
               }
               §§goto(addr006d);
            }
            §§goto(addr0077);
         }
         §§goto(addr0045);
      }
      
      private function _DepartmentDetailTabComponent_BriskMCDynaLib3_c() : BriskMCDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.top = 0;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     §§goto(addr0074);
                  }
                  §§goto(addr0080);
               }
               addr0074:
               _loc1_.dynaMCSourceName = "stickytape_top";
               if(!_loc3_)
               {
                  addr0080:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr0090);
            }
         }
         addr0090:
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get evaluationHeader() : ResidentialHeaderComponent
      {
         return this._1415215337evaluationHeader;
      }
      
      public function set evaluationHeader(param1:ResidentialHeaderComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1415215337evaluationHeader;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1415215337evaluationHeader = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"evaluationHeader",_loc2_,param1));
                        }
                     }
                     §§goto(addr007b);
                  }
               }
               §§goto(addr006c);
            }
            addr007b:
            return;
         }
         §§goto(addr006c);
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourText() : LocaLabel
      {
         return this._800887486flavourText;
      }
      
      public function set flavourText(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._800887486flavourText;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._800887486flavourText = param1;
                  addr0040:
                  if(!_loc4_)
                  {
                     §§goto(addr0059);
                  }
                  §§goto(addr0070);
               }
               addr0059:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr0070:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourText",_loc2_,param1));
                  }
               }
               §§goto(addr007f);
            }
            addr007f:
            return;
         }
         §§goto(addr0040);
      }
      
      [Bindable(event="propertyChange")]
      public function get polaroidImage() : BriskImageDynaLib
      {
         return this._2112922897polaroidImage;
      }
      
      public function set polaroidImage(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2112922897polaroidImage;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  addr0057:
                  this._2112922897polaroidImage = param1;
                  if(!_loc4_)
                  {
                     addr0062:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"polaroidImage",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0080);
               }
               §§goto(addr0062);
            }
            addr0080:
            return;
         }
         §§goto(addr0057);
      }
      
      [Bindable(event="propertyChange")]
      public function get professionalList() : DepartmentSlotComponent
      {
         return this._1795991707professionalList;
      }
      
      public function set professionalList(param1:DepartmentSlotComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1795991707professionalList;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._1795991707professionalList = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"professionalList",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007e);
               }
               §§goto(addr006f);
            }
         }
         addr007e:
      }
      
      [Bindable(event="propertyChange")]
      public function get rangeBarComponent() : DepartmentSecurityBarComponent
      {
         return this._1296646151rangeBarComponent;
      }
      
      public function set rangeBarComponent(param1:DepartmentSecurityBarComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1296646151rangeBarComponent;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._1296646151rangeBarComponent = param1;
                  if(_loc3_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rangeBarComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0080);
                  }
                  §§goto(addr0071);
               }
            }
            addr0080:
            return;
         }
         §§goto(addr0071);
      }
      
      [Bindable(event="propertyChange")]
      public function get upgradeProgressComponent() : InfraUpgradeProgressComponent
      {
         return this._2007548268upgradeProgressComponent;
      }
      
      public function set upgradeProgressComponent(param1:InfraUpgradeProgressComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2007548268upgradeProgressComponent;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._2007548268upgradeProgressComponent = param1;
                  if(!_loc4_)
                  {
                     addr0043:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0052:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upgradeProgressComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0061);
                  }
               }
               §§goto(addr0052);
            }
            addr0061:
            return;
         }
         §§goto(addr0043);
      }
   }
}

