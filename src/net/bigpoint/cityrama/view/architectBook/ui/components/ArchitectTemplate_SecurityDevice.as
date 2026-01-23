package net.bigpoint.cityrama.view.architectBook.ui.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.architecturalBook.vo.BlueprintImageValueVO;
   import net.bigpoint.cityrama.model.architecturalBook.vo.BlueprintVo;
   import net.bigpoint.cityrama.model.architecturalBook.vo.CenterItemDataVo;
   import net.bigpoint.cityrama.model.architecturalBook.vo.VerifiedBlueprintVo;
   import net.bigpoint.cityrama.model.detailViews.MainLayerProxy;
   import net.bigpoint.cityrama.view.architectBook.ui.skins.ArchitectSecuritygradeListSkin;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BuildingCostComponent;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.PostitHeaderComponent;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   
   public class ArchitectTemplate_SecurityDevice extends Group
   {
      
      public static const NAME:String = "ArchitectTemplate_SecurityDevice";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         NAME = "ArchitectTemplate_SecurityDevice";
      }
      
      private var _597326554buildNowButton:MultistateButton;
      
      private var _1364013995center:DetailsCenterComponent;
      
      private var _1253508016costComponent:BuildingCostComponent;
      
      private var _1768900535effectFeatureButton:DynamicImageButton;
      
      private var _713468034effectHeader:PostitHeaderComponent;
      
      private var _911984155effectsComponent:StickyNoteComponent;
      
      private var _1840699177energyGroup:HGroup;
      
      private var _1464688417energyIcon:BriskImageDynaLib;
      
      private var _1836601012energyLabel:LocaLabel;
      
      private var _1684755691flavorText:LocaLabel;
      
      private var _899936824moodGroup:HGroup;
      
      private var _306079728moodIcon:BriskImageDynaLib;
      
      private var _895838659moodLabel:LocaLabel;
      
      private var _188635812restrictionFeatureButton:DynamicImageButton;
      
      private var _294445069restrictionGfx:BriskImageDynaLib;
      
      private var _505777645restrictionGroup:StickyNoteComponent;
      
      private var _1516951929restrictionHeader:PostitHeaderComponent;
      
      private var _538066039restrictionName:LocaLabel;
      
      private var _224099944securityFeatureButton:DynamicImageButton;
      
      private var _1027222035securityHeader:PostitHeaderComponent;
      
      private var _807992318securityList:List;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:BlueprintVo;
      
      private var _veryData:VerifiedBlueprintVo;
      
      public function ArchitectTemplate_SecurityDevice()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super();
            if(_loc2_)
            {
               mx_internal::_document = this;
               if(!_loc1_)
               {
                  this.percentWidth = 100;
                  if(_loc2_)
                  {
                     this.percentHeight = 100;
                     if(_loc2_ || Boolean(this))
                     {
                        §§goto(addr0068);
                     }
                     §§goto(addr0092);
                  }
                  addr0068:
                  this.mxmlContent = [this._ArchitectTemplate_SecurityDevice_HGroup1_c(),this._ArchitectTemplate_SecurityDevice_Group2_c(),this._ArchitectTemplate_SecurityDevice_VGroup2_c(),this._ArchitectTemplate_SecurityDevice_Group3_c()];
                  if(!(_loc1_ && _loc1_))
                  {
                     addr0092:
                     this.addEventListener("creationComplete",this.___ArchitectTemplate_SecurityDevice_Group1_creationComplete);
                  }
               }
               §§goto(addr009e);
            }
            §§goto(addr0068);
         }
         addr009e:
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            super.moduleFactory = param1;
            if(!_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     §§goto(addr004d);
                  }
               }
               this.__moduleFactoryInitialized = true;
               return;
            }
         }
         addr004d:
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
      
      protected function handleCreationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            this.effectHeader.text = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.effects");
            if(_loc3_)
            {
               §§goto(addr002f);
            }
            §§goto(addr00ea);
         }
         addr002f:
         this.securityHeader.text = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.securitygrade");
         if(!(_loc4_ && _loc3_))
         {
            §§push(this.buildNowButton);
            if(_loc3_)
            {
               §§pop().label = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.buildNow");
               if(!(_loc4_ && _loc2_))
               {
                  this.restrictionHeader.text = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.buildableLand");
                  if(_loc3_ || Boolean(this))
                  {
                     addr00a4:
                     this.buildNowButton.addEventListener(MouseEvent.CLICK,this.handleBuildClick);
                     if(!(_loc4_ && Boolean(param1)))
                     {
                        var _temp_5:* = this.restrictionFeatureButton;
                        var _loc2_:Boolean;
                        this.restrictionFeatureButton.includeInLayout = _loc2_ = false;
                        _temp_5.visible = _loc2_;
                        §§goto(addr00bf);
                     }
                     §§goto(addr00ea);
                  }
               }
               addr00bf:
               if(!(_loc4_ && _loc3_))
               {
                  addr00ea:
                  this.setupCenter();
                  if(_loc3_ || _loc2_)
                  {
                     this.updateAll();
                  }
               }
               §§goto(addr0103);
            }
            §§goto(addr00a4);
         }
         addr0103:
      }
      
      override public function get name() : String
      {
         return NAME;
      }
      
      private function handleEffectFeatureClick() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            dispatchEvent(new Event("effectFeatureClick"));
         }
      }
      
      private function handleSecuritygradeFeatureClick() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            dispatchEvent(new Event("securitygradeFeatureClick"));
         }
      }
      
      private function handleBuildClick(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            dispatchEvent(new Event("buildNow"));
         }
      }
      
      private function handleRestrictionFeatureClick() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            dispatchEvent(new Event("restrictionFeatureClick"));
         }
      }
      
      public function setData(param1:VerifiedBlueprintVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._data = param1.bluePrintVO;
            if(_loc2_)
            {
               this._veryData = param1;
               if(_loc2_ || Boolean(this))
               {
                  addr0042:
                  invalidateProperties();
               }
               §§goto(addr0047);
            }
            §§goto(addr0042);
         }
         addr0047:
      }
      
      private function updateAll() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            this.flavorText.text = this._veryData.descriptionVo.descriptionText;
            if(_loc2_)
            {
               §§push(this._veryData.buildableLandVO.visualName);
               if(_loc2_ || _loc2_)
               {
                  if(§§pop() != "")
                  {
                     if(!(_loc1_ && Boolean(this)))
                     {
                        §§push(this.restrictionGfx);
                        if(!(_loc1_ && _loc1_))
                        {
                           §§push(this._veryData);
                           if(!(_loc1_ && Boolean(this)))
                           {
                              §§push(§§pop().buildableLandVO);
                              if(_loc2_ || _loc1_)
                              {
                                 §§push(§§pop().visualLibName);
                                 if(_loc2_)
                                 {
                                    §§pop().dynaLibName = §§pop();
                                    if(!_loc1_)
                                    {
                                       §§push(this.restrictionGfx);
                                       if(!(_loc1_ && _loc2_))
                                       {
                                          addr00af:
                                          §§push(this._veryData);
                                          if(_loc2_)
                                          {
                                             §§push(§§pop().buildableLandVO);
                                             if(!_loc1_)
                                             {
                                                §§push(§§pop().visualName);
                                                if(!(_loc1_ && _loc1_))
                                                {
                                                   addr00d0:
                                                   §§pop().dynaBmpSourceName = §§pop();
                                                   if(_loc2_ || Boolean(this))
                                                   {
                                                      addr00ec:
                                                      this.restrictionGfx.toolTip = this._veryData.buildableLandVO.toolTip;
                                                      addr00ea:
                                                      addr00e7:
                                                      addr00e3:
                                                      if(!_loc1_)
                                                      {
                                                         §§goto(addr00f3);
                                                      }
                                                      §§goto(addr0148);
                                                   }
                                                   addr00f3:
                                                   this.restrictionName.text = this._veryData.buildableLandVO.descriptionText;
                                                   if(!(_loc1_ && Boolean(this)))
                                                   {
                                                      §§push(this.restrictionGroup);
                                                      if(!(_loc1_ && _loc2_))
                                                      {
                                                         §§push(true);
                                                         if(_loc2_)
                                                         {
                                                            §§pop().visible = §§pop();
                                                            if(_loc2_)
                                                            {
                                                               addr0148:
                                                               §§push(this._data);
                                                               if(!(_loc1_ && Boolean(this)))
                                                               {
                                                                  §§push(§§pop().state);
                                                                  if(!_loc1_)
                                                                  {
                                                                     addr0161:
                                                                     §§push(BlueprintVo.STATE_FULLY_CONSTRUCTED_AVAILABLE);
                                                                     if(!(_loc1_ && _loc1_))
                                                                     {
                                                                        §§push(§§pop() == §§pop());
                                                                        if(!(_loc1_ && Boolean(this)))
                                                                        {
                                                                           var _temp_16:* = §§pop();
                                                                           §§push(_temp_16);
                                                                           if(!_temp_16)
                                                                           {
                                                                              if(!(_loc1_ && _loc2_))
                                                                              {
                                                                                 addr0194:
                                                                                 §§pop();
                                                                                 if(!_loc1_)
                                                                                 {
                                                                                    §§goto(addr01a8);
                                                                                 }
                                                                                 §§goto(addr0231);
                                                                              }
                                                                           }
                                                                           addr01a8:
                                                                           §§goto(addr01a7);
                                                                        }
                                                                        §§goto(addr0194);
                                                                     }
                                                                     addr01a7:
                                                                     §§goto(addr01a1);
                                                                  }
                                                                  addr01a1:
                                                                  §§goto(addr019e);
                                                               }
                                                               addr019e:
                                                               if(this._data.state == BlueprintVo.STATE_BUY_MORE_WITH_RC)
                                                               {
                                                                  if(!(_loc1_ && _loc2_))
                                                                  {
                                                                     §§push(this.costComponent);
                                                                     if(!_loc1_)
                                                                     {
                                                                        §§push("noCosts");
                                                                        if(_loc2_)
                                                                        {
                                                                           §§pop().currentState = §§pop();
                                                                           if(_loc2_ || _loc1_)
                                                                           {
                                                                              addr01da:
                                                                              §§push(this.costComponent);
                                                                              if(_loc2_ || Boolean(this))
                                                                              {
                                                                                 addr01eb:
                                                                                 §§pop().invalidateProperties();
                                                                                 if(_loc2_ || Boolean(this))
                                                                                 {
                                                                                    addr0231:
                                                                                    this.setEffects();
                                                                                    if(_loc2_ || Boolean(this))
                                                                                    {
                                                                                       addr0244:
                                                                                       this.securityList.dataProvider = this._veryData.securityVoList;
                                                                                       if(!_loc1_)
                                                                                       {
                                                                                          addr0257:
                                                                                          this.setTooltips();
                                                                                       }
                                                                                       §§goto(addr025d);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr0257);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr020b:
                                                                                 §§pop().currentState = "hasCosts";
                                                                                 addr0208:
                                                                                 if(!_loc1_)
                                                                                 {
                                                                                    this.costComponent.setData(this._veryData.costVOList);
                                                                                    §§goto(addr0217);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr0244);
                                                                        }
                                                                        §§goto(addr020b);
                                                                     }
                                                                     §§goto(addr01eb);
                                                                  }
                                                                  §§goto(addr0257);
                                                               }
                                                               else
                                                               {
                                                                  §§push(this.costComponent);
                                                                  if(_loc2_)
                                                                  {
                                                                     §§goto(addr0208);
                                                                  }
                                                               }
                                                               addr0217:
                                                            }
                                                            §§goto(addr0213);
                                                         }
                                                         else
                                                         {
                                                            addr0141:
                                                            §§pop().visible = §§pop();
                                                            if(_loc2_)
                                                            {
                                                               §§goto(addr0148);
                                                            }
                                                         }
                                                         §§goto(addr0231);
                                                      }
                                                      else
                                                      {
                                                         addr0140:
                                                         §§push(false);
                                                      }
                                                      §§goto(addr0141);
                                                   }
                                                   addr0213:
                                                   if(!_loc1_)
                                                   {
                                                      §§goto(addr0231);
                                                   }
                                                   §§goto(addr025d);
                                                }
                                                §§goto(addr00ec);
                                             }
                                             §§goto(addr00ea);
                                          }
                                          §§goto(addr00e7);
                                       }
                                       §§goto(addr00e3);
                                    }
                                    addr025d:
                                    return;
                                 }
                                 §§goto(addr00d0);
                              }
                              §§goto(addr00ea);
                           }
                           §§goto(addr00e7);
                        }
                        §§goto(addr00af);
                     }
                     §§goto(addr0213);
                  }
                  else
                  {
                     §§push(this.restrictionGroup);
                  }
                  §§goto(addr0140);
               }
               §§goto(addr0161);
            }
            §§goto(addr0148);
         }
         §§goto(addr01da);
      }
      
      private function setEffects() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:BlueprintImageValueVO = null;
         var _loc2_:int = 0;
         var _loc3_:* = this._veryData.consequenceVOList.source;
         for each(_loc1_ in _loc3_)
         {
            if(_loc5_)
            {
               §§push(_loc1_.effectType);
               if(_loc5_)
               {
                  if(§§pop() == "")
                  {
                     continue;
                  }
                  if(!(_loc4_ && Boolean(_loc1_)))
                  {
                     §§push(_loc1_.effectType);
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(MainLayerProxy.ENERGY);
                        if(!_loc4_)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(_loc4_ && Boolean(_loc1_))
                              {
                                 continue;
                              }
                              §§push(this.energyIcon);
                              if(!(_loc4_ && Boolean(_loc1_)))
                              {
                                 §§push(_loc1_.visualName);
                                 if(_loc5_ || Boolean(this))
                                 {
                                    §§pop().dynaBmpSourceName = §§pop();
                                    if(!_loc4_)
                                    {
                                       addr00ca:
                                       this.energyIcon.dynaLibName = _loc1_.visualLibName;
                                       addr00c6:
                                       if(_loc4_)
                                       {
                                          continue;
                                       }
                                       §§push(this.energyLabel);
                                       if(!_loc4_)
                                       {
                                          §§pop().setStyle("color",_loc1_.valueColor);
                                          if(!(_loc4_ && Boolean(_loc2_)))
                                          {
                                             addr00f8:
                                             this.energyLabel.text = _loc1_.textLabel;
                                             if(_loc5_ || Boolean(_loc1_))
                                             {
                                                continue;
                                             }
                                          }
                                          else
                                          {
                                             addr012c:
                                             §§push(this.moodIcon);
                                             if(_loc5_)
                                             {
                                                §§push(_loc1_.visualName);
                                                if(!_loc4_)
                                                {
                                                   §§pop().dynaBmpSourceName = §§pop();
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      addr0158:
                                                      this.moodIcon.dynaLibName = _loc1_.visualLibName;
                                                      addr0154:
                                                      addr0150:
                                                      if(_loc4_ && Boolean(_loc1_))
                                                      {
                                                         continue;
                                                      }
                                                   }
                                                   addr0168:
                                                   §§push(this.moodLabel);
                                                   if(_loc5_ || Boolean(_loc1_))
                                                   {
                                                      §§pop().setStyle("color",_loc1_.valueColor);
                                                      if(_loc4_)
                                                      {
                                                         continue;
                                                      }
                                                      addr019a:
                                                      §§push(this.moodLabel);
                                                   }
                                                   §§pop().text = _loc1_.textLabel;
                                                   continue;
                                                }
                                                §§goto(addr0158);
                                             }
                                             §§goto(addr0154);
                                          }
                                          §§goto(addr0168);
                                       }
                                       §§goto(addr00f8);
                                    }
                                    §§goto(addr0150);
                                 }
                                 §§goto(addr00ca);
                              }
                              §§goto(addr00c6);
                           }
                           else
                           {
                              addr011a:
                              addr0114:
                              if(_loc1_.effectType != MainLayerProxy.MOOD)
                              {
                                 continue;
                              }
                              if(!(_loc4_ && Boolean(this)))
                              {
                                 §§goto(addr012c);
                              }
                           }
                           §§goto(addr019a);
                        }
                        §§goto(addr011a);
                     }
                     §§goto(addr0114);
                  }
                  §§goto(addr019a);
               }
               §§goto(addr0114);
            }
            §§goto(addr019a);
         }
      }
      
      public function setSubData(param1:VerifiedBlueprintVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._veryData = param1;
            if(_loc2_)
            {
               invalidateProperties();
            }
         }
      }
      
      public function get data() : BlueprintVo
      {
         return this._data;
      }
      
      private function setTooltips() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.arrowLeft"));
         if(!(_loc3_ && _loc2_))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.arrowRight"));
         if(_loc4_ || _loc2_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            §§push(this.center);
            if(!(_loc3_ && _loc2_))
            {
               §§push("tooltipLeftScroll");
               if(_loc4_)
               {
                  §§push(_loc1_);
                  if(_loc4_ || _loc3_)
                  {
                     §§pop().setStyle(§§pop(),§§pop());
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr0099:
                        this.center.setStyle("tooltipRightScroll",_loc2_);
                        addr0098:
                        addr0095:
                        if(!_loc3_)
                        {
                           this.energyGroup.toolTip = LocaUtils.getString("rcl.tooltips.residentialBook","rcl.tooltips.residentialBook.effects.energy");
                           if(_loc4_)
                           {
                              this.moodGroup.toolTip = LocaUtils.getString("rcl.tooltips.residentialBook","rcl.tooltips.residentialBook.effects.mood");
                              if(_loc4_)
                              {
                                 this.buildNowButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.placeButton");
                                 if(!_loc3_)
                                 {
                                    addr00f3:
                                    §§push(this._data);
                                    if(_loc4_ || _loc3_)
                                    {
                                       §§push(§§pop().permissionBuyable);
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             addr011b:
                                             var _temp_10:* = §§pop();
                                             §§push(_temp_10);
                                             if(_temp_10)
                                             {
                                                if(_loc4_ || _loc2_)
                                                {
                                                   §§pop();
                                                   if(_loc4_)
                                                   {
                                                      addr014b:
                                                      addr0139:
                                                      addr0135:
                                                      §§push(this._data.locked);
                                                      if(_loc4_ || Boolean(this))
                                                      {
                                                         addr014a:
                                                         §§push(!§§pop());
                                                      }
                                                      if(§§pop())
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            addr0155:
                                                            this.effectFeatureButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.feature.effects");
                                                            if(!_loc3_)
                                                            {
                                                               addr0177:
                                                               this.restrictionFeatureButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.feature.restrictions");
                                                               if(_loc4_ || _loc1_)
                                                               {
                                                                  addr0196:
                                                                  this.securityFeatureButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.feature.securityRanges");
                                                               }
                                                               §§goto(addr01a8);
                                                            }
                                                            §§goto(addr0196);
                                                         }
                                                         §§goto(addr01a8);
                                                      }
                                                      §§goto(addr0155);
                                                   }
                                                   addr01a8:
                                                   return;
                                                }
                                                §§goto(addr014a);
                                             }
                                             §§goto(addr014b);
                                          }
                                          §§goto(addr014a);
                                       }
                                       §§goto(addr011b);
                                    }
                                    §§goto(addr0139);
                                 }
                                 §§goto(addr0135);
                              }
                              §§goto(addr0155);
                           }
                           §§goto(addr0177);
                        }
                        §§goto(addr0155);
                     }
                     §§goto(addr00f3);
                  }
                  §§goto(addr0099);
               }
               §§goto(addr0098);
            }
            §§goto(addr0095);
         }
         §§goto(addr0177);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.commitProperties();
            if(!(_loc2_ && _loc2_))
            {
               this.setupCenter();
               if(_loc1_ || Boolean(this))
               {
                  addr0044:
                  this.setTooltips();
                  if(_loc1_ || _loc2_)
                  {
                     addr0057:
                     this.updateAll();
                  }
               }
               return;
            }
            §§goto(addr0044);
         }
         §§goto(addr0057);
      }
      
      private function setupCenter() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!_loc5_)
         {
            §§push(this._data);
            if(!(_loc5_ && _loc2_))
            {
               §§push(§§pop().state);
               if(!_loc5_)
               {
                  §§push(BlueprintVo.STATE_FULLY_CONSTRUCTED_AVAILABLE);
                  if(!_loc5_)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           §§push(this.buildNowButton);
                           if(_loc4_ || _loc1_)
                           {
                              §§push(true);
                              if(!_loc5_)
                              {
                                 §§pop().enabled = §§pop();
                                 if(!_loc5_)
                                 {
                                    §§push(this.buildNowButton);
                                    if(!(_loc5_ && _loc1_))
                                    {
                                       §§push(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.button.place.capital"));
                                       if(!_loc5_)
                                       {
                                          §§pop().label = §§pop();
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             §§push(this.buildNowButton);
                                             if(_loc4_ || _loc3_)
                                             {
                                                §§push(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.button.place.tooltip"));
                                                if(_loc4_ || _loc3_)
                                                {
                                                   §§pop().toolTip = §§pop();
                                                   if(_loc4_)
                                                   {
                                                      §§push(this.buildNowButton);
                                                      if(!_loc5_)
                                                      {
                                                         §§push("button_icon_build");
                                                         if(_loc4_)
                                                         {
                                                            §§pop().imageNameLeft = §§pop();
                                                            if(!_loc5_)
                                                            {
                                                               addr00f7:
                                                               §§push(this.buildNowButton);
                                                               if(_loc4_ || _loc2_)
                                                               {
                                                                  §§push("gui_popups_paperPopup");
                                                                  if(_loc4_ || _loc2_)
                                                                  {
                                                                     §§pop().libNameLeft = §§pop();
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§push(this.buildNowButton);
                                                                        if(!(_loc5_ && _loc3_))
                                                                        {
                                                                           §§push(this.buildNowButton);
                                                                           if(!(_loc5_ && _loc1_))
                                                                           {
                                                                              §§push("");
                                                                              if(_loc4_)
                                                                              {
                                                                                 var _temp_12:* = §§pop();
                                                                                 §§push(_temp_12);
                                                                                 §§push(_temp_12);
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    var _loc3_:* = §§pop();
                                                                                    if(!(_loc5_ && Boolean(this)))
                                                                                    {
                                                                                       §§pop().libNameRight = §§pop();
                                                                                       if(!(_loc5_ && _loc2_))
                                                                                       {
                                                                                          §§push(_loc3_);
                                                                                          if(_loc4_ || _loc3_)
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                addr018d:
                                                                                                §§pop().imageNameRight = §§pop();
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                }
                                                                                                addr03af:
                                                                                                §§push(this.buildNowButton);
                                                                                                if(!(_loc5_ && _loc3_))
                                                                                                {
                                                                                                   §§push(this.buildNowButton);
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      addr03cb:
                                                                                                      §§push(Boolean(§§pop().enabled));
                                                                                                      if(!(_loc5_ && _loc1_))
                                                                                                      {
                                                                                                         addr03dd:
                                                                                                         var _temp_18:* = §§pop();
                                                                                                         §§push(_temp_18);
                                                                                                         §§push(_temp_18);
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(_loc4_ || Boolean(this))
                                                                                                               {
                                                                                                                  addr03f6:
                                                                                                                  §§pop();
                                                                                                                  if(_loc4_ || Boolean(this))
                                                                                                                  {
                                                                                                                     addr0405:
                                                                                                                     §§push(this._data);
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().locked);
                                                                                                                        if(_loc4_ || _loc3_)
                                                                                                                        {
                                                                                                                           addr0420:
                                                                                                                           §§push(!§§pop());
                                                                                                                           if(!(_loc5_ && Boolean(this)))
                                                                                                                           {
                                                                                                                              addr042f:
                                                                                                                              §§pop().enabled = §§pop();
                                                                                                                              if(_loc4_)
                                                                                                                              {
                                                                                                                                 addr0438:
                                                                                                                                 §§push(this.buildNowButton);
                                                                                                                                 if(_loc4_)
                                                                                                                                 {
                                                                                                                                    addr0442:
                                                                                                                                    §§push(this._data);
                                                                                                                                    if(!_loc5_)
                                                                                                                                    {
                                                                                                                                       addr044c:
                                                                                                                                       §§push(§§pop().userCanAfford);
                                                                                                                                       if(_loc4_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          §§push(!§§pop());
                                                                                                                                          if(!(_loc5_ && _loc1_))
                                                                                                                                          {
                                                                                                                                             var _temp_25:* = §§pop();
                                                                                                                                             §§push(_temp_25);
                                                                                                                                             §§push(_temp_25);
                                                                                                                                             if(_loc4_ || _loc1_)
                                                                                                                                             {
                                                                                                                                                addr047b:
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   if(!(_loc5_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      if(_loc4_)
                                                                                                                                                      {
                                                                                                                                                         addr0494:
                                                                                                                                                         addr0498:
                                                                                                                                                         §§push(Boolean(this.buildNowButton.enabled));
                                                                                                                                                         if(_loc4_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            addr04aa:
                                                                                                                                                            var _temp_29:* = §§pop();
                                                                                                                                                            addr04ab:
                                                                                                                                                            §§push(_temp_29);
                                                                                                                                                            if(_temp_29)
                                                                                                                                                            {
                                                                                                                                                               if(_loc4_ || Boolean(this))
                                                                                                                                                               {
                                                                                                                                                                  addr04bd:
                                                                                                                                                                  §§pop();
                                                                                                                                                                  addr04db:
                                                                                                                                                                  addr04be:
                                                                                                                                                                  addr04c2:
                                                                                                                                                                  addr04c5:
                                                                                                                                                                  §§push(this._data.state == BlueprintVo.STATE_FULLY_CONSTRUCTED_AVAILABLE);
                                                                                                                                                                  if(!(_loc5_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     addr04da:
                                                                                                                                                                     §§push(!§§pop());
                                                                                                                                                                  }
                                                                                                                                                                  §§pop().showPlus = §§pop();
                                                                                                                                                                  addr04de:
                                                                                                                                                                  var _loc1_:CenterItemDataVo = new CenterItemDataVo();
                                                                                                                                                                  var _loc2_:Boolean = false;
                                                                                                                                                                  if(!_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this._data);
                                                                                                                                                                     if(!_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().permissionBuyable);
                                                                                                                                                                        if(_loc4_ || Boolean(this))
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc5_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr051a:
                                                                                                                                                                                 if(this._data.permission.permissionsBought < this._data.permission.config.buyCap)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr0541:
                                                                                                                                                                                       _loc2_ = true;
                                                                                                                                                                                       if(_loc4_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr0548:
                                                                                                                                                                                          _loc1_.blueprintVO = this._data;
                                                                                                                                                                                          if(_loc4_ || Boolean(_loc1_))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr055e:
                                                                                                                                                                                             this.center.data = _loc1_;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr0565);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr055e);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr0548);
                                                                                                                                                                              }
                                                                                                                                                                              addr0565:
                                                                                                                                                                              return;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr0548);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr0541);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr051a);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr0548);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr04da);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr04db);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr04bd);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr04be);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr04bd);
                                                                                                                                                }
                                                                                                                                                §§goto(addr04aa);
                                                                                                                                             }
                                                                                                                                             §§goto(addr04ab);
                                                                                                                                          }
                                                                                                                                          §§goto(addr04bd);
                                                                                                                                       }
                                                                                                                                       §§goto(addr04db);
                                                                                                                                    }
                                                                                                                                    §§goto(addr04c2);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0494);
                                                                                                                              }
                                                                                                                              §§goto(addr04de);
                                                                                                                           }
                                                                                                                           §§goto(addr04da);
                                                                                                                        }
                                                                                                                        §§goto(addr04aa);
                                                                                                                     }
                                                                                                                     §§goto(addr044c);
                                                                                                                  }
                                                                                                                  §§goto(addr0494);
                                                                                                               }
                                                                                                               §§goto(addr0420);
                                                                                                            }
                                                                                                            §§goto(addr042f);
                                                                                                         }
                                                                                                         §§goto(addr047b);
                                                                                                      }
                                                                                                      §§goto(addr0420);
                                                                                                   }
                                                                                                   §§goto(addr0498);
                                                                                                }
                                                                                                §§goto(addr0442);
                                                                                             }
                                                                                             §§goto(addr04c5);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr023a:
                                                                                             if(_loc4_ || Boolean(_loc1_))
                                                                                             {
                                                                                                addr024a:
                                                                                                §§pop().imageNameLeft = §§pop();
                                                                                                if(!(_loc5_ && Boolean(this)))
                                                                                                {
                                                                                                   addr025b:
                                                                                                   §§push(this._data);
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      addr0265:
                                                                                                      §§push(§§pop().state);
                                                                                                      if(!(_loc5_ && _loc2_))
                                                                                                      {
                                                                                                         addr0276:
                                                                                                         §§push(BlueprintVo.STATE_BUY_MORE_WITH_RC);
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            addr0282:
                                                                                                            if(§§pop() == §§pop())
                                                                                                            {
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  addr028c:
                                                                                                                  §§push(this.buildNowButton);
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     §§push("dd_button_icon");
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        addr029f:
                                                                                                                        §§pop().imageNameRight = §§pop();
                                                                                                                        if(_loc4_ || _loc2_)
                                                                                                                        {
                                                                                                                           addr02bc:
                                                                                                                           §§push(this.buildNowButton);
                                                                                                                           if(!(_loc5_ && _loc2_))
                                                                                                                           {
                                                                                                                              §§push(true);
                                                                                                                              if(!(_loc5_ && _loc2_))
                                                                                                                              {
                                                                                                                                 §§pop().showSparkle = §§pop();
                                                                                                                                 if(_loc4_)
                                                                                                                                 {
                                                                                                                                    §§push(this.buildNowButton);
                                                                                                                                    if(_loc4_)
                                                                                                                                    {
                                                                                                                                       §§push(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.button.buyPermission.tooltip"));
                                                                                                                                       if(!(_loc5_ && Boolean(this)))
                                                                                                                                       {
                                                                                                                                          addr0309:
                                                                                                                                          §§pop().toolTip = §§pop();
                                                                                                                                          if(!(_loc4_ || _loc2_))
                                                                                                                                          {
                                                                                                                                             addr035a:
                                                                                                                                             §§push(this.buildNowButton);
                                                                                                                                             if(_loc4_)
                                                                                                                                             {
                                                                                                                                                addr0364:
                                                                                                                                                §§push(false);
                                                                                                                                                if(_loc4_)
                                                                                                                                                {
                                                                                                                                                   §§pop().showSparkle = §§pop();
                                                                                                                                                   if(_loc4_)
                                                                                                                                                   {
                                                                                                                                                      addr0374:
                                                                                                                                                      §§push(this.buildNowButton);
                                                                                                                                                      if(_loc4_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         addr0386:
                                                                                                                                                         §§push(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.button.buy.tooltip"));
                                                                                                                                                         if(!(_loc5_ && Boolean(this)))
                                                                                                                                                         {
                                                                                                                                                            addr039f:
                                                                                                                                                            §§pop().toolTip = §§pop();
                                                                                                                                                            if(!(_loc5_ && Boolean(_loc1_)))
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr03af);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0438);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr04c5);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr04be);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr04de);
                                                                                                                                                }
                                                                                                                                                §§goto(addr03f6);
                                                                                                                                             }
                                                                                                                                             §§goto(addr0494);
                                                                                                                                          }
                                                                                                                                          §§goto(addr03af);
                                                                                                                                       }
                                                                                                                                       §§goto(addr039f);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0364);
                                                                                                                                 }
                                                                                                                                 §§goto(addr03af);
                                                                                                                              }
                                                                                                                              §§goto(addr03dd);
                                                                                                                           }
                                                                                                                           §§goto(addr0494);
                                                                                                                        }
                                                                                                                        §§goto(addr035a);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr0351:
                                                                                                                        §§pop().imageNameRight = §§pop();
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           §§goto(addr035a);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr0374);
                                                                                                                  }
                                                                                                                  §§goto(addr0364);
                                                                                                               }
                                                                                                               §§goto(addr02bc);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr032a:
                                                                                                               addr0324:
                                                                                                               addr0321:
                                                                                                               if(this._data.state == BlueprintVo.STATE_PERMISSION_AVAILABLE)
                                                                                                               {
                                                                                                                  if(!(_loc5_ && Boolean(_loc1_)))
                                                                                                                  {
                                                                                                                     addr033c:
                                                                                                                     §§push(this.buildNowButton);
                                                                                                                     if(_loc4_ || Boolean(_loc1_))
                                                                                                                     {
                                                                                                                        addr034e:
                                                                                                                        §§goto(addr0351);
                                                                                                                        §§push("layer_cc_icon");
                                                                                                                     }
                                                                                                                     §§goto(addr0442);
                                                                                                                  }
                                                                                                                  §§goto(addr035a);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr03af);
                                                                                                         }
                                                                                                         §§goto(addr032a);
                                                                                                      }
                                                                                                      §§goto(addr0324);
                                                                                                   }
                                                                                                   §§goto(addr0321);
                                                                                                }
                                                                                                §§goto(addr0374);
                                                                                             }
                                                                                             §§goto(addr0309);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr0239:
                                                                                          §§push(_loc3_);
                                                                                       }
                                                                                       §§goto(addr023a);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr0236:
                                                                                       §§pop().libNameLeft = §§pop();
                                                                                    }
                                                                                    §§goto(addr0239);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr0235:
                                                                                    _loc3_ = §§pop();
                                                                                 }
                                                                                 §§goto(addr0236);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr0234:
                                                                                 var _temp_47:* = §§pop();
                                                                                 §§push(_temp_47);
                                                                                 §§push(_temp_47);
                                                                              }
                                                                              §§goto(addr0235);
                                                                           }
                                                                           §§goto(addr03cb);
                                                                        }
                                                                        §§goto(addr0386);
                                                                     }
                                                                     §§goto(addr0374);
                                                                  }
                                                                  §§goto(addr029f);
                                                               }
                                                               §§goto(addr0405);
                                                            }
                                                            else
                                                            {
                                                               addr01f2:
                                                               §§push(this.buildNowButton);
                                                               if(_loc4_)
                                                               {
                                                                  §§push("gui_resources_icons");
                                                                  if(_loc4_)
                                                                  {
                                                                     addr0205:
                                                                     §§pop().libNameRight = §§pop();
                                                                     if(_loc4_ || Boolean(this))
                                                                     {
                                                                        addr0216:
                                                                        §§push(this.buildNowButton);
                                                                        if(_loc4_)
                                                                        {
                                                                           addr0220:
                                                                           §§push(this.buildNowButton);
                                                                           if(!(_loc5_ && _loc2_))
                                                                           {
                                                                              §§goto(addr0234);
                                                                              §§push("");
                                                                           }
                                                                           §§goto(addr03cb);
                                                                        }
                                                                        §§goto(addr0494);
                                                                     }
                                                                     §§goto(addr03af);
                                                                  }
                                                                  §§goto(addr029f);
                                                               }
                                                            }
                                                            §§goto(addr0494);
                                                         }
                                                         §§goto(addr0205);
                                                      }
                                                      §§goto(addr034e);
                                                   }
                                                   §§goto(addr02bc);
                                                }
                                                §§goto(addr018d);
                                             }
                                             §§goto(addr0405);
                                          }
                                          §§goto(addr00f7);
                                       }
                                       §§goto(addr024a);
                                    }
                                    §§goto(addr0386);
                                 }
                                 §§goto(addr0216);
                              }
                              §§goto(addr04db);
                           }
                           §§goto(addr0364);
                        }
                        §§goto(addr025b);
                     }
                     else
                     {
                        §§push(this.buildNowButton);
                        if(!(_loc5_ && Boolean(_loc1_)))
                        {
                           §§push(true);
                           if(!_loc5_)
                           {
                              §§pop().enabled = §§pop();
                              if(_loc4_ || Boolean(_loc1_))
                              {
                                 §§push(this.buildNowButton);
                                 if(!_loc5_)
                                 {
                                    §§push(LocaUtils.getThousendSeperatedNumber(this._data.price));
                                    if(_loc4_)
                                    {
                                       §§pop().label = §§pop();
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          §§goto(addr01f2);
                                       }
                                       §§goto(addr028c);
                                    }
                                    §§goto(addr024a);
                                 }
                                 §§goto(addr0494);
                              }
                              §§goto(addr025b);
                           }
                           §§goto(addr03f6);
                        }
                     }
                     §§goto(addr0220);
                  }
                  §§goto(addr0282);
               }
               §§goto(addr0276);
            }
            §§goto(addr0265);
         }
         §§goto(addr033c);
      }
      
      private function _ArchitectTemplate_SecurityDevice_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc2_)
            {
               _loc1_.height = 25;
               if(!_loc2_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(!_loc2_)
                  {
                     §§goto(addr005c);
                  }
                  §§goto(addr008c);
               }
               addr005c:
               _loc1_.horizontalAlign = "center";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.top = -9;
                  if(!(_loc2_ && _loc2_))
                  {
                     addr008c:
                     _loc1_.mxmlContent = [this._ArchitectTemplate_SecurityDevice_LocaLabel1_i()];
                     if(_loc3_)
                     {
                        §§goto(addr009c);
                     }
                  }
                  §§goto(addr00a8);
               }
               §§goto(addr009c);
            }
            addr009c:
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  addr00a8:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr005c);
      }
      
      private function _ArchitectTemplate_SecurityDevice_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.maxWidth = 690;
            if(!_loc2_)
            {
               _loc1_.maxDisplayedLines = 2;
               if(!_loc2_)
               {
                  _loc1_.styleName = "flavorText";
                  if(_loc3_)
                  {
                     _loc1_.id = "flavorText";
                     if(_loc3_ || _loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr006d:
                              _loc1_.document = this;
                              if(_loc3_ || Boolean(this))
                              {
                                 §§goto(addr0089);
                              }
                              §§goto(addr009b);
                           }
                        }
                        addr0089:
                        this.flavorText = _loc1_;
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr009b:
                           BindingManager.executeBindings(this,"flavorText",this.flavorText);
                        }
                        §§goto(addr00a8);
                     }
                     addr00a8:
                     return _loc1_;
                  }
               }
            }
         }
         §§goto(addr006d);
      }
      
      private function _ArchitectTemplate_SecurityDevice_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.width = 240;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.height = 300;
               if(!_loc2_)
               {
                  _loc1_.left = 4;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr005d:
                     _loc1_.bottom = 10;
                     if(_loc3_)
                     {
                        _loc1_.mxmlContent = [this._ArchitectTemplate_SecurityDevice_BuildingCostComponent1_i(),this._ArchitectTemplate_SecurityDevice_StickyNoteComponent1_i()];
                        if(!(_loc2_ && _loc3_))
                        {
                           addr0092:
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr00a2);
                     }
                     §§goto(addr0092);
                  }
                  addr00a2:
                  return _loc1_;
               }
            }
         }
         §§goto(addr005d);
      }
      
      private function _ArchitectTemplate_SecurityDevice_BuildingCostComponent1_i() : BuildingCostComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BuildingCostComponent = new BuildingCostComponent();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc2_)
            {
               _loc1_.top = 0;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.height = 115;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§goto(addr006a);
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0081);
            }
            §§goto(addr0075);
         }
         addr006a:
         _loc1_.id = "costComponent";
         if(_loc3_)
         {
            addr0075:
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  addr0081:
                  _loc1_.document = this;
                  if(!(_loc2_ && _loc3_))
                  {
                     §§goto(addr009e);
                  }
               }
               §§goto(addr00b0);
            }
         }
         addr009e:
         this.costComponent = _loc1_;
         if(_loc3_ || _loc3_)
         {
            addr00b0:
            BindingManager.executeBindings(this,"costComponent",this.costComponent);
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_SecurityDevice_StickyNoteComponent1_i() : StickyNoteComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.bottom = 28;
               if(_loc3_)
               {
                  _loc1_.height = 126;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr0048:
                     _loc1_.tapeLeft = true;
                     if(!_loc2_)
                     {
                        addr0052:
                        _loc1_.tapeRight = true;
                        if(_loc3_)
                        {
                           addr0067:
                           _loc1_.visible = false;
                           if(_loc3_)
                           {
                              _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ArchitectTemplate_SecurityDevice_Array4_c);
                              if(_loc3_)
                              {
                                 addr0085:
                                 _loc1_.id = "restrictionGroup";
                                 if(_loc3_ || Boolean(this))
                                 {
                                    addr0098:
                                    if(!_loc1_.document)
                                    {
                                       if(_loc3_ || _loc3_)
                                       {
                                          addr00b8:
                                          _loc1_.document = this;
                                          if(!(_loc2_ && Boolean(_loc1_)))
                                          {
                                             addr00c9:
                                             this.restrictionGroup = _loc1_;
                                             if(_loc3_)
                                             {
                                                addr00d3:
                                                BindingManager.executeBindings(this,"restrictionGroup",this.restrictionGroup);
                                             }
                                          }
                                          §§goto(addr00e0);
                                       }
                                       §§goto(addr00d3);
                                    }
                                 }
                                 §§goto(addr00c9);
                              }
                              addr00e0:
                              return _loc1_;
                           }
                           §§goto(addr0098);
                        }
                     }
                     §§goto(addr00b8);
                  }
                  §§goto(addr0067);
               }
               §§goto(addr0085);
            }
            §§goto(addr0048);
         }
         §§goto(addr0052);
      }
      
      private function _ArchitectTemplate_SecurityDevice_Array4_c() : Array
      {
         return [this._ArchitectTemplate_SecurityDevice_DynamicImageButton1_i(),this._ArchitectTemplate_SecurityDevice_VGroup1_c()];
      }
      
      private function _ArchitectTemplate_SecurityDevice_DynamicImageButton1_i() : DynamicImageButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(_loc2_)
         {
            _loc1_.styleName = "featureInfoButton";
            if(!(_loc3_ && _loc3_))
            {
               addr0032:
               _loc1_.right = 8;
               if(!_loc3_)
               {
                  _loc1_.top = -10;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr005a:
                     _loc1_.addEventListener("click",this.__restrictionFeatureButton_click);
                     if(_loc2_)
                     {
                        addr006a:
                        _loc1_.id = "restrictionFeatureButton";
                        if(_loc2_ || Boolean(this))
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 _loc1_.document = this;
                                 if(_loc2_ || Boolean(_loc1_))
                                 {
                                    addr00a6:
                                    this.restrictionFeatureButton = _loc1_;
                                    if(_loc2_)
                                    {
                                       addr00b0:
                                       BindingManager.executeBindings(this,"restrictionFeatureButton",this.restrictionFeatureButton);
                                    }
                                 }
                                 return _loc1_;
                              }
                              §§goto(addr00b0);
                           }
                        }
                     }
                  }
                  §§goto(addr00a6);
               }
               §§goto(addr005a);
            }
            §§goto(addr006a);
         }
         §§goto(addr0032);
      }
      
      public function __restrictionFeatureButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            this.handleRestrictionFeatureClick();
         }
      }
      
      private function _ArchitectTemplate_SecurityDevice_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.horizontalCenter = 0;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.top = 9;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.mxmlContent = [this._ArchitectTemplate_SecurityDevice_PostitHeaderComponent1_i(),this._ArchitectTemplate_SecurityDevice_HGroup2_c()];
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr0086:
                           _loc1_.document = this;
                        }
                     }
                     return _loc1_;
                  }
               }
            }
         }
         §§goto(addr0086);
      }
      
      private function _ArchitectTemplate_SecurityDevice_PostitHeaderComponent1_i() : PostitHeaderComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:PostitHeaderComponent = new PostitHeaderComponent();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.id = "restrictionHeader";
            if(_loc3_ || Boolean(this))
            {
               addr0049:
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.document = this;
                     if(_loc3_)
                     {
                        addr0071:
                        this.restrictionHeader = _loc1_;
                        if(!_loc2_)
                        {
                           addr007b:
                           BindingManager.executeBindings(this,"restrictionHeader",this.restrictionHeader);
                        }
                        §§goto(addr0088);
                     }
                     §§goto(addr007b);
                  }
                  §§goto(addr0088);
               }
               §§goto(addr0071);
            }
            addr0088:
            return _loc1_;
         }
         §§goto(addr0049);
      }
      
      private function _ArchitectTemplate_SecurityDevice_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc3_)
         {
            _loc1_.horizontalAlign = "left";
            if(!(_loc2_ && Boolean(this)))
            {
               addr0047:
               _loc1_.verticalAlign = "middle";
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._ArchitectTemplate_SecurityDevice_BriskImageDynaLib1_i(),this._ArchitectTemplate_SecurityDevice_LocaLabel2_i()];
                  §§goto(addr0052);
               }
               §§goto(addr0092);
            }
            addr0052:
            if(_loc3_ || Boolean(this))
            {
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc2_)
                  {
                     addr0092:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0047);
      }
      
      private function _ArchitectTemplate_SecurityDevice_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.dynaBmpSourceName = "restriction_icon_farmland";
               addr0039:
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.id = "restrictionGfx";
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           §§goto(addr0079);
                        }
                     }
                     §§goto(addr0082);
                  }
                  addr0079:
                  _loc1_.document = this;
                  if(!_loc3_)
                  {
                     addr0082:
                     this.restrictionGfx = _loc1_;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        BindingManager.executeBindings(this,"restrictionGfx",this.restrictionGfx);
                     }
                  }
                  §§goto(addr00a1);
               }
               §§goto(addr0082);
            }
            addr00a1:
            return _loc1_;
         }
         §§goto(addr0039);
      }
      
      private function _ArchitectTemplate_SecurityDevice_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.styleName = "miniLayerFlavourText";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.id = "restrictionName";
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        _loc1_.document = this;
                        if(_loc2_ || Boolean(this))
                        {
                           §§goto(addr0075);
                        }
                        §§goto(addr0087);
                     }
                  }
                  addr0075:
                  this.restrictionName = _loc1_;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0087:
                     BindingManager.executeBindings(this,"restrictionName",this.restrictionName);
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
      
      private function _ArchitectTemplate_SecurityDevice_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.left = 240;
            if(!_loc2_)
            {
               _loc1_.right = 220;
               if(_loc3_)
               {
                  §§goto(addr0041);
               }
               §§goto(addr007f);
            }
            §§goto(addr0089);
         }
         addr0041:
         _loc1_.height = 300;
         if(_loc3_)
         {
            _loc1_.bottom = 15;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.verticalAlign = "top";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr007f:
                  _loc1_.horizontalAlign = "center";
                  if(!_loc2_)
                  {
                     addr0089:
                     _loc1_.gap = 15;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        §§goto(addr00a7);
                     }
                     §§goto(addr00bd);
                  }
                  §§goto(addr00c9);
               }
               §§goto(addr00bd);
            }
            addr00a7:
            _loc1_.mxmlContent = [this._ArchitectTemplate_SecurityDevice_DetailsCenterComponent1_i(),this._ArchitectTemplate_SecurityDevice_MultistateButton1_i()];
            if(!_loc2_)
            {
               addr00bd:
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr00c9:
                     _loc1_.document = this;
                  }
               }
            }
            §§goto(addr00cd);
         }
         addr00cd:
         return _loc1_;
      }
      
      private function _ArchitectTemplate_SecurityDevice_DetailsCenterComponent1_i() : DetailsCenterComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DetailsCenterComponent = new DetailsCenterComponent();
         if(!_loc3_)
         {
            _loc1_.id = "center";
            if(_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     _loc1_.document = this;
                     if(!_loc3_)
                     {
                        addr004d:
                        this.center = _loc1_;
                        if(!_loc3_)
                        {
                           BindingManager.executeBindings(this,"center",this.center);
                        }
                     }
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr004d);
      }
      
      private function _ArchitectTemplate_SecurityDevice_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.width = 204;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.imageNameLeft = "button_icon_build";
               if(!_loc2_)
               {
                  _loc1_.libNameLeft = "gui_popups_paperPopup";
                  if(!_loc2_)
                  {
                     _loc1_.id = "buildNowButton";
                     if(_loc3_)
                     {
                        addr006a:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 addr0092:
                                 this.buildNowButton = _loc1_;
                                 if(!_loc2_)
                                 {
                                    addr009c:
                                    BindingManager.executeBindings(this,"buildNowButton",this.buildNowButton);
                                 }
                              }
                           }
                           §§goto(addr00a9);
                        }
                        §§goto(addr0092);
                     }
                     §§goto(addr009c);
                  }
                  addr00a9:
                  return _loc1_;
               }
               §§goto(addr0092);
            }
         }
         §§goto(addr006a);
      }
      
      private function _ArchitectTemplate_SecurityDevice_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc3_)
         {
            _loc1_.width = 220;
            if(!_loc2_)
            {
               _loc1_.height = 300;
               if(_loc3_)
               {
                  §§goto(addr0048);
               }
            }
            §§goto(addr005a);
         }
         addr0048:
         _loc1_.right = 0;
         if(_loc3_ || Boolean(_loc1_))
         {
            addr005a:
            _loc1_.bottom = 5;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               §§goto(addr0078);
            }
            §§goto(addr008e);
         }
         addr0078:
         _loc1_.mxmlContent = [this._ArchitectTemplate_SecurityDevice_StickyNoteComponent2_c(),this._ArchitectTemplate_SecurityDevice_Group4_c()];
         if(!_loc2_)
         {
            addr008e:
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
      
      private function _ArchitectTemplate_SecurityDevice_StickyNoteComponent2_c() : StickyNoteComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.width = 230;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.right = -4;
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.top = -5;
                  if(_loc2_)
                  {
                     _loc1_.height = 200;
                     if(_loc2_)
                     {
                        addr006b:
                        _loc1_.tapeTop = true;
                        if(_loc2_ || _loc3_)
                        {
                           _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ArchitectTemplate_SecurityDevice_Array9_c);
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              if(!_loc1_.document)
                              {
                                 if(_loc2_)
                                 {
                                    addr00b2:
                                    _loc1_.document = this;
                                 }
                              }
                           }
                           §§goto(addr00b6);
                        }
                     }
                     §§goto(addr00b2);
                  }
                  §§goto(addr006b);
               }
               addr00b6:
               return _loc1_;
            }
         }
         §§goto(addr00b2);
      }
      
      private function _ArchitectTemplate_SecurityDevice_Array9_c() : Array
      {
         return [this._ArchitectTemplate_SecurityDevice_VGroup3_c(),this._ArchitectTemplate_SecurityDevice_DynamicImageButton2_i()];
      }
      
      private function _ArchitectTemplate_SecurityDevice_VGroup3_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.horizontalCenter = 0;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.gap = 8;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.percentWidth = 100;
                  addr0043:
                  if(_loc2_)
                  {
                     _loc1_.percentHeight = 100;
                     if(!(_loc3_ && _loc2_))
                     {
                        _loc1_.paddingTop = 3;
                        if(_loc2_ || _loc3_)
                        {
                           addr008b:
                           _loc1_.mxmlContent = [this._ArchitectTemplate_SecurityDevice_PostitHeaderComponent2_i(),this._ArchitectTemplate_SecurityDevice_List1_i()];
                           if(_loc2_)
                           {
                              §§goto(addr00a1);
                           }
                        }
                        §§goto(addr00b5);
                     }
                     §§goto(addr008b);
                  }
               }
               §§goto(addr00b5);
            }
            addr00a1:
            if(!_loc1_.document)
            {
               if(!(_loc3_ && _loc2_))
               {
                  addr00b5:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0043);
      }
      
      private function _ArchitectTemplate_SecurityDevice_PostitHeaderComponent2_i() : PostitHeaderComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:PostitHeaderComponent = new PostitHeaderComponent();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.id = "securityHeader";
            if(_loc2_ || Boolean(_loc1_))
            {
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.document = this;
                     if(!_loc3_)
                     {
                        §§goto(addr0071);
                     }
                  }
                  §§goto(addr0083);
               }
            }
            addr0071:
            this.securityHeader = _loc1_;
            if(_loc2_ || Boolean(_loc1_))
            {
               addr0083:
               BindingManager.executeBindings(this,"securityHeader",this.securityHeader);
            }
            §§goto(addr0090);
         }
         addr0090:
         return _loc1_;
      }
      
      private function _ArchitectTemplate_SecurityDevice_List1_i() : List
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:List = new List();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc3_)
            {
               §§goto(addr0033);
            }
            §§goto(addr00ac);
         }
         addr0033:
         _loc1_.percentHeight = 100;
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.itemRenderer = this._ArchitectTemplate_SecurityDevice_ClassFactory1_c();
            if(_loc3_ || _loc3_)
            {
               _loc1_.setStyle("skinClass",ArchitectSecuritygradeListSkin);
               if(_loc3_ || Boolean(_loc1_))
               {
                  §§goto(addr007f);
               }
               §§goto(addr00c7);
            }
         }
         addr007f:
         _loc1_.id = "securityList";
         if(_loc3_)
         {
            if(!_loc1_.document)
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  addr00ac:
                  _loc1_.document = this;
                  if(!_loc2_)
                  {
                     §§goto(addr00b5);
                  }
                  §§goto(addr00c7);
               }
            }
         }
         addr00b5:
         this.securityList = _loc1_;
         if(!(_loc2_ && Boolean(this)))
         {
            addr00c7:
            BindingManager.executeBindings(this,"securityList",this.securityList);
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_SecurityDevice_ClassFactory1_c() : ClassFactory
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ClassFactory = new ClassFactory();
         if(_loc3_ || _loc3_)
         {
            _loc1_.generator = ArchitectSecuritygradeRenderer;
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_SecurityDevice_DynamicImageButton2_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.styleName = "featureInfoButton";
            if(_loc3_)
            {
               _loc1_.left = 0;
               if(_loc3_)
               {
                  _loc1_.top = -10;
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.addEventListener("click",this.__securityFeatureButton_click);
                     §§goto(addr004f);
                  }
                  §§goto(addr00c3);
               }
               §§goto(addr0087);
            }
         }
         addr004f:
         if(_loc3_ || _loc3_)
         {
            _loc1_.id = "securityFeatureButton";
            if(_loc3_ || _loc3_)
            {
               addr0087:
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.document = this;
                     if(!(_loc2_ && _loc2_))
                     {
                        addr00b9:
                        this.securityFeatureButton = _loc1_;
                        if(_loc3_)
                        {
                           addr00c3:
                           BindingManager.executeBindings(this,"securityFeatureButton",this.securityFeatureButton);
                        }
                        §§goto(addr00d0);
                     }
                     §§goto(addr00c3);
                  }
                  §§goto(addr00d0);
               }
            }
            §§goto(addr00b9);
         }
         addr00d0:
         return _loc1_;
      }
      
      public function __securityFeatureButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.handleSecuritygradeFeatureClick();
         }
      }
      
      private function _ArchitectTemplate_SecurityDevice_Group4_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.width = 235;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.bottom = 0;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.right = -2;
                  if(_loc3_)
                  {
                     §§goto(addr0073);
                  }
                  §§goto(addr0089);
               }
               addr0073:
               _loc1_.mxmlContent = [this._ArchitectTemplate_SecurityDevice_HGroup3_c(),this._ArchitectTemplate_SecurityDevice_DynamicImageButton3_i()];
               if(!_loc2_)
               {
                  addr0089:
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
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
         §§goto(addr0089);
      }
      
      private function _ArchitectTemplate_SecurityDevice_HGroup3_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.horizontalAlign = "center";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.percentWidth = 100;
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._ArchitectTemplate_SecurityDevice_StickyNoteComponent3_i()];
                  if(_loc3_ || Boolean(this))
                  {
                     addr0075:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           addr0089:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr008d);
                  }
                  §§goto(addr0089);
               }
               addr008d:
               return _loc1_;
            }
            §§goto(addr0089);
         }
         §§goto(addr0075);
      }
      
      private function _ArchitectTemplate_SecurityDevice_StickyNoteComponent3_i() : StickyNoteComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(!_loc3_)
         {
            _loc1_.height = 120;
            if(!_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(!(_loc3_ && Boolean(this)))
               {
                  addr003b:
                  _loc1_.tapeLeft = true;
                  if(_loc2_)
                  {
                     _loc1_.tapeRight = true;
                     if(!(_loc3_ && _loc2_))
                     {
                        addr0064:
                        _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ArchitectTemplate_SecurityDevice_Array13_c);
                        if(_loc2_)
                        {
                           addr0079:
                           _loc1_.id = "effectsComponent";
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              addr008c:
                              if(!_loc1_.document)
                              {
                                 if(_loc2_)
                                 {
                                    addr00a3:
                                    _loc1_.document = this;
                                    if(!_loc3_)
                                    {
                                       addr00ac:
                                       this.effectsComponent = _loc1_;
                                       if(_loc2_ || Boolean(_loc1_))
                                       {
                                          BindingManager.executeBindings(this,"effectsComponent",this.effectsComponent);
                                       }
                                    }
                                 }
                                 return _loc1_;
                              }
                              §§goto(addr00ac);
                           }
                           §§goto(addr00a3);
                        }
                     }
                     §§goto(addr008c);
                  }
                  §§goto(addr0064);
               }
               §§goto(addr0079);
            }
            §§goto(addr00ac);
         }
         §§goto(addr003b);
      }
      
      private function _ArchitectTemplate_SecurityDevice_Array13_c() : Array
      {
         return [this._ArchitectTemplate_SecurityDevice_PostitHeaderComponent3_i(),this._ArchitectTemplate_SecurityDevice_HGroup4_c()];
      }
      
      private function _ArchitectTemplate_SecurityDevice_PostitHeaderComponent3_i() : PostitHeaderComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:PostitHeaderComponent = new PostitHeaderComponent();
         if(_loc3_)
         {
            _loc1_.top = 0;
            if(!(_loc2_ && _loc3_))
            {
               addr003f:
               _loc1_.id = "effectHeader";
               if(!_loc2_)
               {
                  addr004a:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.document = this;
                        if(_loc3_)
                        {
                           addr0073:
                           this.effectHeader = _loc1_;
                           if(_loc3_ || _loc3_)
                           {
                              addr0085:
                              BindingManager.executeBindings(this,"effectHeader",this.effectHeader);
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr0085);
                  }
               }
               §§goto(addr0073);
            }
            §§goto(addr004a);
         }
         §§goto(addr003f);
      }
      
      private function _ArchitectTemplate_SecurityDevice_HGroup4_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 90;
            if(_loc2_)
            {
               _loc1_.top = 22;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.percentHeight = 100;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.horizontalCenter = 0;
                     if(!(_loc3_ && _loc3_))
                     {
                        §§goto(addr007f);
                     }
                  }
                  §§goto(addr0095);
               }
            }
            addr007f:
            _loc1_.mxmlContent = [this._ArchitectTemplate_SecurityDevice_HGroup5_i(),this._ArchitectTemplate_SecurityDevice_HGroup6_i()];
            if(!_loc3_)
            {
               addr0095:
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.document = this;
                  }
               }
            }
            §§goto(addr00ad);
         }
         addr00ad:
         return _loc1_;
      }
      
      private function _ArchitectTemplate_SecurityDevice_HGroup5_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 50;
            if(_loc2_)
            {
               _loc1_.horizontalAlign = "center";
               if(!_loc3_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc2_)
                  {
                     _loc1_.percentHeight = 100;
                     if(_loc2_ || _loc2_)
                     {
                        _loc1_.mxmlContent = [this._ArchitectTemplate_SecurityDevice_LocaLabel3_i(),this._ArchitectTemplate_SecurityDevice_BriskImageDynaLib2_i()];
                        if(_loc2_ || _loc3_)
                        {
                           _loc1_.id = "moodGroup";
                           if(_loc2_ || Boolean(this))
                           {
                              if(!_loc1_.document)
                              {
                                 if(_loc2_ || Boolean(this))
                                 {
                                    addr00b0:
                                    _loc1_.document = this;
                                    if(_loc2_)
                                    {
                                       §§goto(addr00b9);
                                    }
                                    §§goto(addr00c3);
                                 }
                              }
                              addr00b9:
                              this.moodGroup = _loc1_;
                              if(_loc2_)
                              {
                                 addr00c3:
                                 BindingManager.executeBindings(this,"moodGroup",this.moodGroup);
                              }
                              §§goto(addr00d0);
                           }
                           §§goto(addr00b0);
                        }
                        addr00d0:
                        return _loc1_;
                     }
                  }
               }
            }
            §§goto(addr00b0);
         }
         §§goto(addr00b9);
      }
      
      private function _ArchitectTemplate_SecurityDevice_LocaLabel3_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.styleName = "outcomeNeutral";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.text = "0";
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.id = "moodLabel";
                  if(!(_loc2_ && _loc3_))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           addr0091:
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              addr009a:
                              this.moodLabel = _loc1_;
                              if(_loc3_)
                              {
                                 BindingManager.executeBindings(this,"moodLabel",this.moodLabel);
                              }
                           }
                        }
                        return _loc1_;
                     }
                  }
                  §§goto(addr009a);
               }
            }
            §§goto(addr0091);
         }
         §§goto(addr009a);
      }
      
      private function _ArchitectTemplate_SecurityDevice_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_resources_icons";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "layer_sad_icon";
               if(_loc2_ || _loc3_)
               {
                  addr004a:
                  _loc1_.id = "moodIcon";
                  if(!_loc3_)
                  {
                     addr0055:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           §§goto(addr006e);
                        }
                        §§goto(addr0089);
                     }
                     §§goto(addr0077);
                  }
                  §§goto(addr0089);
               }
               §§goto(addr0055);
            }
            §§goto(addr004a);
         }
         addr006e:
         _loc1_.document = this;
         if(_loc2_)
         {
            addr0077:
            this.moodIcon = _loc1_;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               addr0089:
               BindingManager.executeBindings(this,"moodIcon",this.moodIcon);
            }
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_SecurityDevice_HGroup6_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 50;
            if(_loc2_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc2_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr0046:
                     _loc1_.percentHeight = 100;
                     if(_loc2_)
                     {
                        addr005b:
                        _loc1_.mxmlContent = [this._ArchitectTemplate_SecurityDevice_LocaLabel4_i(),this._ArchitectTemplate_SecurityDevice_BriskImageDynaLib3_i()];
                        if(!_loc3_)
                        {
                           _loc1_.id = "energyGroup";
                           if(!(_loc3_ && _loc2_))
                           {
                              if(!_loc1_.document)
                              {
                                 if(_loc2_)
                                 {
                                    addr0090:
                                    _loc1_.document = this;
                                    if(!(_loc3_ && Boolean(_loc1_)))
                                    {
                                       §§goto(addr00af);
                                    }
                                    §§goto(addr00c1);
                                 }
                              }
                              addr00af:
                              this.energyGroup = _loc1_;
                              if(_loc2_ || Boolean(_loc1_))
                              {
                                 addr00c1:
                                 BindingManager.executeBindings(this,"energyGroup",this.energyGroup);
                              }
                              §§goto(addr00ce);
                           }
                           addr00ce:
                           return _loc1_;
                        }
                     }
                     §§goto(addr00af);
                  }
                  §§goto(addr0090);
               }
               §§goto(addr00af);
            }
            §§goto(addr0046);
         }
         §§goto(addr005b);
      }
      
      private function _ArchitectTemplate_SecurityDevice_LocaLabel4_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || _loc2_)
         {
            _loc1_.styleName = "outcomeNeutral";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.text = "0";
               if(_loc2_)
               {
                  addr0050:
                  _loc1_.id = "energyLabel";
                  if(_loc2_ || _loc2_)
                  {
                     addr0063:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           addr0082:
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              addr008b:
                              this.energyLabel = _loc1_;
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 addr009d:
                                 BindingManager.executeBindings(this,"energyLabel",this.energyLabel);
                              }
                              §§goto(addr00aa);
                           }
                           §§goto(addr009d);
                        }
                        addr00aa:
                        return _loc1_;
                     }
                     §§goto(addr008b);
                  }
                  §§goto(addr0082);
               }
               §§goto(addr008b);
            }
            §§goto(addr0050);
         }
         §§goto(addr0063);
      }
      
      private function _ArchitectTemplate_SecurityDevice_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_resources_icons";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "energy_icon";
               if(_loc2_)
               {
                  _loc1_.id = "energyIcon";
                  §§goto(addr0035);
               }
               §§goto(addr0054);
            }
            addr0035:
            if(!(_loc3_ && _loc3_))
            {
               addr0054:
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr006d);
                  }
                  §§goto(addr0088);
               }
               §§goto(addr007e);
            }
            addr006d:
            _loc1_.document = this;
            if(_loc2_ || _loc2_)
            {
               addr007e:
               this.energyIcon = _loc1_;
               if(!_loc3_)
               {
                  addr0088:
                  BindingManager.executeBindings(this,"energyIcon",this.energyIcon);
               }
            }
            return _loc1_;
         }
         §§goto(addr007e);
      }
      
      private function _ArchitectTemplate_SecurityDevice_DynamicImageButton3_i() : DynamicImageButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(_loc2_)
         {
            _loc1_.styleName = "featureInfoButton";
            if(_loc2_)
            {
               _loc1_.right = 24;
               if(!(_loc3_ && _loc2_))
               {
                  §§goto(addr003b);
               }
               §§goto(addr00b6);
            }
            addr003b:
            _loc1_.top = 15;
            if(_loc2_)
            {
               _loc1_.addEventListener("click",this.__effectFeatureButton_click);
               if(_loc2_ || _loc3_)
               {
                  _loc1_.id = "effectFeatureButton";
                  if(!(_loc3_ && _loc2_))
                  {
                     addr007c:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           _loc1_.document = this;
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              addr00a4:
                              this.effectFeatureButton = _loc1_;
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 addr00b6:
                                 BindingManager.executeBindings(this,"effectFeatureButton",this.effectFeatureButton);
                              }
                              §§goto(addr00c3);
                           }
                           §§goto(addr00b6);
                        }
                        §§goto(addr00c3);
                     }
                     §§goto(addr00a4);
                  }
                  §§goto(addr00b6);
               }
               §§goto(addr00a4);
            }
            addr00c3:
            return _loc1_;
         }
         §§goto(addr007c);
      }
      
      public function __effectFeatureButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            this.handleEffectFeatureClick();
         }
      }
      
      public function ___ArchitectTemplate_SecurityDevice_Group1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.handleCreationComplete(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get buildNowButton() : MultistateButton
      {
         return this._597326554buildNowButton;
      }
      
      public function set buildNowButton(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._597326554buildNowButton;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._597326554buildNowButton = param1;
                  if(!_loc3_)
                  {
                     addr0058:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buildNowButton",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0058);
      }
      
      [Bindable(event="propertyChange")]
      public function get center() : DetailsCenterComponent
      {
         return this._1364013995center;
      }
      
      public function set center(param1:DetailsCenterComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1364013995center;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._1364013995center = param1;
                  if(_loc4_)
                  {
                     §§goto(addr005b);
                  }
                  §§goto(addr0072);
               }
               addr005b:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr0072:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"center",_loc2_,param1));
                  }
               }
               §§goto(addr0080);
            }
            addr0080:
            return;
         }
         §§goto(addr0072);
      }
      
      [Bindable(event="propertyChange")]
      public function get costComponent() : BuildingCostComponent
      {
         return this._1253508016costComponent;
      }
      
      public function set costComponent(param1:BuildingCostComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1253508016costComponent;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1253508016costComponent = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0066);
            }
            addr0075:
            return;
         }
         §§goto(addr0066);
      }
      
      [Bindable(event="propertyChange")]
      public function get effectFeatureButton() : DynamicImageButton
      {
         return this._1768900535effectFeatureButton;
      }
      
      public function set effectFeatureButton(param1:DynamicImageButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1768900535effectFeatureButton;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  addr004c:
                  this._1768900535effectFeatureButton = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectFeatureButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0066);
            }
            addr0075:
            return;
         }
         §§goto(addr004c);
      }
      
      [Bindable(event="propertyChange")]
      public function get effectHeader() : PostitHeaderComponent
      {
         return this._713468034effectHeader;
      }
      
      public function set effectHeader(param1:PostitHeaderComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._713468034effectHeader;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._713468034effectHeader = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectHeader",_loc2_,param1));
                        }
                     }
                     §§goto(addr007e);
                  }
                  §§goto(addr006f);
               }
            }
         }
         addr007e:
      }
      
      [Bindable(event="propertyChange")]
      public function get effectsComponent() : StickyNoteComponent
      {
         return this._911984155effectsComponent;
      }
      
      public function set effectsComponent(param1:StickyNoteComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._911984155effectsComponent;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._911984155effectsComponent = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr0079:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectsComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0088);
                  }
                  §§goto(addr0079);
               }
            }
         }
         addr0088:
      }
      
      [Bindable(event="propertyChange")]
      public function get energyGroup() : HGroup
      {
         return this._1840699177energyGroup;
      }
      
      public function set energyGroup(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1840699177energyGroup;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._1840699177energyGroup = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"energyGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr0076);
            }
            addr0085:
            return;
         }
         §§goto(addr0076);
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
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._1464688417energyIcon = param1;
                  if(!_loc3_)
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"energyIcon",_loc2_,param1));
                        }
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr006d);
               }
            }
            addr007c:
            return;
         }
         §§goto(addr005d);
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
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._1836601012energyLabel = param1;
                  if(_loc3_)
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"energyLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0083);
               }
               §§goto(addr005d);
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
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._1684755691flavorText = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavorText",_loc2_,param1));
                        }
                     }
                     §§goto(addr0084);
                  }
               }
               §§goto(addr0075);
            }
            addr0084:
            return;
         }
         §§goto(addr0075);
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._899936824moodGroup = param1;
                  addr003d:
                  if(_loc4_)
                  {
                     §§goto(addr0054);
                  }
                  §§goto(addr006b);
               }
               addr0054:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr006b:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moodGroup",_loc2_,param1));
                  }
               }
               §§goto(addr007a);
            }
            addr007a:
            return;
         }
         §§goto(addr003d);
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
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._306079728moodIcon = param1;
                  if(_loc4_)
                  {
                     §§goto(addr0050);
                  }
                  §§goto(addr0068);
               }
               addr0050:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || _loc3_)
                  {
                     addr0068:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moodIcon",_loc2_,param1));
                  }
               }
               §§goto(addr0077);
            }
         }
         addr0077:
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
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._895838659moodLabel = param1;
                  if(_loc4_ || _loc3_)
                  {
                     addr0065:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moodLabel",_loc2_,param1));
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
         §§goto(addr0065);
      }
      
      [Bindable(event="propertyChange")]
      public function get restrictionFeatureButton() : DynamicImageButton
      {
         return this._188635812restrictionFeatureButton;
      }
      
      public function set restrictionFeatureButton(param1:DynamicImageButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._188635812restrictionFeatureButton;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._188635812restrictionFeatureButton = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionFeatureButton",_loc2_,param1));
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
         §§goto(addr006e);
      }
      
      [Bindable(event="propertyChange")]
      public function get restrictionGfx() : BriskImageDynaLib
      {
         return this._294445069restrictionGfx;
      }
      
      public function set restrictionGfx(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._294445069restrictionGfx;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._294445069restrictionGfx = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionGfx",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0083);
               }
               §§goto(addr0074);
            }
         }
         addr0083:
      }
      
      [Bindable(event="propertyChange")]
      public function get restrictionGroup() : StickyNoteComponent
      {
         return this._505777645restrictionGroup;
      }
      
      public function set restrictionGroup(param1:StickyNoteComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._505777645restrictionGroup;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._505777645restrictionGroup = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     §§goto(addr0069);
                  }
                  §§goto(addr0078);
               }
               addr0069:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr0078:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionGroup",_loc2_,param1));
                  }
               }
               §§goto(addr0087);
            }
            addr0087:
            return;
         }
         §§goto(addr0078);
      }
      
      [Bindable(event="propertyChange")]
      public function get restrictionHeader() : PostitHeaderComponent
      {
         return this._1516951929restrictionHeader;
      }
      
      public function set restrictionHeader(param1:PostitHeaderComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1516951929restrictionHeader;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1516951929restrictionHeader = param1;
                  addr0040:
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionHeader",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0070);
            }
            addr007f:
            return;
         }
         §§goto(addr0040);
      }
      
      [Bindable(event="propertyChange")]
      public function get restrictionName() : LocaLabel
      {
         return this._538066039restrictionName;
      }
      
      public function set restrictionName(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._538066039restrictionName;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._538066039restrictionName = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionName",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get securityFeatureButton() : DynamicImageButton
      {
         return this._224099944securityFeatureButton;
      }
      
      public function set securityFeatureButton(param1:DynamicImageButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._224099944securityFeatureButton;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._224099944securityFeatureButton = param1;
                  if(_loc4_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"securityFeatureButton",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0057);
      }
      
      [Bindable(event="propertyChange")]
      public function get securityHeader() : PostitHeaderComponent
      {
         return this._1027222035securityHeader;
      }
      
      public function set securityHeader(param1:PostitHeaderComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1027222035securityHeader;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._1027222035securityHeader = param1;
                  if(_loc4_)
                  {
                     addr0054:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"securityHeader",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007a);
               }
               §§goto(addr0054);
            }
         }
         addr007a:
      }
      
      [Bindable(event="propertyChange")]
      public function get securityList() : List
      {
         return this._807992318securityList;
      }
      
      public function set securityList(param1:List) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._807992318securityList;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._807992318securityList = param1;
                  addr0043:
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"securityList",_loc2_,param1));
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
         §§goto(addr0043);
      }
   }
}

