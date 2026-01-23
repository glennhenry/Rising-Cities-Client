package net.bigpoint.cityrama.view.residentialBook.ui.components
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
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.resources.ResourceManager;
   import mx.styles.*;
   import mx.utils.StringUtil;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.detailViews.vo.ResidentialDetailViewVo;
   import net.bigpoint.cityrama.model.detailViews.vo.SimpleItemVo;
   import net.bigpoint.cityrama.model.needsSystem.vo.ResidentialNeedPopupVo;
   import net.bigpoint.cityrama.model.residentialBook.vo.ResidentialNeedVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.common.components.DynamicPlusButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MasteryComponent;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.cityrama.view.common.components.UpgradeProgressComponent;
   import net.bigpoint.cityrama.view.common.skins.DynamicPlusButtonSkin;
   import net.bigpoint.cityrama.view.residentialBook.ui.skins.NeedsListSkin;
   import net.bigpoint.cityrama.view.residentialBook.ui.skins.OutputListSkin;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   
   public class ResidentialOverviewContentComponent extends Group
   {
      
      public static const CHANGE_RESIDENTS_EVENT:String = "CHANGE_RESIDENTS_EVENT";
      
      public static const BUY_PERMITS:String = "BUY_PERMITS";
      
      public static const OPEN_NEED_FEATURE:String = "OPEN_NEED_FEATURE";
      
      public static const OPEN_UPGRADE_FEATURE:String = "OPEN_UPGRADE_FEATURE";
      
      public static const OPEN_BALANCE_FEATURE:String = "OPEN_BALANCE_FEATURE";
      
      public static const CLOSE_AND_HARVEST:String = "CLOSE_AND_HARVEST";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         CHANGE_RESIDENTS_EVENT = "CHANGE_RESIDENTS_EVENT";
         if(_loc1_)
         {
            BUY_PERMITS = "BUY_PERMITS";
            if(_loc1_ || _loc1_)
            {
               OPEN_NEED_FEATURE = "OPEN_NEED_FEATURE";
               if(_loc1_)
               {
                  OPEN_UPGRADE_FEATURE = "OPEN_UPGRADE_FEATURE";
                  if(_loc1_ || _loc1_)
                  {
                     OPEN_BALANCE_FEATURE = "OPEN_BALANCE_FEATURE";
                     if(_loc1_)
                     {
                        addr007f:
                        CLOSE_AND_HARVEST = "CLOSE_AND_HARVEST";
                     }
                     §§goto(addr0088);
                  }
               }
            }
            §§goto(addr007f);
         }
         addr0088:
         return;
      }
      §§goto(addr007f);
      
      private var _1651530246centerImage:BriskImageDynaLib;
      
      private var _577985790changeButton:DynamicPlusButton;
      
      private var _1163225682cycleLabel:LocaLabel;
      
      private var _2034685672cycleLengthLabel:LocaLabel;
      
      private var _1768900535effectFeatureButton:DynamicImageButton;
      
      private var _713468034effectHeader:ResidentialHeaderComponent;
      
      private var _911984155effectsComponent:StickyNoteComponent;
      
      private var _1840699177energyGroup:HGroup;
      
      private var _1464688417energyIcon:BriskImageDynaLib;
      
      private var _1836601012energyLabel:LocaLabel;
      
      private var _1415215337evaluationHeader:ResidentialHeaderComponent;
      
      private var _1684755691flavorText:LocaLabel;
      
      private var _1341975547harvestButton:MultistateButton;
      
      private var _13393732harvestButtonGroup:VGroup;
      
      private var _1708165014harvestOutcomeHeader:LocaLabel;
      
      private var _1920126745harvestProgressComponent:TimerBarComponent;
      
      private var _804679831harvestProgressGroup:VGroup;
      
      private var _1830499226masteryComponent:MasteryComponent;
      
      private var _899936824moodGroup:HGroup;
      
      private var _306079728moodIcon:BriskImageDynaLib;
      
      private var _895838659moodLabel:LocaLabel;
      
      private var _239061202needFeatureButton:DynamicImageButton;
      
      private var _1304809590needsHeader:ResidentialHeaderComponent;
      
      private var _1093736667needsList:List;
      
      private var _1062744848outcomeList:List;
      
      private var _539958732polaroid:BriskImageDynaLib;
      
      private var _758791194quadrillePaperGroup:Group;
      
      private var _311765527residentIcon:BriskImageDynaLib;
      
      private var _311755234residentInfo:HGroup;
      
      private var _311618565residentName:LocaLabel;
      
      private var _1431748902residentNumbers:LocaLabel;
      
      private var _1036945555residentsData:VGroup;
      
      private var _1087758604upgradeFeatureButton:DynamicImageButton;
      
      private var _2007548268upgradeProgressComponent:UpgradeProgressComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ResidentialDetailViewVo;
      
      private var _isDirty:Boolean;
      
      private var _unhover:Boolean;
      
      private var _dynamicIsDirty:Boolean;
      
      public function ResidentialOverviewContentComponent()
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
               if(_loc2_ || _loc2_)
               {
                  this.percentWidth = 100;
                  addr0038:
                  if(!_loc1_)
                  {
                     addr004c:
                     this.percentHeight = 100;
                     if(_loc2_ || _loc1_)
                     {
                        this.maxWidth = 755;
                        if(!(_loc1_ && _loc1_))
                        {
                           this.horizontalCenter = 0;
                           if(!_loc1_)
                           {
                              this.mxmlContent = [this._ResidentialOverviewContentComponent_VGroup1_c()];
                              if(!_loc1_)
                              {
                                 addr0096:
                                 this.addEventListener("creationComplete",this.___ResidentialOverviewContentComponent_Group1_creationComplete);
                              }
                           }
                           §§goto(addr00a2);
                        }
                     }
                  }
                  §§goto(addr0096);
               }
               §§goto(addr004c);
            }
            addr00a2:
            return;
         }
         §§goto(addr0038);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            super.moduleFactory = param1;
            if(_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_ || _loc2_)
                  {
                     return;
                  }
               }
               addr0066:
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         §§goto(addr0066);
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super.initialize();
         }
      }
      
      private function handleCreationComplete() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this.upgradeFeatureButton.visible = this.upgradeFeatureButton.enabled = false;
         }
      }
      
      private function handleUpgradeMouseOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._isDirty = true;
            if(_loc3_)
            {
               this._unhover = true;
               if(_loc3_ || Boolean(param1))
               {
                  invalidateProperties();
               }
            }
         }
      }
      
      private function handleUpgradeMouseOver(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc3_:ResidentialNeedPopupVo = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         if(_loc10_)
         {
            §§push(this.centerImage);
            §§push("FieldItem_");
            if(!(_loc9_ && Boolean(param1)))
            {
               §§push(this._data);
               if(_loc10_ || Boolean(_loc2_))
               {
                  §§push(§§pop().nextResidentialDetail.gfxId);
                  if(!(_loc9_ && Boolean(param1)))
                  {
                     §§push(§§pop() + §§pop());
                     if(_loc10_)
                     {
                        addr006a:
                        §§push("_level");
                        if(_loc10_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc10_)
                           {
                              addr0084:
                              addr007e:
                              §§push(§§pop() + (this._data.upgradeCurrentLevel + 1));
                              if(_loc10_)
                              {
                                 addr008b:
                                 addr008e:
                                 §§push(§§pop() + "_big");
                              }
                              §§pop().dynaBmpSourceName = §§pop();
                              addr0091:
                              var _loc2_:Array = [];
                              if(!(_loc9_ && Boolean(_loc3_)))
                              {
                                 _loc2_.push(this._data.nextResidentialDetail.rentalIncomeVo);
                                 if(_loc10_ || Boolean(_loc2_))
                                 {
                                    _loc2_.push(this._data.nextResidentialDetail.needIncomeVo);
                                    if(_loc10_ || Boolean(param1))
                                    {
                                       addr00dc:
                                       this.outcomeList.dataProvider = new ArrayCollection(_loc2_);
                                    }
                                    _loc2_ = [];
                                    loop0:
                                    for each(_loc3_ in this._data.nextResidentialDetail.needs)
                                    {
                                       if(_loc10_)
                                       {
                                          §§push(ResourceManager.getInstance().getString(String("rcl.playfielditems.name"),String("rcl.playfielditems.name." + _loc3_.parentLocaleId)));
                                          if(_loc10_ || Boolean(param1))
                                          {
                                             §§push(§§pop());
                                             if(_loc10_ || Boolean(this))
                                             {
                                                _loc5_ = §§pop();
                                                if(!(_loc9_ && Boolean(this)))
                                                {
                                                   addr035e:
                                                   §§push(this._data.residentialFieldObjectVo.currentResidentType);
                                                   loop1:
                                                   while(true)
                                                   {
                                                      var _loc8_:* = §§pop();
                                                      if(!(_loc9_ && Boolean(this)))
                                                      {
                                                         §§push(ServerResConst.RESOURCE_RICHMEN);
                                                         if(!(_loc9_ && Boolean(_loc3_)))
                                                         {
                                                            §§push(_loc8_);
                                                            if(_loc10_ || Boolean(param1))
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc10_)
                                                                  {
                                                                     addr03a5:
                                                                     §§push(0);
                                                                     if(_loc10_)
                                                                     {
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr0405:
                                                                     §§push(2);
                                                                     if(_loc9_ && Boolean(param1))
                                                                     {
                                                                     }
                                                                  }
                                                                  addr0425:
                                                                  switch(§§pop())
                                                                  {
                                                                     case 0:
                                                                        §§push(_loc5_);
                                                                        if(_loc10_ || Boolean(param1))
                                                                        {
                                                                           §§push(" + ");
                                                                           if(_loc10_ || Boolean(_loc2_))
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc10_ || Boolean(param1))
                                                                              {
                                                                                 §§push(_loc3_.vcBonus);
                                                                                 if(!(_loc10_ || Boolean(_loc3_)))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!(_loc9_ && Boolean(_loc3_)))
                                                                                 {
                                                                                    §§push(" ");
                                                                                    if(_loc10_ || Boolean(param1))
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          addr01cd:
                                                                                          §§push(ResourceManager.getInstance());
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             §§push(§§pop().getString(String("rcl.misc.resources"),String("rcl.misc.resources.virtualcurrency")));
                                                                                             if(!(_loc10_ || Boolean(param1)))
                                                                                             {
                                                                                                addr02b1:
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(_loc10_ || Boolean(_loc3_))
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   if(_loc10_ || Boolean(param1))
                                                                                                   {
                                                                                                      §§goto(addr02cf);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr0336:
                                                                                                   §§push(§§pop());
                                                                                                   if(!(_loc10_ || Boolean(param1)))
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                }
                                                                                                _loc4_ = §§pop();
                                                                                                if(!(_loc9_ && Boolean(_loc2_)))
                                                                                                {
                                                                                                   break loop1;
                                                                                                }
                                                                                                continue loop0;
                                                                                             }
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   _loc4_ = §§pop();
                                                                                                   if(_loc10_ || Boolean(param1))
                                                                                                   {
                                                                                                   }
                                                                                                   break loop1;
                                                                                                }
                                                                                                addr02cf:
                                                                                                addr02cf:
                                                                                                _loc4_ = §§pop();
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                }
                                                                                                break loop1;
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr0335:
                                                                                             addr0321:
                                                                                             §§push(§§pop() + §§pop().getString(String("rcl.misc.resources"),String("rcl.misc.resources.educationpoints")));
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr026b:
                                                                                          §§push(" ");
                                                                                          if(_loc10_ || Boolean(_loc3_))
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                §§push(ResourceManager.getInstance());
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   §§push(§§pop().getString(String("rcl.misc.resources"),String("rcl.misc.resources.productionpoints")));
                                                                                                   if(!(_loc9_ && Boolean(this)))
                                                                                                   {
                                                                                                      §§goto(addr02b1);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr0335);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr0321);
                                                                                                }
                                                                                                §§goto(addr0335);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr030c:
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(_loc10_ || Boolean(_loc3_))
                                                                                             {
                                                                                                addr031b:
                                                                                                §§goto(addr0321);
                                                                                                §§push(ResourceManager.getInstance());
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr0336);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr0309:
                                                                                    §§push(" ");
                                                                                 }
                                                                                 §§goto(addr030c);
                                                                              }
                                                                              §§goto(addr01cd);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr022f:
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!(_loc9_ && Boolean(_loc3_)))
                                                                              {
                                                                                 §§push(_loc3_.ppBonus);
                                                                                 if(_loc9_ && Boolean(_loc3_))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!(_loc9_ && Boolean(this)))
                                                                                 {
                                                                                    §§goto(addr026b);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr0309);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr031b);
                                                                        }
                                                                        continue;
                                                                     case 1:
                                                                        §§push(_loc5_);
                                                                        if(!_loc9_)
                                                                        {
                                                                           §§push(" + ");
                                                                           if(_loc10_)
                                                                           {
                                                                              §§goto(addr022f);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr02ef:
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc10_ || Boolean(_loc2_))
                                                                              {
                                                                                 §§push(_loc3_.epBonus);
                                                                                 break;
                                                                              }
                                                                           }
                                                                           §§goto(addr031b);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr02ec:
                                                                           §§push(" + ");
                                                                        }
                                                                        §§goto(addr02ef);
                                                                     case 2:
                                                                        §§push(_loc5_);
                                                                        if(!(_loc9_ && Boolean(this)))
                                                                        {
                                                                           §§goto(addr02ec);
                                                                           break;
                                                                        }
                                                                        continue;
                                                                     default:
                                                                        break loop1;
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!_loc9_)
                                                                  {
                                                                     §§goto(addr0309);
                                                                  }
                                                                  §§goto(addr031b);
                                                               }
                                                               else
                                                               {
                                                                  §§push(ServerResConst.RESOURCE_WORKERS);
                                                                  if(_loc10_ || Boolean(_loc2_))
                                                                  {
                                                                     §§push(_loc8_);
                                                                     if(!(_loc9_ && Boolean(param1)))
                                                                     {
                                                                        addr03d4:
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(!(_loc9_ && Boolean(param1)))
                                                                           {
                                                                              §§push(1);
                                                                              if(_loc10_ || Boolean(_loc2_))
                                                                              {
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr0405);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr0401:
                                                                           addr03ff:
                                                                           if(ServerResConst.RESOURCE_ACADEMICS === _loc8_)
                                                                           {
                                                                              §§goto(addr0405);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(3);
                                                                           }
                                                                        }
                                                                        §§goto(addr0425);
                                                                     }
                                                                     §§goto(addr0401);
                                                                  }
                                                                  §§goto(addr03ff);
                                                               }
                                                            }
                                                            §§goto(addr03d4);
                                                         }
                                                         §§goto(addr03ff);
                                                      }
                                                      §§goto(addr03a5);
                                                   }
                                                   addr0368:
                                                }
                                                _loc2_.push(new ResidentialNeedVo(_loc3_.dynaLibName,_loc3_.imageId,_loc3_.fulfilled,_loc3_.locked,_loc3_.buildingLevelRequired,_loc4_));
                                                continue;
                                             }
                                             §§goto(addr02cf);
                                          }
                                          §§goto(addr0368);
                                       }
                                       §§goto(addr035e);
                                    }
                                    _loc2_ = this.ensureUpgradeNeedListIsInOrder(_loc2_);
                                    if(!_loc9_)
                                    {
                                       this.needsList.dataProvider = new ArrayCollection(_loc2_);
                                       if(!_loc9_)
                                       {
                                          §§goto(addr048d);
                                       }
                                       §§goto(addr04e0);
                                    }
                                    addr048d:
                                    this.setResidents(this._data.nextResidentialDetail.residentInfo);
                                    if(!(_loc9_ && Boolean(param1)))
                                    {
                                       this.setEffects(this._data.nextResidentialDetail.energyEffect,this._data.nextResidentialDetail.moodEffect);
                                       if(_loc10_ || Boolean(_loc2_))
                                       {
                                          addr04e0:
                                          this.setTooltips();
                                       }
                                    }
                                    return;
                                 }
                              }
                              §§goto(addr00dc);
                           }
                           §§goto(addr008b);
                        }
                        §§goto(addr008e);
                     }
                     §§goto(addr008b);
                  }
                  §§goto(addr0084);
               }
               §§goto(addr007e);
            }
            §§goto(addr006a);
         }
         §§goto(addr0091);
      }
      
      private function ensureUpgradeNeedListIsInOrder(param1:Array) : Array
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc4_:ResidentialNeedVo = null;
         var _loc5_:ResidentialNeedVo = null;
         var _loc2_:Array = this.needsList.dataProvider.toArray();
         var _loc3_:Array = new Array();
         for each(_loc4_ in _loc2_)
         {
            for each(_loc5_ in param1)
            {
               if(!_loc11_)
               {
                  break;
               }
               if(_loc4_.assetImageName == _loc5_.assetImageName)
               {
                  if(!(_loc10_ && Boolean(this)))
                  {
                     _loc3_[_loc2_.indexOf(_loc4_)] = _loc5_;
                  }
                  break;
               }
            }
         }
         return _loc3_;
      }
      
      private function onNeedFeatureClick() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            dispatchEvent(new Event(OPEN_NEED_FEATURE,true,true));
         }
      }
      
      private function onUpgradeFeatureClick() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            dispatchEvent(new Event(OPEN_UPGRADE_FEATURE,true,true));
         }
      }
      
      private function onBalanceFeatureClick() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            dispatchEvent(new Event(OPEN_BALANCE_FEATURE,true,true));
         }
      }
      
      public function set data(param1:ResidentialDetailViewVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(_loc2_ || Boolean(param1))
               {
                  this._isDirty = true;
                  if(!(_loc3_ && _loc3_))
                  {
                     this._dynamicIsDirty = true;
                     if(!_loc3_)
                     {
                        addr0068:
                        this._data = param1;
                        if(_loc2_)
                        {
                           addr0072:
                           invalidateProperties();
                        }
                     }
                     §§goto(addr0077);
                  }
                  §§goto(addr0072);
               }
               §§goto(addr0068);
            }
            addr0077:
            return;
         }
         §§goto(addr0072);
      }
      
      public function set updateDynamicData(param1:ResidentialDetailViewVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(_loc3_)
               {
                  this._dynamicIsDirty = true;
                  if(!(_loc2_ && _loc3_))
                  {
                     §§goto(addr0047);
                  }
                  §§goto(addr0051);
               }
               addr0047:
               this._data = param1;
               if(!_loc2_)
               {
                  addr0051:
                  invalidateProperties();
               }
               §§goto(addr0056);
            }
            addr0056:
            return;
         }
         §§goto(addr0051);
      }
      
      override protected function commitProperties() : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1638
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      private function setTooltips() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(this._data.upgradeCountTotal);
         if(_loc3_ || _loc3_)
         {
            §§push(§§pop() - this._data.harvestCount);
         }
         var _loc1_:int = §§pop();
         if(_loc3_)
         {
            §§push(this.upgradeProgressComponent);
            if(!_loc2_)
            {
               §§pop().progressBar.toolTip = StringUtil.substitute(ResourceManager.getInstance().getString(String("rcl.tooltips.residentialBook"),String("rcl.tooltips.residentialBook.upgradeBar")),_loc1_);
               if(_loc3_ || Boolean(_loc1_))
               {
                  §§goto(addr0078);
               }
               §§goto(addr01ee);
            }
            addr0078:
            this.upgradeProgressComponent.upgradeButton.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.residentialBook"),String("rcl.tooltips.residentialBook.upgradeButton"));
            §§goto(addr0074);
         }
         addr0074:
         if(!(_loc2_ && _loc3_))
         {
            this.harvestProgressComponent.progressBar.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.residentialBook"),String("rcl.tooltips.residentialBook.timer"));
            if(!(_loc2_ && _loc2_))
            {
               this.polaroid.toolTip = ResourceManager.getInstance().getString(String("rcl.playfielditems.name"),String("rcl.playfielditems.name." + this._data.localeId));
               if(!_loc2_)
               {
                  this.centerImage.toolTip = this.polaroid.toolTip;
                  if(!_loc2_)
                  {
                     addr0120:
                     this.needFeatureButton.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.residentialBook"),String("rcl.tooltips.residentialBook.feature.needs"));
                     if(!_loc2_)
                     {
                        this.effectFeatureButton.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.residentialBook"),String("rcl.tooltips.residentialBook.feature.balance"));
                        if(_loc3_)
                        {
                           §§goto(addr016c);
                        }
                     }
                     §§goto(addr01b7);
                  }
                  §§goto(addr0192);
               }
               §§goto(addr016c);
            }
            §§goto(addr0120);
         }
         addr016c:
         this.upgradeFeatureButton.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.residentialBook"),String("rcl.tooltips.residentialBook.feature.upgrade"));
         if(!_loc2_)
         {
            addr0192:
            this.energyGroup.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.residentialBook"),String("rcl.tooltips.residentialBook.effects.energy"));
            if(_loc3_)
            {
               this.moodGroup.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.residentialBook"),String("rcl.tooltips.residentialBook.effects.mood"));
               addr01b7:
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr01ee:
                  this.harvestButton.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.residentialBook"),String("rcl.tooltips.residentialBook.harvestButton"));
               }
            }
         }
      }
      
      private function setTapes() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            §§push(this.effectsComponent);
            if(!_loc1_)
            {
               §§pop().rightTape.setStyle("top",20);
               if(!_loc1_)
               {
                  §§push(this.effectsComponent);
                  if(_loc2_)
                  {
                     §§pop().rightTape.setStyle("bottom",20);
                     if(!(_loc1_ && _loc2_))
                     {
                        addr006b:
                        §§push(this.effectsComponent);
                        if(_loc2_)
                        {
                           addr0074:
                           §§pop().leftTape.setStyle("top",20);
                           if(!(_loc1_ && Boolean(this)))
                           {
                              addr008f:
                              this.effectsComponent.leftTape.setStyle("bottom",20);
                           }
                           §§goto(addr009a);
                        }
                        §§goto(addr008f);
                     }
                     §§goto(addr009a);
                  }
                  §§goto(addr0074);
               }
               addr009a:
               return;
            }
            §§goto(addr0074);
         }
         §§goto(addr006b);
      }
      
      private function setEffects(param1:SimpleItemVo, param2:SimpleItemVo) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_ || _loc3_)
         {
            §§push(this.energyIcon);
            if(_loc4_)
            {
               §§push(param1.imageId);
               if(_loc4_ || Boolean(param1))
               {
                  §§pop().dynaBmpSourceName = §§pop();
                  if(!_loc5_)
                  {
                     addr004c:
                     this.energyIcon.dynaLibName = param1.dynaLibName;
                     addr0049:
                  }
                  addr004e:
                  var _loc3_:* = "";
                  if(_loc4_)
                  {
                     §§push(param1.colorModifier);
                     if(_loc4_)
                     {
                        §§push(0);
                        if(_loc4_)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(_loc4_ || Boolean(this))
                              {
                                 §§push(this.energyLabel);
                                 if(!_loc5_)
                                 {
                                    §§push("styleName");
                                    if(!(_loc5_ && Boolean(this)))
                                    {
                                       §§push("outcomeNeutral");
                                       if(!_loc5_)
                                       {
                                          §§pop().setStyle(§§pop(),§§pop());
                                          if(_loc5_ && Boolean(_loc3_))
                                          {
                                          }
                                          this.energyLabel.text = _loc3_ + LocaUtils.getThousendSeperatedNumber(Math.abs(param1.amount));
                                          addr015f:
                                          addr0163:
                                          if(_loc4_ || Boolean(param1))
                                          {
                                             addr0190:
                                             §§push(this.moodIcon);
                                             if(_loc4_)
                                             {
                                                §§push(param2.imageId);
                                                if(_loc4_)
                                                {
                                                   §§pop().dynaBmpSourceName = §§pop();
                                                   if(!(_loc5_ && Boolean(param1)))
                                                   {
                                                      addr01bb:
                                                      this.moodIcon.dynaLibName = param2.dynaLibName;
                                                      addr01b8:
                                                      if(_loc4_)
                                                      {
                                                         §§push("");
                                                         if(!_loc5_)
                                                         {
                                                            _loc3_ = §§pop();
                                                            if(_loc4_)
                                                            {
                                                               addr01d2:
                                                               §§push(param2.colorModifier);
                                                               if(_loc4_)
                                                               {
                                                                  §§push(0);
                                                                  if(!(_loc5_ && Boolean(param2)))
                                                                  {
                                                                     if(§§pop() == §§pop())
                                                                     {
                                                                        if(!(_loc5_ && Boolean(param2)))
                                                                        {
                                                                           §§push(this.moodLabel);
                                                                           if(!(_loc5_ && Boolean(param1)))
                                                                           {
                                                                              §§push("styleName");
                                                                              if(!(_loc5_ && Boolean(param1)))
                                                                              {
                                                                                 §§push("outcomeNeutral");
                                                                                 if(_loc4_ || Boolean(param2))
                                                                                 {
                                                                                    §§pop().setStyle(§§pop(),§§pop());
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       addr026e:
                                                                                       §§push(this.moodLabel);
                                                                                       if(!(_loc5_ && Boolean(param1)))
                                                                                       {
                                                                                          §§push("styleName");
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             §§goto(addr0288);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr02e0:
                                                                                             §§push("outcomeNegative");
                                                                                          }
                                                                                          §§goto(addr02e3);
                                                                                       }
                                                                                       §§goto(addr02f0);
                                                                                    }
                                                                                    §§goto(addr02ec);
                                                                                 }
                                                                                 §§goto(addr02e3);
                                                                              }
                                                                              addr0288:
                                                                              §§push("outcomePositive");
                                                                              if(!(_loc5_ && Boolean(param1)))
                                                                              {
                                                                                 §§pop().setStyle(§§pop(),§§pop());
                                                                                 if(_loc4_ || Boolean(param1))
                                                                                 {
                                                                                    addr02f0:
                                                                                    this.moodLabel.text = _loc3_ + LocaUtils.getThousendSeperatedNumber(Math.abs(param2.amount));
                                                                                    addr02ec:
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr02e3:
                                                                                 §§pop().setStyle(§§pop(),§§pop());
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    §§goto(addr02ec);
                                                                                 }
                                                                              }
                                                                              §§goto(addr0304);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr02de:
                                                                              §§push("styleName");
                                                                           }
                                                                           §§goto(addr02e0);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr0244:
                                                                        addr0242:
                                                                        if(param2.colorModifier > 0)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              §§push("+");
                                                                              if(_loc4_ || Boolean(_loc3_))
                                                                              {
                                                                                 addr025f:
                                                                                 _loc3_ = §§pop();
                                                                                 if(!(_loc5_ && Boolean(param1)))
                                                                                 {
                                                                                    §§goto(addr026e);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr02c0:
                                                                                    §§push(this.moodLabel);
                                                                                    if(!(_loc5_ && Boolean(param2)))
                                                                                    {
                                                                                       §§goto(addr02de);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr02f0);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr02b1:
                                                                                 _loc3_ = §§pop();
                                                                                 if(!(_loc5_ && Boolean(param2)))
                                                                                 {
                                                                                    §§goto(addr02c0);
                                                                                 }
                                                                              }
                                                                              §§goto(addr02ec);
                                                                           }
                                                                           §§goto(addr026e);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push("-");
                                                                        }
                                                                        §§goto(addr02b1);
                                                                     }
                                                                     §§goto(addr02ec);
                                                                  }
                                                                  §§goto(addr0244);
                                                               }
                                                               §§goto(addr0242);
                                                            }
                                                            §§goto(addr02ec);
                                                         }
                                                         §§goto(addr025f);
                                                      }
                                                   }
                                                   §§goto(addr02ec);
                                                }
                                                §§goto(addr01bb);
                                             }
                                             §§goto(addr01b8);
                                          }
                                          §§goto(addr02ec);
                                       }
                                       else
                                       {
                                          addr014e:
                                          §§pop().setStyle(§§pop(),§§pop());
                                          if(_loc4_ || Boolean(this))
                                          {
                                             §§goto(addr015f);
                                          }
                                       }
                                       §§goto(addr0304);
                                    }
                                    else
                                    {
                                       addr014b:
                                       §§push("outcomeNegative");
                                    }
                                    §§goto(addr014e);
                                 }
                                 else
                                 {
                                    addr0149:
                                    §§push("styleName");
                                 }
                                 §§goto(addr014b);
                              }
                              §§goto(addr02ec);
                           }
                           else
                           {
                              §§push(param1.colorModifier);
                              if(_loc4_)
                              {
                                 addr00bd:
                                 §§push(0);
                                 if(_loc4_ || Boolean(_loc3_))
                                 {
                                    if(§§pop() > §§pop())
                                    {
                                       if(!_loc5_)
                                       {
                                          §§push("+");
                                          if(_loc4_)
                                          {
                                             _loc3_ = §§pop();
                                             if(_loc4_)
                                             {
                                                §§push(this.energyLabel);
                                                if(_loc4_)
                                                {
                                                   §§push("styleName");
                                                   if(_loc4_)
                                                   {
                                                      §§push("outcomePositive");
                                                      if(_loc4_ || Boolean(_loc3_))
                                                      {
                                                         §§pop().setStyle(§§pop(),§§pop());
                                                         if(!_loc5_)
                                                         {
                                                            §§goto(addr015f);
                                                         }
                                                         §§goto(addr02ec);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr014e);
                                                      }
                                                      return;
                                                   }
                                                   §§goto(addr014b);
                                                   §§goto(addr014e);
                                                }
                                                §§goto(addr0163);
                                             }
                                             §§goto(addr026e);
                                          }
                                          §§goto(addr02b1);
                                       }
                                       §§goto(addr02ec);
                                    }
                                    else
                                    {
                                       §§push("-");
                                       if(_loc4_ || Boolean(this))
                                       {
                                          _loc3_ = §§pop();
                                          if(_loc4_ || Boolean(param2))
                                          {
                                             §§push(this.energyLabel);
                                             if(!(_loc5_ && Boolean(_loc3_)))
                                             {
                                                §§goto(addr0149);
                                             }
                                             §§goto(addr0163);
                                          }
                                          §§goto(addr0190);
                                       }
                                    }
                                    §§goto(addr02b1);
                                 }
                                 §§goto(addr0244);
                              }
                           }
                           §§goto(addr0242);
                        }
                        §§goto(addr0244);
                     }
                     §§goto(addr00bd);
                  }
                  §§goto(addr01d2);
               }
               §§goto(addr004c);
            }
            §§goto(addr0049);
         }
         §§goto(addr004e);
      }
      
      private function setResidents(param1:SimpleItemVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            §§push(this.residentIcon);
            if(!(_loc2_ && Boolean(param1)))
            {
               §§push(param1.dynaLibName);
               if(_loc3_)
               {
                  §§pop().dynaLibName = §§pop();
                  if(_loc3_)
                  {
                     addr0041:
                     §§push(this.residentIcon);
                     if(_loc3_)
                     {
                        §§push(param1.imageId);
                        if(!(_loc2_ && Boolean(param1)))
                        {
                           §§goto(addr0068);
                        }
                        §§goto(addr0077);
                     }
                     §§goto(addr0073);
                  }
                  §§goto(addr006f);
               }
               addr0068:
               §§pop().dynaBmpSourceName = §§pop();
               if(!_loc2_)
               {
                  addr0077:
                  this.residentIcon.toolTip = param1.imageTooltip;
                  addr0073:
                  addr006f:
                  if(_loc3_ || _loc3_)
                  {
                     this.residentName.text = param1.text;
                     if(_loc3_)
                     {
                        §§goto(addr0094);
                     }
                     §§goto(addr00cd);
                  }
                  addr0094:
                  §§push(this.residentNumbers);
                  §§push(param1.amount + "/");
                  if(_loc3_ || Boolean(param1))
                  {
                     §§push(§§pop() + param1.maxAmount);
                  }
                  §§pop().text = §§pop();
                  if(!(_loc2_ && _loc3_))
                  {
                     addr00cd:
                     this.residentsData.toolTip = param1.textTooltip;
                  }
                  §§goto(addr00d8);
               }
               addr00d8:
               return;
            }
            §§goto(addr0073);
         }
         §§goto(addr0041);
      }
      
      private function handleChangeResidentClick() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this.changeButton);
            if(!_loc1_)
            {
               if(!§§pop().inactive)
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     addr004b:
                     if(!this.changeButton.showPlus)
                     {
                        if(!_loc1_)
                        {
                           dispatchEvent(new Event(CHANGE_RESIDENTS_EVENT,false));
                           if(_loc2_)
                           {
                           }
                        }
                     }
                     else
                     {
                        dispatchEvent(new Event(BUY_PERMITS,false));
                     }
                  }
               }
               §§goto(addr007c);
            }
            §§goto(addr004b);
         }
         addr007c:
      }
      
      private function handleHarvestReady(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(param1))
         {
            this.harvestProgressGroup.visible = this.harvestProgressGroup.includeInLayout = false;
            if(_loc4_ || Boolean(param1))
            {
               this.harvestButtonGroup.visible = this.harvestButtonGroup.includeInLayout = true;
            }
         }
      }
      
      private function handleHarvest(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            dispatchEvent(new Event(CLOSE_AND_HARVEST,true));
            if(!_loc2_)
            {
               this.harvestButton.enabled = false;
            }
         }
      }
      
      private function _ResidentialOverviewContentComponent_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.height = 345;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.gap = 0;
                  if(!_loc3_)
                  {
                     _loc1_.verticalAlign = "middle";
                     if(_loc2_ || _loc3_)
                     {
                        §§goto(addr0074);
                     }
                     §§goto(addr00a7);
                  }
                  addr0074:
                  _loc1_.horizontalAlign = "center";
                  if(_loc2_)
                  {
                     _loc1_.mxmlContent = [this._ResidentialOverviewContentComponent_LocaLabel1_i(),this._ResidentialOverviewContentComponent_HGroup1_c()];
                     if(_loc2_ || Boolean(this))
                     {
                        addr00a7:
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
               §§goto(addr00b7);
            }
            §§goto(addr0074);
         }
         addr00b7:
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.percentWidth = 90;
            if(!_loc3_)
            {
               _loc1_.height = 38;
               if(!_loc3_)
               {
                  _loc1_.styleName = "flavorText";
                  if(!_loc3_)
                  {
                     _loc1_.verticalCenter = 0;
                     if(!_loc3_)
                     {
                        _loc1_.id = "flavorText";
                        if(!_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || _loc3_)
                              {
                                 addr0087:
                                 _loc1_.document = this;
                                 if(!_loc3_)
                                 {
                                    §§goto(addr0090);
                                 }
                              }
                              §§goto(addr00a2);
                           }
                           addr0090:
                           this.flavorText = _loc1_;
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              addr00a2:
                              BindingManager.executeBindings(this,"flavorText",this.flavorText);
                           }
                           §§goto(addr00af);
                        }
                     }
                     §§goto(addr0087);
                  }
                  §§goto(addr00af);
               }
               §§goto(addr00a2);
            }
            addr00af:
            return _loc1_;
         }
         §§goto(addr00a2);
      }
      
      private function _ResidentialOverviewContentComponent_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._ResidentialOverviewContentComponent_Group2_c(),this._ResidentialOverviewContentComponent_Group3_c(),this._ResidentialOverviewContentComponent_VGroup6_c()];
                  addr0045:
                  if(!_loc3_)
                  {
                     §§goto(addr006d);
                  }
                  §§goto(addr0081);
               }
               addr006d:
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0081:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
            §§goto(addr0081);
         }
         §§goto(addr0045);
      }
      
      private function _ResidentialOverviewContentComponent_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.mxmlContent = [this._ResidentialOverviewContentComponent_BriskImageDynaLib1_c(),this._ResidentialOverviewContentComponent_StickyNoteComponent1_c(),this._ResidentialOverviewContentComponent_ResidentialHeaderComponent2_i(),this._ResidentialOverviewContentComponent_DynamicImageButton1_i(),this._ResidentialOverviewContentComponent_BriskMCDynaLib1_c(),this._ResidentialOverviewContentComponent_DynamicImageButton2_i(),this._ResidentialOverviewContentComponent_HGroup2_c()];
            if(!_loc2_)
            {
               addr006a:
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr006a);
      }
      
      private function _ResidentialOverviewContentComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_popups_residentialPopup";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "quadrillepaper_bg";
               if(!(_loc2_ && _loc2_))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr006e:
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr006e);
      }
      
      private function _ResidentialOverviewContentComponent_StickyNoteComponent1_c() : StickyNoteComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.height = 140;
            if(_loc2_ || _loc3_)
            {
               _loc1_.top = -5;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ResidentialOverviewContentComponent_Array5_c);
                     if(!_loc3_)
                     {
                        addr008a:
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              addr009e:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr00a2);
                     }
                  }
               }
               §§goto(addr009e);
            }
            addr00a2:
            return _loc1_;
         }
         §§goto(addr008a);
      }
      
      private function _ResidentialOverviewContentComponent_Array5_c() : Array
      {
         return [this._ResidentialOverviewContentComponent_VGroup2_c()];
      }
      
      private function _ResidentialOverviewContentComponent_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_)
         {
            _loc1_.horizontalCenter = 0;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.mxmlContent = [this._ResidentialOverviewContentComponent_ResidentialHeaderComponent1_i(),this._ResidentialOverviewContentComponent_UpgradeProgressComponent1_i(),this._ResidentialOverviewContentComponent_MasteryComponent1_i()];
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  §§goto(addr0073);
               }
               §§goto(addr0087);
            }
            addr0073:
            if(!_loc1_.document)
            {
               if(_loc3_ || _loc2_)
               {
                  addr0087:
                  _loc1_.document = this;
               }
            }
            §§goto(addr008b);
         }
         addr008b:
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_ResidentialHeaderComponent1_i() : ResidentialHeaderComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ResidentialHeaderComponent = new ResidentialHeaderComponent();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.id = "evaluationHeader";
            if(_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     §§goto(addr005c);
                  }
                  §§goto(addr0077);
               }
               §§goto(addr006d);
            }
         }
         addr005c:
         _loc1_.document = this;
         if(_loc2_ || Boolean(_loc1_))
         {
            addr006d:
            this.evaluationHeader = _loc1_;
            if(!_loc3_)
            {
               addr0077:
               BindingManager.executeBindings(this,"evaluationHeader",this.evaluationHeader);
            }
         }
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_UpgradeProgressComponent1_i() : UpgradeProgressComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:UpgradeProgressComponent = new UpgradeProgressComponent();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.id = "upgradeProgressComponent";
            if(!_loc2_)
            {
               addr0043:
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.document = this;
                     if(_loc3_ || _loc2_)
                     {
                        §§goto(addr0073);
                     }
                     §§goto(addr007d);
                  }
               }
               addr0073:
               this.upgradeProgressComponent = _loc1_;
               if(_loc3_)
               {
                  addr007d:
                  BindingManager.executeBindings(this,"upgradeProgressComponent",this.upgradeProgressComponent);
               }
               §§goto(addr008a);
            }
            addr008a:
            return _loc1_;
         }
         §§goto(addr0043);
      }
      
      private function _ResidentialOverviewContentComponent_MasteryComponent1_i() : MasteryComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MasteryComponent = new MasteryComponent();
         if(!_loc3_)
         {
            _loc1_.id = "masteryComponent";
            if(_loc2_ || _loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     §§goto(addr0057);
                  }
                  §§goto(addr0072);
               }
               §§goto(addr0060);
            }
            addr0057:
            _loc1_.document = this;
            if(!_loc3_)
            {
               addr0060:
               this.masteryComponent = _loc1_;
               if(!(_loc3_ && Boolean(this)))
               {
                  addr0072:
                  BindingManager.executeBindings(this,"masteryComponent",this.masteryComponent);
               }
            }
            return _loc1_;
         }
         §§goto(addr0060);
      }
      
      private function _ResidentialOverviewContentComponent_ResidentialHeaderComponent2_i() : ResidentialHeaderComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ResidentialHeaderComponent = new ResidentialHeaderComponent();
         if(!_loc2_)
         {
            _loc1_.horizontalCenter = 0;
            if(_loc3_)
            {
               _loc1_.top = 130;
               if(_loc3_)
               {
                  _loc1_.id = "needsHeader";
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              addr007e:
                              this.needsHeader = _loc1_;
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 addr0090:
                                 BindingManager.executeBindings(this,"needsHeader",this.needsHeader);
                              }
                           }
                           §§goto(addr009d);
                        }
                     }
                     §§goto(addr007e);
                  }
                  §§goto(addr009d);
               }
               §§goto(addr0090);
            }
         }
         addr009d:
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_DynamicImageButton1_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.styleName = "featureInfoButton";
            if(!_loc2_)
            {
               _loc1_.right = 20;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.top = 126;
                  if(_loc3_)
                  {
                     addr005d:
                     _loc1_.addEventListener("click",this.__needFeatureButton_click);
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_.id = "needFeatureButton";
                        if(!_loc2_)
                        {
                           addr0081:
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr0099:
                                 _loc1_.document = this;
                                 if(!_loc2_)
                                 {
                                    addr00a2:
                                    this.needFeatureButton = _loc1_;
                                    if(_loc3_ || _loc3_)
                                    {
                                       addr00b4:
                                       BindingManager.executeBindings(this,"needFeatureButton",this.needFeatureButton);
                                    }
                                    §§goto(addr00c1);
                                 }
                                 §§goto(addr00b4);
                              }
                              addr00c1:
                              return _loc1_;
                           }
                           §§goto(addr00a2);
                        }
                        §§goto(addr0099);
                     }
                     §§goto(addr00b4);
                  }
                  §§goto(addr0081);
               }
               §§goto(addr005d);
            }
            §§goto(addr0081);
         }
         §§goto(addr005d);
      }
      
      public function __needFeatureButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this.onNeedFeatureClick();
         }
      }
      
      private function _ResidentialOverviewContentComponent_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc2_)
            {
               _loc1_.dynaMCSourceName = "stickytape_top";
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.top = -6;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     §§goto(addr0069);
                  }
                  §§goto(addr007b);
               }
               addr0069:
               _loc1_.horizontalCenter = 0;
               if(!(_loc2_ && Boolean(this)))
               {
                  addr007b:
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr0087:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr0087);
         }
         §§goto(addr007b);
      }
      
      private function _ResidentialOverviewContentComponent_DynamicImageButton2_i() : DynamicImageButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(_loc2_ || _loc2_)
         {
            _loc1_.styleName = "featureInfoButton";
            if(_loc2_)
            {
               addr0033:
               _loc1_.right = 20;
               if(!_loc3_)
               {
                  _loc1_.top = 7;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.addEventListener("click",this.__upgradeFeatureButton_click);
                     if(!_loc3_)
                     {
                        addr006b:
                        _loc1_.id = "upgradeFeatureButton";
                        if(!(_loc3_ && _loc2_))
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || Boolean(_loc1_))
                              {
                                 §§goto(addr009f);
                              }
                           }
                           §§goto(addr00b0);
                        }
                     }
                     addr009f:
                     _loc1_.document = this;
                     if(_loc2_ || _loc2_)
                     {
                        addr00b0:
                        this.upgradeFeatureButton = _loc1_;
                        if(!_loc3_)
                        {
                           addr00ba:
                           BindingManager.executeBindings(this,"upgradeFeatureButton",this.upgradeFeatureButton);
                        }
                     }
                     §§goto(addr00c7);
                  }
                  addr00c7:
                  return _loc1_;
               }
               §§goto(addr00ba);
            }
            §§goto(addr006b);
         }
         §§goto(addr0033);
      }
      
      public function __upgradeFeatureButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this.onUpgradeFeatureClick();
         }
      }
      
      private function _ResidentialOverviewContentComponent_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.verticalAlign = "middle";
            if(!_loc2_)
            {
               _loc1_.horizontalAlign = "center";
               if(!_loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.bottom = -4;
                     if(_loc3_)
                     {
                        _loc1_.mxmlContent = [this._ResidentialOverviewContentComponent_List1_i()];
                        addr0066:
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           addr008c:
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr00a0:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr00a4);
                        }
                        §§goto(addr00a0);
                     }
                     §§goto(addr00a4);
                  }
                  §§goto(addr0066);
               }
               addr00a4:
               return _loc1_;
            }
            §§goto(addr0066);
         }
         §§goto(addr008c);
      }
      
      private function _ResidentialOverviewContentComponent_List1_i() : List
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:List = new List();
         if(_loc3_)
         {
            _loc1_.itemRenderer = this._ResidentialOverviewContentComponent_ClassFactory1_c();
            if(!_loc2_)
            {
               _loc1_.setStyle("skinClass",NeedsListSkin);
               if(_loc3_ || _loc2_)
               {
                  addr0053:
                  _loc1_.id = "needsList";
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           §§goto(addr007d);
                        }
                     }
                     §§goto(addr0086);
                  }
                  addr007d:
                  _loc1_.document = this;
                  if(!_loc2_)
                  {
                     addr0086:
                     this.needsList = _loc1_;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        BindingManager.executeBindings(this,"needsList",this.needsList);
                     }
                  }
               }
               §§goto(addr00a5);
            }
            §§goto(addr0053);
         }
         addr00a5:
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_ClassFactory1_c() : ClassFactory
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ClassFactory = new ClassFactory();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.generator = NeedItemRendered;
         }
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.width = 210;
            if(_loc2_ || _loc3_)
            {
               §§goto(addr0048);
            }
            §§goto(addr0052);
         }
         addr0048:
         _loc1_.percentHeight = 100;
         if(_loc2_)
         {
            _loc1_.mxmlContent = [this._ResidentialOverviewContentComponent_StickyNoteComponent2_c(),this._ResidentialOverviewContentComponent_StickyNoteComponent3_c(),this._ResidentialOverviewContentComponent_BriskImageDynaLib3_i(),this._ResidentialOverviewContentComponent_Group4_c(),this._ResidentialOverviewContentComponent_BriskMCDynaLib2_c()];
            addr0052:
            if(!(_loc3_ && _loc2_))
            {
               §§goto(addr008d);
            }
            §§goto(addr0099);
         }
         addr008d:
         if(!_loc1_.document)
         {
            if(!_loc3_)
            {
               addr0099:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_StickyNoteComponent2_c() : StickyNoteComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.height = 90;
               if(_loc3_)
               {
                  _loc1_.top = -8;
                  if(!_loc2_)
                  {
                     addr0067:
                     _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ResidentialOverviewContentComponent_Array9_c);
                     if(!_loc2_)
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
                  return _loc1_;
               }
               §§goto(addr0067);
            }
            §§goto(addr0088);
         }
         §§goto(addr0067);
      }
      
      private function _ResidentialOverviewContentComponent_Array9_c() : Array
      {
         return [this._ResidentialOverviewContentComponent_HGroup3_i()];
      }
      
      private function _ResidentialOverviewContentComponent_HGroup3_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.horizontalAlign = "center";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.maxHeight = 80;
               if(_loc3_)
               {
                  addr003e:
                  _loc1_.paddingTop = -5;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.percentWidth = 100;
                     if(_loc3_)
                     {
                        addr005b:
                        _loc1_.gap = 2;
                        if(_loc3_)
                        {
                           _loc1_.mxmlContent = [this._ResidentialOverviewContentComponent_HGroup4_c(),this._ResidentialOverviewContentComponent_VGroup3_i(),this._ResidentialOverviewContentComponent_HGroup5_c()];
                           if(!(_loc2_ && _loc3_))
                           {
                              _loc1_.id = "residentInfo";
                              if(_loc3_ || _loc2_)
                              {
                                 addr00aa:
                                 if(!_loc1_.document)
                                 {
                                    if(_loc3_ || Boolean(_loc1_))
                                    {
                                       addr00be:
                                       _loc1_.document = this;
                                       if(!(_loc2_ && Boolean(_loc1_)))
                                       {
                                          §§goto(addr00db);
                                       }
                                    }
                                    §§goto(addr00ed);
                                 }
                                 addr00db:
                                 this.residentInfo = _loc1_;
                                 if(!(_loc2_ && Boolean(_loc1_)))
                                 {
                                    addr00ed:
                                    BindingManager.executeBindings(this,"residentInfo",this.residentInfo);
                                 }
                                 §§goto(addr00fa);
                              }
                           }
                           addr00fa:
                           return _loc1_;
                        }
                        §§goto(addr00ed);
                     }
                     §§goto(addr00be);
                  }
                  §§goto(addr00aa);
               }
               §§goto(addr005b);
            }
         }
         §§goto(addr003e);
      }
      
      private function _ResidentialOverviewContentComponent_HGroup4_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.horizontalAlign = "center";
            if(!_loc3_)
            {
               _loc1_.verticalAlign = "middle";
               if(!(_loc3_ && _loc2_))
               {
                  addr0051:
                  _loc1_.width = 42;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.mxmlContent = [this._ResidentialOverviewContentComponent_BriskImageDynaLib2_i()];
                     if(_loc2_)
                     {
                        §§goto(addr007e);
                     }
                     §§goto(addr008a);
                  }
               }
               addr007e:
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr008a:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr008e);
            }
            §§goto(addr0051);
         }
         addr008e:
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_residentialPopupNEW";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.dynaBmpSourceName = "postit_icon_worker";
               if(!_loc3_)
               {
                  addr004a:
                  _loc1_.id = "residentIcon";
                  if(!(_loc3_ && _loc2_))
                  {
                     addr005d:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           _loc1_.document = this;
                           if(_loc2_ || _loc2_)
                           {
                              addr0087:
                              this.residentIcon = _loc1_;
                              if(!_loc3_)
                              {
                                 BindingManager.executeBindings(this,"residentIcon",this.residentIcon);
                              }
                           }
                        }
                        return _loc1_;
                     }
                  }
               }
               §§goto(addr0087);
            }
            §§goto(addr005d);
         }
         §§goto(addr004a);
      }
      
      private function _ResidentialOverviewContentComponent_VGroup3_i() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || _loc3_)
         {
            _loc1_.width = 95;
            if(!_loc2_)
            {
               _loc1_.horizontalAlign = "left";
               if(!(_loc2_ && Boolean(this)))
               {
                  addr0051:
                  _loc1_.mxmlContent = [this._ResidentialOverviewContentComponent_LocaLabel2_i(),this._ResidentialOverviewContentComponent_LocaLabel3_i()];
                  if(_loc3_)
                  {
                     _loc1_.id = "residentsData";
                     if(!_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr008a:
                              _loc1_.document = this;
                              if(_loc3_ || Boolean(_loc1_))
                              {
                                 addr009b:
                                 this.residentsData = _loc1_;
                                 if(_loc3_)
                                 {
                                    addr00a5:
                                    BindingManager.executeBindings(this,"residentsData",this.residentsData);
                                 }
                              }
                              §§goto(addr00b2);
                           }
                           §§goto(addr00a5);
                        }
                        §§goto(addr009b);
                     }
                     addr00b2:
                     return _loc1_;
                  }
                  §§goto(addr008a);
               }
               §§goto(addr00a5);
            }
            §§goto(addr008a);
         }
         §§goto(addr0051);
      }
      
      private function _ResidentialOverviewContentComponent_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.styleName = "residentialOutputItem";
            if(_loc3_)
            {
               _loc1_.maxWidth = 95;
               if(!_loc2_)
               {
                  _loc1_.maxDisplayedLines = 1;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.id = "residentName";
                     if(!_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              §§goto(addr007e);
                           }
                           §§goto(addr0099);
                        }
                     }
                     §§goto(addr008f);
                  }
                  addr007e:
                  _loc1_.document = this;
                  if(_loc3_ || _loc2_)
                  {
                     addr008f:
                     this.residentName = _loc1_;
                     if(!_loc2_)
                     {
                        addr0099:
                        BindingManager.executeBindings(this,"residentName",this.residentName);
                     }
                  }
                  §§goto(addr00a6);
               }
               addr00a6:
               return _loc1_;
            }
         }
         §§goto(addr008f);
      }
      
      private function _ResidentialOverviewContentComponent_LocaLabel3_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.styleName = "residentNumbers";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.maxWidth = 92;
               if(!(_loc2_ && _loc2_))
               {
                  §§goto(addr005b);
               }
               §§goto(addr00b5);
            }
            §§goto(addr0085);
         }
         addr005b:
         _loc1_.maxDisplayedLines = 1;
         if(_loc3_)
         {
            _loc1_.id = "residentNumbers";
            if(_loc3_)
            {
               §§goto(addr0071);
            }
            §§goto(addr0085);
         }
         addr0071:
         if(!_loc1_.document)
         {
            if(!(_loc2_ && Boolean(this)))
            {
               addr0085:
               _loc1_.document = this;
               if(!(_loc2_ && _loc2_))
               {
                  §§goto(addr00a3);
               }
               §§goto(addr00b5);
            }
         }
         addr00a3:
         this.residentNumbers = _loc1_;
         if(!(_loc2_ && _loc3_))
         {
            addr00b5:
            BindingManager.executeBindings(this,"residentNumbers",this.residentNumbers);
         }
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_HGroup5_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.horizontalAlign = "center";
            if(_loc3_)
            {
               _loc1_.paddingTop = -6;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.mxmlContent = [this._ResidentialOverviewContentComponent_DynamicPlusButton1_i()];
                  if(_loc3_ || _loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           addr0081:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr0085);
               }
            }
            §§goto(addr0081);
         }
         addr0085:
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_DynamicPlusButton1_i() : DynamicPlusButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicPlusButton = new DynamicPlusButton();
         if(!_loc3_)
         {
            _loc1_.iconLibName = "gui_popups_residentialPopupNEW";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.iconImageName = "button_icon_key";
               if(!_loc3_)
               {
                  _loc1_.width = 40;
                  if(_loc2_)
                  {
                     addr004b:
                     _loc1_.setStyle("skinClass",DynamicPlusButtonSkin);
                     if(!_loc3_)
                     {
                        _loc1_.addEventListener("click",this.__changeButton_click);
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr007e:
                           _loc1_.id = "changeButton";
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              if(!_loc1_.document)
                              {
                                 if(_loc2_)
                                 {
                                    addr009d:
                                    _loc1_.document = this;
                                    if(!(_loc3_ && Boolean(_loc1_)))
                                    {
                                       addr00bc:
                                       this.changeButton = _loc1_;
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          addr00ce:
                                          BindingManager.executeBindings(this,"changeButton",this.changeButton);
                                       }
                                       §§goto(addr00db);
                                    }
                                    §§goto(addr00ce);
                                 }
                                 addr00db:
                                 return _loc1_;
                              }
                           }
                           §§goto(addr00bc);
                        }
                        §§goto(addr00ce);
                     }
                     §§goto(addr007e);
                  }
                  §§goto(addr00bc);
               }
               §§goto(addr007e);
            }
            §§goto(addr009d);
         }
         §§goto(addr004b);
      }
      
      public function __changeButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this.handleChangeResidentClick();
         }
      }
      
      private function _ResidentialOverviewContentComponent_StickyNoteComponent3_c() : StickyNoteComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.height = 75;
               if(_loc3_)
               {
                  _loc1_.top = 233;
                  if(_loc3_)
                  {
                     §§goto(addr0056);
                  }
                  §§goto(addr0073);
               }
               §§goto(addr007f);
            }
            addr0056:
            _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ResidentialOverviewContentComponent_Array14_c);
            if(_loc3_ || Boolean(this))
            {
               addr0073:
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr007f:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0073);
      }
      
      private function _ResidentialOverviewContentComponent_Array14_c() : Array
      {
         return [this._ResidentialOverviewContentComponent_VGroup4_i(),this._ResidentialOverviewContentComponent_VGroup5_i()];
      }
      
      private function _ResidentialOverviewContentComponent_VGroup4_i() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.horizontalCenter = 0;
            if(_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.percentHeight = 100;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.verticalAlign = "middle";
                     if(!_loc3_)
                     {
                        _loc1_.top = -10;
                        if(!_loc3_)
                        {
                           _loc1_.right = 5;
                           if(!(_loc3_ && _loc2_))
                           {
                              §§goto(addr0088);
                           }
                           §§goto(addr00b2);
                        }
                        §§goto(addr0088);
                     }
                     §§goto(addr0101);
                  }
                  addr0088:
                  _loc1_.includeInLayout = true;
                  if(_loc2_)
                  {
                     addr0091:
                     _loc1_.visible = true;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        _loc1_.mxmlContent = [this._ResidentialOverviewContentComponent_TimerBarComponent1_i()];
                        if(!_loc3_)
                        {
                           addr00b2:
                           _loc1_.id = "harvestProgressGroup";
                           if(!(_loc3_ && _loc2_))
                           {
                              if(!_loc1_.document)
                              {
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    _loc1_.document = this;
                                    if(_loc2_)
                                    {
                                       addr00ef:
                                       this.harvestProgressGroup = _loc1_;
                                       if(_loc2_ || _loc3_)
                                       {
                                          addr0101:
                                          BindingManager.executeBindings(this,"harvestProgressGroup",this.harvestProgressGroup);
                                       }
                                    }
                                    §§goto(addr010e);
                                 }
                              }
                              §§goto(addr00ef);
                           }
                           §§goto(addr0101);
                        }
                        §§goto(addr00ef);
                     }
                     §§goto(addr00b2);
                  }
                  addr010e:
                  return _loc1_;
               }
               §§goto(addr0091);
            }
            §§goto(addr00b2);
         }
         §§goto(addr0101);
      }
      
      private function _ResidentialOverviewContentComponent_TimerBarComponent1_i() : TimerBarComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:TimerBarComponent = new TimerBarComponent();
         if(!_loc3_)
         {
            _loc1_.showBoostButton = false;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.activeTimer = true;
               if(_loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc3_)
                  {
                     _loc1_.id = "harvestProgressComponent";
                     addr0046:
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              addr0079:
                              _loc1_.document = this;
                              if(_loc2_ || _loc2_)
                              {
                                 addr0096:
                                 this.harvestProgressComponent = _loc1_;
                                 if(_loc2_ || Boolean(this))
                                 {
                                    addr00a8:
                                    BindingManager.executeBindings(this,"harvestProgressComponent",this.harvestProgressComponent);
                                 }
                                 §§goto(addr00b5);
                              }
                              §§goto(addr00a8);
                           }
                           addr00b5:
                           return _loc1_;
                        }
                        §§goto(addr0096);
                     }
                  }
                  §§goto(addr0079);
               }
               §§goto(addr00a8);
            }
            §§goto(addr0046);
         }
         §§goto(addr0096);
      }
      
      private function _ResidentialOverviewContentComponent_VGroup5_i() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.includeInLayout = false;
            if(_loc2_ || Boolean(_loc1_))
            {
               addr0031:
               _loc1_.visible = false;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.percentWidth = 100;
                     §§goto(addr0054);
                  }
                  §§goto(addr00d2);
               }
               §§goto(addr00c0);
            }
            addr0054:
            if(!_loc3_)
            {
               _loc1_.top = -10;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.mxmlContent = [this._ResidentialOverviewContentComponent_MultistateButton1_i()];
                  if(!_loc3_)
                  {
                     _loc1_.id = "harvestButtonGroup";
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              §§goto(addr00a2);
                           }
                        }
                        §§goto(addr00c0);
                     }
                     addr00a2:
                     _loc1_.document = this;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr00c0:
                        this.harvestButtonGroup = _loc1_;
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr00d2:
                           BindingManager.executeBindings(this,"harvestButtonGroup",this.harvestButtonGroup);
                        }
                     }
                  }
                  §§goto(addr00df);
               }
               §§goto(addr00a2);
            }
            addr00df:
            return _loc1_;
         }
         §§goto(addr0031);
      }
      
      private function _ResidentialOverviewContentComponent_MultistateButton1_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               §§goto(addr0029);
            }
            §§goto(addr0061);
         }
         addr0029:
         _loc1_.addEventListener("click",this.__harvestButton_click);
         if(_loc2_ || _loc2_)
         {
            _loc1_.id = "harvestButton";
            if(!(_loc3_ && _loc2_))
            {
               addr0061:
               if(!_loc1_.document)
               {
                  if(_loc2_ || _loc3_)
                  {
                     §§goto(addr0082);
                  }
                  §§goto(addr009d);
               }
               §§goto(addr008b);
            }
         }
         addr0082:
         _loc1_.document = this;
         if(!_loc3_)
         {
            addr008b:
            this.harvestButton = _loc1_;
            if(!(_loc3_ && Boolean(this)))
            {
               addr009d:
               BindingManager.executeBindings(this,"harvestButton",this.harvestButton);
            }
         }
         return _loc1_;
      }
      
      public function __harvestButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this.handleHarvest(param1);
         }
      }
      
      private function _ResidentialOverviewContentComponent_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_residentialPopup";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "building_bg_polaroid_big";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_)
                  {
                     addr0059:
                     _loc1_.top = 55;
                     if(!_loc3_)
                     {
                        _loc1_.id = "polaroid";
                        if(_loc2_)
                        {
                           addr006e:
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || _loc2_)
                              {
                                 addr008f:
                                 _loc1_.document = this;
                                 if(_loc2_)
                                 {
                                    addr0098:
                                    this.polaroid = _loc1_;
                                    if(!_loc3_)
                                    {
                                       addr00a2:
                                       BindingManager.executeBindings(this,"polaroid",this.polaroid);
                                    }
                                 }
                              }
                              return _loc1_;
                           }
                           §§goto(addr0098);
                        }
                        §§goto(addr008f);
                     }
                     §§goto(addr006e);
                  }
                  §§goto(addr008f);
               }
               §§goto(addr00a2);
            }
            §§goto(addr0059);
         }
         §§goto(addr008f);
      }
      
      private function _ResidentialOverviewContentComponent_Group4_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.height = 160;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.width = 176;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.top = 65;
                  if(_loc2_ || _loc2_)
                  {
                     addr0069:
                     _loc1_.left = 17;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        _loc1_.mxmlContent = [this._ResidentialOverviewContentComponent_BriskImageDynaLib4_i()];
                        if(_loc2_)
                        {
                           addr0096:
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || _loc3_)
                              {
                                 addr00aa:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        return _loc1_;
                     }
                  }
                  §§goto(addr0096);
               }
               §§goto(addr0069);
            }
            §§goto(addr00aa);
         }
         §§goto(addr0069);
      }
      
      private function _ResidentialOverviewContentComponent_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.horizontalCenter = 0;
            if(!_loc2_)
            {
               _loc1_.verticalCenter = 0;
               if(_loc3_)
               {
                  addr0042:
                  _loc1_.id = "centerImage";
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              addr0079:
                              this.centerImage = _loc1_;
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr008b:
                                 BindingManager.executeBindings(this,"centerImage",this.centerImage);
                              }
                           }
                           §§goto(addr0098);
                        }
                        §§goto(addr008b);
                     }
                     §§goto(addr0079);
                  }
                  §§goto(addr008b);
               }
               addr0098:
               return _loc1_;
            }
            §§goto(addr0042);
         }
         §§goto(addr0079);
      }
      
      private function _ResidentialOverviewContentComponent_BriskMCDynaLib2_c() : BriskMCDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.dynaMCSourceName = "stickytape_top";
               if(!_loc3_)
               {
                  _loc1_.top = 51;
                  if(!_loc3_)
                  {
                     addr005b:
                     _loc1_.height = 25;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.horizontalCenter = 0;
                        if(!_loc3_)
                        {
                           _loc1_.width = 140;
                           if(_loc2_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(_loc2_)
                                 {
                                    addr009a:
                                    _loc1_.document = this;
                                 }
                              }
                           }
                           §§goto(addr009e);
                        }
                     }
                  }
                  §§goto(addr009a);
               }
               §§goto(addr005b);
            }
            addr009e:
            return _loc1_;
         }
         §§goto(addr005b);
      }
      
      private function _ResidentialOverviewContentComponent_VGroup6_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.gap = -7;
            if(!_loc3_)
            {
               _loc1_.paddingTop = 0;
               §§goto(addr0028);
            }
            §§goto(addr0080);
         }
         addr0028:
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.mxmlContent = [this._ResidentialOverviewContentComponent_Group5_i(),this._ResidentialOverviewContentComponent_Group7_c()];
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0080:
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_Group5_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.mxmlContent = [this._ResidentialOverviewContentComponent_BriskImageDynaLib5_c(),this._ResidentialOverviewContentComponent_LocaLabel4_i(),this._ResidentialOverviewContentComponent_HGroup6_c(),this._ResidentialOverviewContentComponent_BriskImageDynaLib7_c(),this._ResidentialOverviewContentComponent_Group6_c(),this._ResidentialOverviewContentComponent_BriskMCDynaLib3_c()];
            if(!_loc2_)
            {
               _loc1_.id = "quadrillePaperGroup";
               if(_loc3_ || _loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr008d:
                        _loc1_.document = this;
                        if(_loc3_)
                        {
                           addr0096:
                           this.quadrillePaperGroup = _loc1_;
                           if(_loc3_)
                           {
                              BindingManager.executeBindings(this,"quadrillePaperGroup",this.quadrillePaperGroup);
                           }
                        }
                     }
                     §§goto(addr00ad);
                  }
                  §§goto(addr0096);
               }
               §§goto(addr008d);
            }
         }
         addr00ad:
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_residentialPopupNEW";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "quadrille_paper_small";
               if(_loc2_)
               {
                  §§goto(addr0056);
               }
            }
            §§goto(addr006a);
         }
         addr0056:
         if(!_loc1_.document)
         {
            if(!(_loc3_ && _loc3_))
            {
               addr006a:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_LocaLabel4_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc3_)
         {
            _loc1_.horizontalCenter = 0;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.percentWidth = 100;
               if(!_loc2_)
               {
                  _loc1_.styleName = "residentialOutputHeader";
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.top = 26;
                     if(_loc3_ || Boolean(this))
                     {
                        addr0077:
                        _loc1_.id = "harvestOutcomeHeader";
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           §§goto(addr008a);
                        }
                        §§goto(addr009e);
                     }
                     addr008a:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr009e:
                           _loc1_.document = this;
                           if(_loc3_ || Boolean(this))
                           {
                              §§goto(addr00ba);
                           }
                           §§goto(addr00cc);
                        }
                     }
                     addr00ba:
                     this.harvestOutcomeHeader = _loc1_;
                     if(_loc3_ || _loc3_)
                     {
                        addr00cc:
                        BindingManager.executeBindings(this,"harvestOutcomeHeader",this.harvestOutcomeHeader);
                     }
                     §§goto(addr00d9);
                  }
                  addr00d9:
                  return _loc1_;
               }
               §§goto(addr00ba);
            }
            §§goto(addr008a);
         }
         §§goto(addr0077);
      }
      
      private function _ResidentialOverviewContentComponent_HGroup6_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.verticalAlign = "middle";
            if(!_loc2_)
            {
               _loc1_.horizontalAlign = "center";
               if(!_loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc2_)
                  {
                     addr0054:
                     _loc1_.top = 39;
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.mxmlContent = [this._ResidentialOverviewContentComponent_LocaLabel5_i(),this._ResidentialOverviewContentComponent_BriskImageDynaLib6_c(),this._ResidentialOverviewContentComponent_LocaLabel6_i()];
                        addr0066:
                        if(_loc3_ || _loc2_)
                        {
                           §§goto(addr0096);
                        }
                        §§goto(addr00a2);
                     }
                     addr0096:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr00a2:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr00a6);
                  }
                  addr00a6:
                  return _loc1_;
               }
               §§goto(addr0066);
            }
            §§goto(addr0054);
         }
         §§goto(addr0096);
      }
      
      private function _ResidentialOverviewContentComponent_LocaLabel5_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.styleName = "residentialCycleText";
            if(_loc3_)
            {
               _loc1_.id = "cycleLabel";
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        _loc1_.document = this;
                        if(!(_loc2_ && _loc2_))
                        {
                           §§goto(addr006d);
                        }
                     }
                     §§goto(addr0077);
                  }
                  addr006d:
                  this.cycleLabel = _loc1_;
                  if(!_loc2_)
                  {
                     addr0077:
                     BindingManager.executeBindings(this,"cycleLabel",this.cycleLabel);
                  }
                  §§goto(addr0084);
               }
            }
            addr0084:
            return _loc1_;
         }
         §§goto(addr006d);
      }
      
      private function _ResidentialOverviewContentComponent_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_residentialPopup";
            if(_loc3_ || _loc2_)
            {
               _loc1_.dynaBmpSourceName = "layer_clock_mini_icon";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr005f:
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(this)))
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr005f);
      }
      
      private function _ResidentialOverviewContentComponent_LocaLabel6_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.styleName = "residentialCycleText";
            if(_loc2_)
            {
               _loc1_.id = "cycleLengthLabel";
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc3_)
                     {
                        _loc1_.document = this;
                        if(_loc2_)
                        {
                           §§goto(addr0075);
                        }
                     }
                     §§goto(addr0087);
                  }
                  addr0075:
                  this.cycleLengthLabel = _loc1_;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr0087:
                     BindingManager.executeBindings(this,"cycleLengthLabel",this.cycleLengthLabel);
                  }
                  §§goto(addr0094);
               }
               §§goto(addr0087);
            }
            addr0094:
            return _loc1_;
         }
         §§goto(addr0087);
      }
      
      private function _ResidentialOverviewContentComponent_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_residentialPopup";
            if(!_loc3_)
            {
               §§goto(addr0028);
            }
            §§goto(addr0083);
         }
         addr0028:
         _loc1_.dynaBmpSourceName = "head_line_long";
         if(!_loc3_)
         {
            _loc1_.top = 54;
            if(_loc2_ || _loc3_)
            {
               _loc1_.horizontalCenter = 0;
               if(!(_loc3_ && _loc2_))
               {
                  addr006f:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc3_)
                     {
                        addr0083:
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr0087);
            }
            §§goto(addr006f);
         }
         addr0087:
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_Group6_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.top = 72;
            if(_loc3_)
            {
               _loc1_.mxmlContent = [this._ResidentialOverviewContentComponent_List2_i()];
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr0052:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0056);
               }
               §§goto(addr0052);
            }
            addr0056:
            return _loc1_;
         }
         §§goto(addr0052);
      }
      
      private function _ResidentialOverviewContentComponent_List2_i() : List
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:List = new List();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.itemRenderer = this._ResidentialOverviewContentComponent_ClassFactory2_c();
            if(_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(!_loc3_)
               {
                  _loc1_.percentHeight = 100;
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.left = 20;
                     if(!_loc3_)
                     {
                        _loc1_.right = 20;
                        if(!_loc3_)
                        {
                           _loc1_.setStyle("skinClass",OutputListSkin);
                           if(!(_loc3_ && _loc2_))
                           {
                              addr008a:
                              _loc1_.id = "outcomeList";
                              if(_loc2_ || _loc3_)
                              {
                                 if(!_loc1_.document)
                                 {
                                    if(!_loc3_)
                                    {
                                       §§goto(addr00b7);
                                    }
                                    §§goto(addr00ca);
                                 }
                                 §§goto(addr00c0);
                              }
                           }
                           addr00b7:
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              addr00c0:
                              this.outcomeList = _loc1_;
                              if(!_loc3_)
                              {
                                 addr00ca:
                                 BindingManager.executeBindings(this,"outcomeList",this.outcomeList);
                              }
                           }
                           §§goto(addr00d7);
                        }
                     }
                     §§goto(addr00d7);
                  }
                  §§goto(addr008a);
               }
               §§goto(addr00b7);
            }
            addr00d7:
            return _loc1_;
         }
         §§goto(addr00b7);
      }
      
      private function _ResidentialOverviewContentComponent_ClassFactory2_c() : ClassFactory
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ClassFactory = new ClassFactory();
         if(!_loc2_)
         {
            _loc1_.generator = OutputItemRendered;
         }
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_BriskMCDynaLib3_c() : BriskMCDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.dynaMCSourceName = "stickytape_top";
               if(!_loc2_)
               {
                  §§goto(addr004d);
               }
               §§goto(addr0089);
            }
            addr004d:
            _loc1_.top = -3;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.width = 145;
               if(_loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc3_ || _loc3_)
                  {
                     addr0089:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr0099);
               }
               §§goto(addr0089);
            }
            §§goto(addr0099);
         }
         addr0099:
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_Group7_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.horizontalCenter = 0;
               if(!_loc2_)
               {
                  addr005a:
                  _loc1_.mxmlContent = [this._ResidentialOverviewContentComponent_HGroup7_c(),this._ResidentialOverviewContentComponent_DynamicImageButton3_i()];
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0084:
                           _loc1_.document = this;
                        }
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr0084);
            }
         }
         §§goto(addr005a);
      }
      
      private function _ResidentialOverviewContentComponent_HGroup7_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc3_)
         {
            _loc1_.horizontalAlign = "center";
            if(_loc3_)
            {
               addr003e:
               _loc1_.percentWidth = 95;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.mxmlContent = [this._ResidentialOverviewContentComponent_StickyNoteComponent4_i()];
                  if(!_loc2_)
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
            }
            return _loc1_;
         }
         §§goto(addr003e);
      }
      
      private function _ResidentialOverviewContentComponent_StickyNoteComponent4_i() : StickyNoteComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(_loc2_ || _loc3_)
         {
            _loc1_.height = 110;
            if(!(_loc3_ && Boolean(this)))
            {
               §§goto(addr0037);
            }
            §§goto(addr0041);
         }
         addr0037:
         _loc1_.percentWidth = 100;
         if(_loc2_)
         {
            addr0041:
            _loc1_.tapeLeft = true;
            if(_loc2_)
            {
               _loc1_.tapeRight = true;
               if(_loc2_)
               {
                  _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ResidentialOverviewContentComponent_Array24_c);
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr007f:
                     _loc1_.id = "effectsComponent";
                     if(_loc2_ || Boolean(this))
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              _loc1_.document = this;
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 addr00c4:
                                 this.effectsComponent = _loc1_;
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr00d6:
                                    BindingManager.executeBindings(this,"effectsComponent",this.effectsComponent);
                                 }
                              }
                              §§goto(addr00e3);
                           }
                           §§goto(addr00d6);
                        }
                     }
                     §§goto(addr00c4);
                  }
                  §§goto(addr00e3);
               }
               §§goto(addr007f);
            }
            §§goto(addr00c4);
         }
         addr00e3:
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_Array24_c() : Array
      {
         return [this._ResidentialOverviewContentComponent_ResidentialHeaderComponent3_i(),this._ResidentialOverviewContentComponent_HGroup8_c()];
      }
      
      private function _ResidentialOverviewContentComponent_ResidentialHeaderComponent3_i() : ResidentialHeaderComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ResidentialHeaderComponent = new ResidentialHeaderComponent();
         if(!_loc2_)
         {
            _loc1_.top = -5;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               addr003f:
               _loc1_.id = "effectHeader";
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(this)))
                     {
                        §§goto(addr0069);
                     }
                  }
                  §§goto(addr0072);
               }
            }
            addr0069:
            _loc1_.document = this;
            if(_loc3_)
            {
               addr0072:
               this.effectHeader = _loc1_;
               if(_loc3_)
               {
                  BindingManager.executeBindings(this,"effectHeader",this.effectHeader);
               }
            }
            return _loc1_;
         }
         §§goto(addr003f);
      }
      
      private function _ResidentialOverviewContentComponent_HGroup8_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.top = 25;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.percentHeight = 100;
                  addr003b:
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.horizontalCenter = 0;
                     if(!(_loc2_ && _loc3_))
                     {
                        addr0079:
                        _loc1_.mxmlContent = [this._ResidentialOverviewContentComponent_HGroup9_i(),this._ResidentialOverviewContentComponent_HGroup10_i()];
                        if(_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 addr00a3:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr00a7);
                        }
                        §§goto(addr00a3);
                     }
                     §§goto(addr00a7);
                  }
                  §§goto(addr00a3);
               }
               addr00a7:
               return _loc1_;
            }
            §§goto(addr0079);
         }
         §§goto(addr003b);
      }
      
      private function _ResidentialOverviewContentComponent_HGroup9_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.percentWidth = 50;
            if(_loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc3_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc3_)
                  {
                     §§goto(addr003d);
                  }
                  §§goto(addr005a);
               }
               addr003d:
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr005a:
                  _loc1_.mxmlContent = [this._ResidentialOverviewContentComponent_LocaLabel7_i(),this._ResidentialOverviewContentComponent_BriskImageDynaLib8_i()];
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.id = "moodGroup";
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              §§goto(addr00a3);
                           }
                        }
                     }
                     §§goto(addr00ac);
                  }
                  §§goto(addr00be);
               }
               §§goto(addr00a3);
            }
            addr00a3:
            _loc1_.document = this;
            if(!_loc2_)
            {
               addr00ac:
               this.moodGroup = _loc1_;
               if(_loc3_ || _loc2_)
               {
                  addr00be:
                  BindingManager.executeBindings(this,"moodGroup",this.moodGroup);
               }
            }
            §§goto(addr00cb);
         }
         addr00cb:
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_LocaLabel7_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.styleName = "outcomeNeutral";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.id = "moodLabel";
               if(_loc2_)
               {
                  addr004e:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        _loc1_.document = this;
                        if(_loc2_)
                        {
                           §§goto(addr0078);
                        }
                        §§goto(addr0082);
                     }
                  }
               }
               §§goto(addr0078);
            }
            §§goto(addr004e);
         }
         addr0078:
         this.moodLabel = _loc1_;
         if(_loc2_)
         {
            addr0082:
            BindingManager.executeBindings(this,"moodLabel",this.moodLabel);
         }
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_BriskImageDynaLib8_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_resources_icons";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "layer_sad_icon";
               if(!_loc2_)
               {
                  _loc1_.id = "moodIcon";
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              addr0078:
                              this.moodIcon = _loc1_;
                              if(!_loc2_)
                              {
                                 addr0082:
                                 BindingManager.executeBindings(this,"moodIcon",this.moodIcon);
                              }
                           }
                        }
                        return _loc1_;
                     }
                  }
                  §§goto(addr0078);
               }
            }
         }
         §§goto(addr0082);
      }
      
      private function _ResidentialOverviewContentComponent_HGroup10_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.percentWidth = 50;
            if(!_loc2_)
            {
               addr0032:
               _loc1_.horizontalAlign = "center";
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.verticalAlign = "middle";
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.percentHeight = 100;
                     if(!(_loc2_ && _loc3_))
                     {
                        _loc1_.mxmlContent = [this._ResidentialOverviewContentComponent_LocaLabel8_i(),this._ResidentialOverviewContentComponent_BriskImageDynaLib9_i()];
                        if(_loc3_)
                        {
                           addr008b:
                           _loc1_.id = "energyGroup";
                           if(!_loc2_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(_loc3_ || Boolean(this))
                                 {
                                    _loc1_.document = this;
                                    if(_loc3_)
                                    {
                                       §§goto(addr00c0);
                                    }
                                 }
                                 §§goto(addr00d2);
                              }
                              addr00c0:
                              this.energyGroup = _loc1_;
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr00d2:
                                 BindingManager.executeBindings(this,"energyGroup",this.energyGroup);
                              }
                              §§goto(addr00df);
                           }
                        }
                        §§goto(addr00d2);
                     }
                  }
                  addr00df:
                  return _loc1_;
               }
               §§goto(addr008b);
            }
            §§goto(addr00d2);
         }
         §§goto(addr0032);
      }
      
      private function _ResidentialOverviewContentComponent_LocaLabel8_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.styleName = "outcomeNeutral";
            if(_loc2_)
            {
               _loc1_.id = "energyLabel";
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr0062:
                        _loc1_.document = this;
                        if(_loc2_)
                        {
                           §§goto(addr006b);
                        }
                     }
                     §§goto(addr0075);
                  }
                  addr006b:
                  this.energyLabel = _loc1_;
                  if(_loc2_)
                  {
                     addr0075:
                     BindingManager.executeBindings(this,"energyLabel",this.energyLabel);
                  }
                  return _loc1_;
               }
            }
            §§goto(addr0075);
         }
         §§goto(addr0062);
      }
      
      private function _ResidentialOverviewContentComponent_BriskImageDynaLib9_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_resources_icons";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "energy_icon";
               if(!_loc3_)
               {
                  _loc1_.id = "energyIcon";
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr0065:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           §§goto(addr007d);
                        }
                     }
                     §§goto(addr008e);
                  }
                  addr007d:
                  _loc1_.document = this;
                  if(_loc2_ || _loc2_)
                  {
                     addr008e:
                     this.energyIcon = _loc1_;
                     if(_loc2_)
                     {
                        addr0098:
                        BindingManager.executeBindings(this,"energyIcon",this.energyIcon);
                     }
                  }
                  §§goto(addr00a5);
               }
               §§goto(addr0098);
            }
            addr00a5:
            return _loc1_;
         }
         §§goto(addr0065);
      }
      
      private function _ResidentialOverviewContentComponent_DynamicImageButton3_i() : DynamicImageButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.styleName = "featureInfoButton";
            if(!_loc3_)
            {
               _loc1_.right = 37;
               if(_loc2_)
               {
                  _loc1_.top = 15;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.addEventListener("click",this.__effectFeatureButton_click);
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.id = "effectFeatureButton";
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 addr009f:
                                 _loc1_.document = this;
                                 if(!_loc3_)
                                 {
                                    §§goto(addr00a8);
                                 }
                              }
                              §§goto(addr00b2);
                           }
                           §§goto(addr00a8);
                        }
                     }
                     §§goto(addr009f);
                  }
               }
            }
            addr00a8:
            this.effectFeatureButton = _loc1_;
            if(_loc2_)
            {
               addr00b2:
               BindingManager.executeBindings(this,"effectFeatureButton",this.effectFeatureButton);
            }
            return _loc1_;
         }
         §§goto(addr00b2);
      }
      
      public function __effectFeatureButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.onBalanceFeatureClick();
         }
      }
      
      public function ___ResidentialOverviewContentComponent_Group1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this.handleCreationComplete();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get centerImage() : BriskImageDynaLib
      {
         return this._1651530246centerImage;
      }
      
      public function set centerImage(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1651530246centerImage;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  addr0049:
                  this._1651530246centerImage = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr007e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"centerImage",_loc2_,param1));
                        }
                     }
                     §§goto(addr008d);
                  }
               }
               §§goto(addr007e);
            }
            addr008d:
            return;
         }
         §§goto(addr0049);
      }
      
      [Bindable(event="propertyChange")]
      public function get changeButton() : DynamicPlusButton
      {
         return this._577985790changeButton;
      }
      
      public function set changeButton(param1:DynamicPlusButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._577985790changeButton;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._577985790changeButton = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeButton",_loc2_,param1));
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
      public function get cycleLabel() : LocaLabel
      {
         return this._1163225682cycleLabel;
      }
      
      public function set cycleLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1163225682cycleLabel;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._1163225682cycleLabel = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0063:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cycleLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0072);
                  }
                  §§goto(addr0063);
               }
            }
         }
         addr0072:
      }
      
      [Bindable(event="propertyChange")]
      public function get cycleLengthLabel() : LocaLabel
      {
         return this._2034685672cycleLengthLabel;
      }
      
      public function set cycleLengthLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2034685672cycleLengthLabel;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._2034685672cycleLengthLabel = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr005f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cycleLengthLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0086);
               }
               §§goto(addr005f);
            }
         }
         addr0086:
      }
      
      [Bindable(event="propertyChange")]
      public function get effectFeatureButton() : DynamicImageButton
      {
         return this._1768900535effectFeatureButton;
      }
      
      public function set effectFeatureButton(param1:DynamicImageButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1768900535effectFeatureButton;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1768900535effectFeatureButton = param1;
                  if(_loc4_)
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectFeatureButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr0074);
                  }
               }
               §§goto(addr0065);
            }
            addr0074:
            return;
         }
         §§goto(addr0055);
      }
      
      [Bindable(event="propertyChange")]
      public function get effectHeader() : ResidentialHeaderComponent
      {
         return this._713468034effectHeader;
      }
      
      public function set effectHeader(param1:ResidentialHeaderComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._713468034effectHeader;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._713468034effectHeader = param1;
                  if(!_loc4_)
                  {
                     addr005a:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectHeader",_loc2_,param1));
                        }
                     }
                     §§goto(addr0080);
                  }
               }
               §§goto(addr0071);
            }
            addr0080:
            return;
         }
         §§goto(addr005a);
      }
      
      [Bindable(event="propertyChange")]
      public function get effectsComponent() : StickyNoteComponent
      {
         return this._911984155effectsComponent;
      }
      
      public function set effectsComponent(param1:StickyNoteComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._911984155effectsComponent;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._911984155effectsComponent = param1;
                  addr0040:
                  if(_loc3_ || Boolean(param1))
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectsComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr005d);
            }
            addr007b:
            return;
         }
         §§goto(addr0040);
      }
      
      [Bindable(event="propertyChange")]
      public function get energyGroup() : HGroup
      {
         return this._1840699177energyGroup;
      }
      
      public function set energyGroup(param1:HGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1840699177energyGroup;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._1840699177energyGroup = param1;
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr005f);
                  }
                  §§goto(addr0076);
               }
               addr005f:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     addr0076:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"energyGroup",_loc2_,param1));
                  }
               }
               §§goto(addr0085);
            }
            addr0085:
            return;
         }
         §§goto(addr005f);
      }
      
      [Bindable(event="propertyChange")]
      public function get energyIcon() : BriskImageDynaLib
      {
         return this._1464688417energyIcon;
      }
      
      public function set energyIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1464688417energyIcon;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._1464688417energyIcon = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0061:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"energyIcon",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0061);
      }
      
      [Bindable(event="propertyChange")]
      public function get energyLabel() : LocaLabel
      {
         return this._1836601012energyLabel;
      }
      
      public function set energyLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1836601012energyLabel;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  addr003a:
                  this._1836601012energyLabel = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"energyLabel",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr003a);
      }
      
      [Bindable(event="propertyChange")]
      public function get evaluationHeader() : ResidentialHeaderComponent
      {
         return this._1415215337evaluationHeader;
      }
      
      public function set evaluationHeader(param1:ResidentialHeaderComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1415215337evaluationHeader;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._1415215337evaluationHeader = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"evaluationHeader",_loc2_,param1));
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
         §§goto(addr0074);
      }
      
      [Bindable(event="propertyChange")]
      public function get flavorText() : LocaLabel
      {
         return this._1684755691flavorText;
      }
      
      public function set flavorText(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1684755691flavorText;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._1684755691flavorText = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavorText",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get harvestButton() : MultistateButton
      {
         return this._1341975547harvestButton;
      }
      
      public function set harvestButton(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1341975547harvestButton;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1341975547harvestButton = param1;
                  addr0038:
                  if(_loc4_)
                  {
                     addr004e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"harvestButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0074);
               }
               §§goto(addr004e);
            }
            addr0074:
            return;
         }
         §§goto(addr0038);
      }
      
      [Bindable(event="propertyChange")]
      public function get harvestButtonGroup() : VGroup
      {
         return this._13393732harvestButtonGroup;
      }
      
      public function set harvestButtonGroup(param1:VGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._13393732harvestButtonGroup;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._13393732harvestButtonGroup = param1;
                  if(_loc4_)
                  {
                     §§goto(addr0055);
                  }
                  §§goto(addr0064);
               }
               addr0055:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr0064:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"harvestButtonGroup",_loc2_,param1));
                  }
               }
               §§goto(addr0073);
            }
            addr0073:
            return;
         }
         §§goto(addr0055);
      }
      
      [Bindable(event="propertyChange")]
      public function get harvestOutcomeHeader() : LocaLabel
      {
         return this._1708165014harvestOutcomeHeader;
      }
      
      public function set harvestOutcomeHeader(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1708165014harvestOutcomeHeader;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._1708165014harvestOutcomeHeader = param1;
                  if(!_loc4_)
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"harvestOutcomeHeader",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr0055);
            }
            addr007c:
            return;
         }
         §§goto(addr006d);
      }
      
      [Bindable(event="propertyChange")]
      public function get harvestProgressComponent() : TimerBarComponent
      {
         return this._1920126745harvestProgressComponent;
      }
      
      public function set harvestProgressComponent(param1:TimerBarComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1920126745harvestProgressComponent;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1920126745harvestProgressComponent = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0053:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"harvestProgressComponent",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0053);
      }
      
      [Bindable(event="propertyChange")]
      public function get harvestProgressGroup() : VGroup
      {
         return this._804679831harvestProgressGroup;
      }
      
      public function set harvestProgressGroup(param1:VGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._804679831harvestProgressGroup;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._804679831harvestProgressGroup = param1;
                  if(!_loc3_)
                  {
                     addr005c:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"harvestProgressGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr005c);
            }
         }
         addr007b:
      }
      
      [Bindable(event="propertyChange")]
      public function get masteryComponent() : MasteryComponent
      {
         return this._1830499226masteryComponent;
      }
      
      public function set masteryComponent(param1:MasteryComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1830499226masteryComponent;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._1830499226masteryComponent = param1;
                  if(!_loc4_)
                  {
                     addr0054:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr006b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masteryComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr007a);
                  }
               }
               §§goto(addr006b);
            }
            addr007a:
            return;
         }
         §§goto(addr0054);
      }
      
      [Bindable(event="propertyChange")]
      public function get moodGroup() : HGroup
      {
         return this._899936824moodGroup;
      }
      
      public function set moodGroup(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._899936824moodGroup;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._899936824moodGroup = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moodGroup",_loc2_,param1));
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
      public function get moodIcon() : BriskImageDynaLib
      {
         return this._306079728moodIcon;
      }
      
      public function set moodIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._306079728moodIcon;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._306079728moodIcon = param1;
                  if(_loc4_)
                  {
                     addr0056:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moodIcon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0065);
            }
            addr0074:
            return;
         }
         §§goto(addr0056);
      }
      
      [Bindable(event="propertyChange")]
      public function get moodLabel() : LocaLabel
      {
         return this._895838659moodLabel;
      }
      
      public function set moodLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._895838659moodLabel;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._895838659moodLabel = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr0080:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moodLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008f);
               }
               §§goto(addr0080);
            }
         }
         addr008f:
      }
      
      [Bindable(event="propertyChange")]
      public function get needFeatureButton() : DynamicImageButton
      {
         return this._239061202needFeatureButton;
      }
      
      public function set needFeatureButton(param1:DynamicImageButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._239061202needFeatureButton;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._239061202needFeatureButton = param1;
                  if(_loc3_)
                  {
                     §§goto(addr0054);
                  }
                  §§goto(addr0064);
               }
               addr0054:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr0064:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needFeatureButton",_loc2_,param1));
                  }
               }
               §§goto(addr0073);
            }
            addr0073:
            return;
         }
         §§goto(addr0054);
      }
      
      [Bindable(event="propertyChange")]
      public function get needsHeader() : ResidentialHeaderComponent
      {
         return this._1304809590needsHeader;
      }
      
      public function set needsHeader(param1:ResidentialHeaderComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1304809590needsHeader;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1304809590needsHeader = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     §§goto(addr0058);
                  }
                  §§goto(addr0070);
               }
               addr0058:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || _loc3_)
                  {
                     addr0070:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needsHeader",_loc2_,param1));
                  }
               }
               §§goto(addr007f);
            }
            addr007f:
            return;
         }
         §§goto(addr0070);
      }
      
      [Bindable(event="propertyChange")]
      public function get needsList() : List
      {
         return this._1093736667needsList;
      }
      
      public function set needsList(param1:List) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1093736667needsList;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1093736667needsList = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     §§goto(addr0060);
                  }
                  §§goto(addr0070);
               }
               addr0060:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr0070:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needsList",_loc2_,param1));
                  }
               }
               §§goto(addr007f);
            }
            addr007f:
            return;
         }
         §§goto(addr0070);
      }
      
      [Bindable(event="propertyChange")]
      public function get outcomeList() : List
      {
         return this._1062744848outcomeList;
      }
      
      public function set outcomeList(param1:List) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1062744848outcomeList;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1062744848outcomeList = param1;
                  if(!_loc4_)
                  {
                     addr0043:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0053:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"outcomeList",_loc2_,param1));
                        }
                     }
                     §§goto(addr0062);
                  }
               }
               §§goto(addr0053);
            }
            addr0062:
            return;
         }
         §§goto(addr0043);
      }
      
      [Bindable(event="propertyChange")]
      public function get polaroid() : BriskImageDynaLib
      {
         return this._539958732polaroid;
      }
      
      public function set polaroid(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._539958732polaroid;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._539958732polaroid = param1;
                  addr0044:
                  if(!_loc3_)
                  {
                     §§goto(addr005a);
                  }
                  §§goto(addr0072);
               }
               addr005a:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     addr0072:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"polaroid",_loc2_,param1));
                  }
               }
               §§goto(addr0081);
            }
            addr0081:
            return;
         }
         §§goto(addr0044);
      }
      
      [Bindable(event="propertyChange")]
      public function get quadrillePaperGroup() : Group
      {
         return this._758791194quadrillePaperGroup;
      }
      
      public function set quadrillePaperGroup(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._758791194quadrillePaperGroup;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._758791194quadrillePaperGroup = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0053:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"quadrillePaperGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0062);
               }
               §§goto(addr0053);
            }
            addr0062:
            return;
         }
         §§goto(addr0053);
      }
      
      [Bindable(event="propertyChange")]
      public function get residentIcon() : BriskImageDynaLib
      {
         return this._311765527residentIcon;
      }
      
      public function set residentIcon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._311765527residentIcon;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._311765527residentIcon = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"residentIcon",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get residentInfo() : HGroup
      {
         return this._311755234residentInfo;
      }
      
      public function set residentInfo(param1:HGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._311755234residentInfo;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._311755234residentInfo = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     §§goto(addr0056);
                  }
                  §§goto(addr0066);
               }
               addr0056:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr0066:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"residentInfo",_loc2_,param1));
                  }
               }
               §§goto(addr0075);
            }
            addr0075:
            return;
         }
         §§goto(addr0056);
      }
      
      [Bindable(event="propertyChange")]
      public function get residentName() : LocaLabel
      {
         return this._311618565residentName;
      }
      
      public function set residentName(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._311618565residentName;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._311618565residentName = param1;
                  if(!_loc3_)
                  {
                     addr0040:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"residentName",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr005f);
               }
               §§goto(addr0040);
            }
         }
         addr005f:
      }
      
      [Bindable(event="propertyChange")]
      public function get residentNumbers() : LocaLabel
      {
         return this._1431748902residentNumbers;
      }
      
      public function set residentNumbers(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1431748902residentNumbers;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  addr0055:
                  this._1431748902residentNumbers = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"residentNumbers",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0055);
      }
      
      [Bindable(event="propertyChange")]
      public function get residentsData() : VGroup
      {
         return this._1036945555residentsData;
      }
      
      public function set residentsData(param1:VGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1036945555residentsData;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._1036945555residentsData = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"residentsData",_loc2_,param1));
                        }
                     }
                     §§goto(addr007c);
                  }
               }
               §§goto(addr006d);
            }
            addr007c:
            return;
         }
         §§goto(addr006d);
      }
      
      [Bindable(event="propertyChange")]
      public function get upgradeFeatureButton() : DynamicImageButton
      {
         return this._1087758604upgradeFeatureButton;
      }
      
      public function set upgradeFeatureButton(param1:DynamicImageButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1087758604upgradeFeatureButton;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._1087758604upgradeFeatureButton = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     addr0060:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upgradeFeatureButton",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0060);
      }
      
      [Bindable(event="propertyChange")]
      public function get upgradeProgressComponent() : UpgradeProgressComponent
      {
         return this._2007548268upgradeProgressComponent;
      }
      
      public function set upgradeProgressComponent(param1:UpgradeProgressComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2007548268upgradeProgressComponent;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._2007548268upgradeProgressComponent = param1;
                  if(!_loc4_)
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
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upgradeProgressComponent",_loc2_,param1));
                  }
               }
               §§goto(addr0074);
            }
            addr0074:
            return;
         }
         §§goto(addr0065);
      }
   }
}

