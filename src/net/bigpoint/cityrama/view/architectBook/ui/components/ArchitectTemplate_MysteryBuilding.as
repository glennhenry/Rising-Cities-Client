package net.bigpoint.cityrama.view.architectBook.ui.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.architecturalBook.ArchitecturalBookProxy;
   import net.bigpoint.cityrama.model.architecturalBook.vo.BlueprintVo;
   import net.bigpoint.cityrama.model.architecturalBook.vo.CenterItemDataVo;
   import net.bigpoint.cityrama.model.architecturalBook.vo.VerifiedBlueprintVo;
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
   import spark.components.VGroup;
   
   public class ArchitectTemplate_MysteryBuilding extends Group
   {
      
      public static const NAME:String = "ArchitectTemplate_MysteryBuilding";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || ArchitectTemplate_MysteryBuilding)
      {
         NAME = "ArchitectTemplate_MysteryBuilding";
      }
      
      private var _597326554buildNowButton:MultistateButton;
      
      private var _1364013995center:DetailsCenterComponent;
      
      private var _1253508016costComponent:BuildingCostComponent;
      
      private var _792695813exclusiveGfx:BriskImageDynaLib;
      
      private var _1443651893exclusiveHeader:PostitHeaderComponent;
      
      private var _1684755691flavorText:LocaLabel;
      
      private var _188635812restrictionFeatureButton:DynamicImageButton;
      
      private var _294445069restrictionGfx:BriskImageDynaLib;
      
      private var _505777645restrictionGroup:StickyNoteComponent;
      
      private var _1516951929restrictionHeader:PostitHeaderComponent;
      
      private var _538066039restrictionName:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:BlueprintVo;
      
      private var _veryData:VerifiedBlueprintVo;
      
      public function ArchitectTemplate_MysteryBuilding()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super();
            if(!_loc1_)
            {
               mx_internal::_document = this;
               if(!_loc1_)
               {
                  addr0042:
                  this.percentWidth = 100;
                  if(_loc2_)
                  {
                     addr004c:
                     this.percentHeight = 100;
                     if(_loc2_ || _loc1_)
                     {
                        this.mxmlContent = [this._ArchitectTemplate_MysteryBuilding_HGroup1_c(),this._ArchitectTemplate_MysteryBuilding_Group2_c(),this._ArchitectTemplate_MysteryBuilding_VGroup2_c(),this._ArchitectTemplate_MysteryBuilding_VGroup3_c()];
                        if(!_loc1_)
                        {
                           addr008a:
                           this.addEventListener("creationComplete",this.___ArchitectTemplate_MysteryBuilding_Group1_creationComplete);
                        }
                        return;
                     }
                  }
                  §§goto(addr008a);
               }
               §§goto(addr004c);
            }
         }
         §§goto(addr0042);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc3_ || _loc2_)
            {
               addr0035:
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc2_)
                  {
                     return;
                  }
               }
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         §§goto(addr0035);
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.initialize();
         }
      }
      
      protected function handleCreationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            this.restrictionHeader.text = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.buildableLand");
            if(!(_loc4_ && Boolean(this)))
            {
               this.exclusiveHeader.text = LocaUtils.getString("rcl.booklayer.mystery","rcl.booklayer.mystery.rewardtitle");
               if(!_loc4_)
               {
                  addr005f:
                  §§push(this.buildNowButton);
                  if(_loc3_)
                  {
                     §§pop().label = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.buildNow");
                     if(_loc3_)
                     {
                        addr007f:
                        this.buildNowButton.addEventListener(MouseEvent.CLICK,this.handleBuildClick);
                        if(_loc3_)
                        {
                           var _temp_2:* = this.restrictionFeatureButton;
                           var _loc2_:Boolean;
                           this.restrictionFeatureButton.includeInLayout = _loc2_ = false;
                           _temp_2.visible = _loc2_;
                           addr0091:
                           if(_loc3_ || _loc2_)
                           {
                              §§goto(addr00bf);
                           }
                        }
                        §§goto(addr00cb);
                     }
                     §§goto(addr00bf);
                  }
                  §§goto(addr007f);
               }
               addr00bf:
               this.setupCenter();
               if(!_loc4_)
               {
                  addr00cb:
                  this.updateAll();
               }
               return;
            }
            §§goto(addr005f);
         }
         §§goto(addr0091);
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
         if(_loc2_ || _loc1_)
         {
            dispatchEvent(new Event("effectFeatureClick"));
         }
      }
      
      private function handleBuildClick(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            dispatchEvent(new Event("buildNow"));
         }
      }
      
      private function handleRestrictionFeatureClick() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            dispatchEvent(new Event("restrictionFeatureClick"));
         }
      }
      
      public function setData(param1:VerifiedBlueprintVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this._data = param1.bluePrintVO;
            if(_loc2_ || _loc2_)
            {
               this._veryData = param1;
               if(_loc2_ || _loc3_)
               {
                  addr0052:
                  invalidateProperties();
               }
            }
            return;
         }
         §§goto(addr0052);
      }
      
      private function updateAll() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this.flavorText);
            §§push(LocaUtils);
            §§push("rcl.playfielditems.shortdescription");
            §§push("rcl.playfielditems.shortdescription.");
            if(!_loc1_)
            {
               §§push(§§pop() + this._data.configObj.localeId);
            }
            §§pop().text = §§pop().getString(§§pop(),§§pop());
            if(!_loc1_)
            {
               §§push(this._veryData.buildableLandVO.visualName);
               if(_loc2_ || _loc1_)
               {
                  if(§§pop() != "")
                  {
                     if(_loc2_)
                     {
                        §§push(this.restrictionGfx);
                        if(_loc2_ || Boolean(this))
                        {
                           §§push(this._veryData);
                           if(_loc2_ || Boolean(this))
                           {
                              §§push(§§pop().buildableLandVO);
                              if(!(_loc1_ && Boolean(this)))
                              {
                                 §§push(§§pop().visualLibName);
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    §§pop().dynaLibName = §§pop();
                                    if(!_loc1_)
                                    {
                                       §§push(this.restrictionGfx);
                                       if(_loc2_)
                                       {
                                          §§push(this._veryData);
                                          if(_loc2_ || _loc2_)
                                          {
                                             addr00c1:
                                             §§push(§§pop().buildableLandVO);
                                             if(!(_loc1_ && _loc2_))
                                             {
                                                §§push(§§pop().visualName);
                                                if(_loc2_ || Boolean(this))
                                                {
                                                   §§pop().dynaBmpSourceName = §§pop();
                                                   if(!_loc1_)
                                                   {
                                                      addr00f5:
                                                      this.restrictionGfx.toolTip = this._veryData.buildableLandVO.toolTip;
                                                      addr00f3:
                                                      addr00f0:
                                                      addr00ec:
                                                      if(!(_loc1_ && _loc2_))
                                                      {
                                                         this.restrictionName.text = this._veryData.buildableLandVO.descriptionText;
                                                         if(_loc2_ || Boolean(this))
                                                         {
                                                            addr0121:
                                                            §§push(this.restrictionGroup);
                                                            if(!_loc1_)
                                                            {
                                                               §§push(true);
                                                               if(_loc2_)
                                                               {
                                                                  §§pop().visible = §§pop();
                                                                  if(_loc2_)
                                                                  {
                                                                     addr0159:
                                                                     §§push(this._data);
                                                                     if(_loc2_ || _loc1_)
                                                                     {
                                                                        §§push(§§pop().state);
                                                                        if(_loc2_ || Boolean(this))
                                                                        {
                                                                           addr017a:
                                                                           §§push(BlueprintVo.STATE_FULLY_CONSTRUCTED_AVAILABLE);
                                                                           if(!_loc1_)
                                                                           {
                                                                              §§push(§§pop() == §§pop());
                                                                              if(!_loc1_)
                                                                              {
                                                                                 var _temp_14:* = §§pop();
                                                                                 §§push(_temp_14);
                                                                                 if(!_temp_14)
                                                                                 {
                                                                                    if(_loc2_ || _loc2_)
                                                                                    {
                                                                                       §§pop();
                                                                                       if(_loc2_ || Boolean(this))
                                                                                       {
                                                                                          addr01b9:
                                                                                          addr01b8:
                                                                                          addr01b2:
                                                                                          addr01af:
                                                                                          addr01ab:
                                                                                          if(this._data.state == BlueprintVo.STATE_BUY_MORE_WITH_RC)
                                                                                          {
                                                                                             if(!(_loc1_ && Boolean(this)))
                                                                                             {
                                                                                                addr01ca:
                                                                                                §§push(this.costComponent);
                                                                                                if(!_loc1_)
                                                                                                {
                                                                                                   §§push("noCosts");
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                      §§pop().currentState = §§pop();
                                                                                                      if(!(_loc1_ && _loc2_))
                                                                                                      {
                                                                                                         addr01eb:
                                                                                                         §§push(this.costComponent);
                                                                                                         if(_loc2_ || _loc2_)
                                                                                                         {
                                                                                                            §§pop().invalidateProperties();
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               addr0220:
                                                                                                               this.costComponent.setData(this._veryData.costVOList);
                                                                                                               addr021c:
                                                                                                               if(_loc2_ || Boolean(this))
                                                                                                               {
                                                                                                                  addr0238:
                                                                                                                  §§push(this.exclusiveGfx);
                                                                                                                  if(!(_loc1_ && _loc1_))
                                                                                                                  {
                                                                                                                     §§pop().dynaLibName = ArchitecturalBookProxy.getItemIconLibByConfigPlayfieldItemDTO((this._data as BlueprintVo).configObj);
                                                                                                                     if(!(_loc1_ && Boolean(this)))
                                                                                                                     {
                                                                                                                        addr0278:
                                                                                                                        addr0274:
                                                                                                                        §§push(this.exclusiveGfx);
                                                                                                                        §§push("MysteryReward_");
                                                                                                                        if(!_loc1_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + (this._data as BlueprintVo).configObj.gfxId);
                                                                                                                        }
                                                                                                                        §§pop().dynaBmpSourceName = §§pop();
                                                                                                                        if(_loc2_ || _loc2_)
                                                                                                                        {
                                                                                                                           addr029f:
                                                                                                                           this.setTooltips();
                                                                                                                        }
                                                                                                                     }
                                                                                                                     return;
                                                                                                                  }
                                                                                                                  §§goto(addr0278);
                                                                                                               }
                                                                                                               §§goto(addr029f);
                                                                                                            }
                                                                                                            §§goto(addr0238);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr0214:
                                                                                                            §§pop().currentState = "hasCosts";
                                                                                                            addr0211:
                                                                                                            if(!_loc1_)
                                                                                                            {
                                                                                                               §§goto(addr021c);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr0274);
                                                                                                      }
                                                                                                      §§goto(addr021c);
                                                                                                   }
                                                                                                   §§goto(addr0214);
                                                                                                }
                                                                                                §§goto(addr0211);
                                                                                             }
                                                                                             §§goto(addr01eb);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(this.costComponent);
                                                                                             if(!_loc1_)
                                                                                             {
                                                                                                §§goto(addr0211);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr0220);
                                                                                       }
                                                                                       §§goto(addr01ca);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr01b9);
                                                                           }
                                                                           §§goto(addr01b8);
                                                                        }
                                                                        §§goto(addr01b2);
                                                                     }
                                                                     §§goto(addr01af);
                                                                  }
                                                                  §§goto(addr01ab);
                                                               }
                                                               else
                                                               {
                                                                  addr014a:
                                                                  §§pop().visible = §§pop();
                                                                  if(!(_loc1_ && Boolean(this)))
                                                                  {
                                                                     §§goto(addr0159);
                                                                  }
                                                               }
                                                               §§goto(addr029f);
                                                            }
                                                            else
                                                            {
                                                               addr0149:
                                                               §§push(false);
                                                            }
                                                            §§goto(addr014a);
                                                         }
                                                         §§goto(addr0238);
                                                      }
                                                      §§goto(addr0159);
                                                   }
                                                   §§goto(addr01eb);
                                                }
                                                §§goto(addr00f5);
                                             }
                                             §§goto(addr00f3);
                                          }
                                          §§goto(addr00f0);
                                       }
                                       §§goto(addr00ec);
                                    }
                                    §§goto(addr01ab);
                                 }
                                 §§goto(addr00f5);
                              }
                              §§goto(addr00f3);
                           }
                           §§goto(addr00c1);
                        }
                        §§goto(addr00ec);
                     }
                     §§goto(addr01ca);
                  }
                  else
                  {
                     §§push(this.restrictionGroup);
                  }
                  §§goto(addr0149);
               }
               §§goto(addr017a);
            }
            §§goto(addr0159);
         }
         §§goto(addr0121);
      }
      
      public function setSubData(param1:VerifiedBlueprintVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._veryData = param1;
            if(_loc2_)
            {
               addr002b:
               invalidateProperties();
            }
            return;
         }
         §§goto(addr002b);
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
         if(!_loc3_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.arrowRight"));
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(this.center);
            if(!_loc3_)
            {
               §§push("tooltipLeftScroll");
               if(_loc4_)
               {
                  §§push(_loc1_);
                  if(!(_loc3_ && _loc2_))
                  {
                     §§pop().setStyle(§§pop(),§§pop());
                     if(!_loc3_)
                     {
                        §§goto(addr0070);
                     }
                     §§goto(addr008e);
                  }
                  addr0070:
                  this.center.setStyle("tooltipRightScroll",_loc2_);
                  §§goto(addr006f);
               }
               addr006f:
               §§goto(addr006c);
            }
            addr006c:
            if(_loc4_ || _loc2_)
            {
               addr008e:
               this.buildNowButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.placeButton");
               if(_loc4_ || _loc2_)
               {
                  this.restrictionFeatureButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.feature.restrictions");
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(this._data);
                     if(!(_loc3_ && Boolean(this)))
                     {
                        §§push(§§pop().permissionBuyable);
                        if(_loc4_ || _loc1_)
                        {
                           §§push(§§pop());
                           if(_loc4_)
                           {
                              var _temp_8:* = §§pop();
                              §§push(_temp_8);
                              if(_temp_8)
                              {
                                 if(!_loc3_)
                                 {
                                    §§goto(addr010a);
                                 }
                              }
                              §§goto(addr0126);
                           }
                           addr010a:
                           §§pop();
                           if(_loc4_ || Boolean(this))
                           {
                              addr0126:
                              addr011d:
                              addr0119:
                              §§push(this._data.locked);
                              if(!_loc3_)
                              {
                                 §§push(!§§pop());
                              }
                              if(!§§pop())
                              {
                              }
                           }
                           §§goto(addr012a);
                        }
                        §§goto(addr0126);
                     }
                     §§goto(addr011d);
                  }
                  §§goto(addr012a);
               }
               §§goto(addr0119);
            }
            §§goto(addr012a);
         }
         addr012a:
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super.commitProperties();
            if(!(_loc1_ && _loc1_))
            {
               this.setupCenter();
               if(!(_loc1_ && _loc1_))
               {
                  this.setTooltips();
                  if(!(_loc1_ && _loc1_))
                  {
                     addr006a:
                     this.updateAll();
                  }
               }
               §§goto(addr0070);
            }
            §§goto(addr006a);
         }
         addr0070:
      }
      
      private function setupCenter() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!(_loc4_ && Boolean(this)))
         {
            §§push(this._data);
            if(_loc5_)
            {
               §§push(§§pop().state);
               if(!_loc4_)
               {
                  §§push(BlueprintVo.STATE_FULLY_CONSTRUCTED_AVAILABLE);
                  if(_loc5_ || Boolean(this))
                  {
                     if(§§pop() == §§pop())
                     {
                        if(!_loc4_)
                        {
                           §§push(this.buildNowButton);
                           if(!_loc4_)
                           {
                              §§push(true);
                              if(_loc5_ || _loc1_)
                              {
                                 §§pop().enabled = §§pop();
                                 if(!_loc4_)
                                 {
                                    §§push(this.buildNowButton);
                                    if(!_loc4_)
                                    {
                                       §§push(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.button.place.capital"));
                                       if(!_loc4_)
                                       {
                                          §§pop().label = §§pop();
                                          if(!_loc4_)
                                          {
                                             §§push(this.buildNowButton);
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                §§push(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.button.place.tooltip"));
                                                if(_loc5_)
                                                {
                                                   §§pop().toolTip = §§pop();
                                                   if(_loc5_)
                                                   {
                                                      §§push(this.buildNowButton);
                                                      if(_loc5_ || _loc1_)
                                                      {
                                                         §§push("button_icon_build");
                                                         if(!(_loc4_ && _loc1_))
                                                         {
                                                            §§pop().imageNameLeft = §§pop();
                                                            if(_loc5_)
                                                            {
                                                               §§push(this.buildNowButton);
                                                               if(_loc5_ || _loc2_)
                                                               {
                                                                  §§push("gui_popups_paperPopup");
                                                                  if(_loc5_ || _loc3_)
                                                                  {
                                                                     §§pop().libNameLeft = §§pop();
                                                                     if(_loc5_)
                                                                     {
                                                                        §§push(this.buildNowButton);
                                                                        if(_loc5_ || Boolean(this))
                                                                        {
                                                                           §§push(this.buildNowButton);
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§push("");
                                                                              if(_loc5_ || _loc3_)
                                                                              {
                                                                                 var _temp_12:* = §§pop();
                                                                                 §§push(_temp_12);
                                                                                 §§push(_temp_12);
                                                                                 if(!(_loc4_ && _loc1_))
                                                                                 {
                                                                                    var _loc3_:* = §§pop();
                                                                                    if(!(_loc4_ && _loc2_))
                                                                                    {
                                                                                       §§pop().libNameRight = §§pop();
                                                                                       if(!(_loc4_ && Boolean(this)))
                                                                                       {
                                                                                          §§push(_loc3_);
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             if(_loc5_ || _loc3_)
                                                                                             {
                                                                                                §§pop().imageNameRight = §§pop();
                                                                                                if(!(_loc5_ || _loc1_))
                                                                                                {
                                                                                                   addr02cf:
                                                                                                   §§push(this.buildNowButton);
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      addr02d9:
                                                                                                      §§push(true);
                                                                                                      if(_loc5_ || _loc2_)
                                                                                                      {
                                                                                                         §§pop().showSparkle = §§pop();
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            §§goto(addr02f1);
                                                                                                         }
                                                                                                         §§goto(addr03b2);
                                                                                                      }
                                                                                                      §§goto(addr04be);
                                                                                                   }
                                                                                                   §§goto(addr0389);
                                                                                                }
                                                                                                §§goto(addr03b2);
                                                                                             }
                                                                                             §§goto(addr04a8);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr0254:
                                                                                             if(!(_loc4_ && _loc2_))
                                                                                             {
                                                                                                §§pop().imageNameLeft = §§pop();
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   §§push(this._data);
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      §§push(§§pop().state);
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         addr028d:
                                                                                                         §§push(BlueprintVo.STATE_BUY_MORE_WITH_RC);
                                                                                                         if(!(_loc4_ && Boolean(this)))
                                                                                                         {
                                                                                                            if(§§pop() == §§pop())
                                                                                                            {
                                                                                                               if(!(_loc4_ && _loc3_))
                                                                                                               {
                                                                                                                  addr02b3:
                                                                                                                  §§push(this.buildNowButton);
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     §§push("dd_button_icon");
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        §§goto(addr02c6);
                                                                                                                     }
                                                                                                                     §§goto(addr034c);
                                                                                                                  }
                                                                                                                  §§goto(addr047f);
                                                                                                               }
                                                                                                               §§goto(addr0377);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr0335:
                                                                                                               addr032f:
                                                                                                               addr032c:
                                                                                                               if(this._data.state == BlueprintVo.STATE_PERMISSION_AVAILABLE)
                                                                                                               {
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     §§push(this.buildNowButton);
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        §§goto(addr0349);
                                                                                                                     }
                                                                                                                     §§goto(addr047f);
                                                                                                                  }
                                                                                                                  §§goto(addr0377);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr03b2);
                                                                                                         }
                                                                                                         §§goto(addr0335);
                                                                                                      }
                                                                                                      §§goto(addr032f);
                                                                                                   }
                                                                                                   §§goto(addr032c);
                                                                                                }
                                                                                                §§goto(addr02b3);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr03a2);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr0253:
                                                                                          §§push(_loc3_);
                                                                                       }
                                                                                       §§goto(addr0254);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr0250:
                                                                                       §§pop().libNameLeft = §§pop();
                                                                                    }
                                                                                    §§goto(addr0253);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr024f:
                                                                                    _loc3_ = §§pop();
                                                                                 }
                                                                                 §§goto(addr0250);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr024e:
                                                                                 var _temp_41:* = §§pop();
                                                                                 §§push(_temp_41);
                                                                                 §§push(_temp_41);
                                                                              }
                                                                              §§goto(addr024f);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr024c:
                                                                              §§push("");
                                                                           }
                                                                           §§goto(addr024e);
                                                                        }
                                                                        §§goto(addr043d);
                                                                     }
                                                                     §§goto(addr03b2);
                                                                  }
                                                                  addr02c6:
                                                                  §§pop().imageNameRight = §§pop();
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§goto(addr02cf);
                                                                  }
                                                                  §§goto(addr02f1);
                                                               }
                                                               §§goto(addr02d9);
                                                            }
                                                            §§goto(addr02cf);
                                                         }
                                                         §§goto(addr034c);
                                                      }
                                                      §§goto(addr043d);
                                                   }
                                                   §§goto(addr02b3);
                                                }
                                                §§goto(addr031c);
                                             }
                                             §§goto(addr02d9);
                                          }
                                          else
                                          {
                                             addr01c6:
                                             §§push(this.buildNowButton);
                                             if(_loc5_ || Boolean(_loc1_))
                                             {
                                                §§push(LocaUtils.getThousendSeperatedNumber(this._data.price));
                                                if(!(_loc4_ && Boolean(this)))
                                                {
                                                   §§pop().label = §§pop();
                                                   if(_loc5_ || Boolean(this))
                                                   {
                                                      §§push(this.buildNowButton);
                                                      if(_loc5_)
                                                      {
                                                         §§push("gui_resources_icons");
                                                         if(_loc5_ || Boolean(this))
                                                         {
                                                            §§pop().libNameRight = §§pop();
                                                            if(!(_loc4_ && _loc2_))
                                                            {
                                                               addr0230:
                                                               §§push(this.buildNowButton);
                                                               if(!_loc4_)
                                                               {
                                                                  §§push(this.buildNowButton);
                                                                  if(_loc5_ || _loc2_)
                                                                  {
                                                                     §§goto(addr024c);
                                                                  }
                                                                  §§goto(addr03ce);
                                                               }
                                                               §§goto(addr04a1);
                                                            }
                                                            §§goto(addr03b2);
                                                         }
                                                         §§goto(addr034c);
                                                      }
                                                      §§goto(addr043d);
                                                   }
                                                   §§goto(addr02f1);
                                                }
                                                §§goto(addr03a2);
                                             }
                                          }
                                          §§goto(addr03c4);
                                       }
                                       §§goto(addr04a8);
                                    }
                                    §§goto(addr0303);
                                 }
                                 §§goto(addr0230);
                              }
                              §§goto(addr03f1);
                           }
                           §§goto(addr03f8);
                        }
                        addr02f1:
                        §§push(this.buildNowButton);
                        if(_loc5_ || _loc3_)
                        {
                           addr0303:
                           §§push(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.button.buyPermission.tooltip"));
                           if(!(_loc4_ && _loc3_))
                           {
                              addr031c:
                              §§pop().toolTip = §§pop();
                              if(_loc5_)
                              {
                                 addr03b2:
                                 §§push(this.buildNowButton);
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    addr03c4:
                                    §§push(this.buildNowButton);
                                    if(_loc5_)
                                    {
                                       addr03ce:
                                       §§push(Boolean(§§pop().enabled));
                                       if(_loc5_ || _loc3_)
                                       {
                                          addr03e0:
                                          var _temp_23:* = §§pop();
                                          §§push(_temp_23);
                                          §§push(_temp_23);
                                          if(!_loc4_)
                                          {
                                             if(§§pop())
                                             {
                                                if(!_loc4_)
                                                {
                                                   addr03f1:
                                                   §§pop();
                                                   if(!_loc4_)
                                                   {
                                                      addr03f8:
                                                      §§push(this._data);
                                                      if(_loc5_ || Boolean(this))
                                                      {
                                                         §§push(§§pop().locked);
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            §§push(!§§pop());
                                                            if(!_loc4_)
                                                            {
                                                               §§goto(addr0422);
                                                            }
                                                            §§goto(addr0478);
                                                         }
                                                         §§goto(addr048d);
                                                      }
                                                      §§goto(addr04a5);
                                                   }
                                                   §§goto(addr04a1);
                                                }
                                                §§goto(addr04a0);
                                             }
                                             §§goto(addr0422);
                                          }
                                          §§goto(addr0466);
                                       }
                                       addr0422:
                                       §§pop().enabled = §§pop();
                                       if(!_loc4_)
                                       {
                                          addr042b:
                                          §§push(this.buildNowButton);
                                          if(!(_loc4_ && Boolean(this)))
                                          {
                                             addr043d:
                                             §§push(this._data);
                                             if(!_loc4_)
                                             {
                                                §§push(§§pop().userCanAfford);
                                                if(!_loc4_)
                                                {
                                                   §§push(!§§pop());
                                                   if(_loc5_ || _loc1_)
                                                   {
                                                      addr045f:
                                                      var _temp_28:* = §§pop();
                                                      §§push(_temp_28);
                                                      §§push(_temp_28);
                                                      if(!_loc4_)
                                                      {
                                                         addr0466:
                                                         if(§§pop())
                                                         {
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               addr0478:
                                                               §§pop();
                                                               if(_loc5_)
                                                               {
                                                                  §§goto(addr04be);
                                                               }
                                                               §§goto(addr04a1);
                                                            }
                                                            §§goto(addr04be);
                                                         }
                                                         §§goto(addr048d);
                                                      }
                                                      §§goto(addr048e);
                                                   }
                                                   §§goto(addr048d);
                                                }
                                                addr04be:
                                                addr0483:
                                                addr047f:
                                                §§push(Boolean(this.buildNowButton.enabled));
                                                if(_loc5_)
                                                {
                                                   addr048d:
                                                   var _temp_30:* = §§pop();
                                                   addr048e:
                                                   §§push(_temp_30);
                                                   if(_temp_30)
                                                   {
                                                      if(!(_loc4_ && Boolean(this)))
                                                      {
                                                         addr04a0:
                                                         §§pop();
                                                         addr04a1:
                                                         addr04a5:
                                                         addr04a8:
                                                         §§push(this._data.state == BlueprintVo.STATE_FULLY_CONSTRUCTED_AVAILABLE);
                                                         if(_loc5_ || Boolean(this))
                                                         {
                                                            §§push(!§§pop());
                                                         }
                                                      }
                                                   }
                                                }
                                                §§pop().showPlus = §§pop();
                                                §§goto(addr04c1);
                                             }
                                             §§goto(addr04a5);
                                          }
                                          §§goto(addr04a1);
                                       }
                                       §§goto(addr04c1);
                                    }
                                    §§goto(addr0483);
                                 }
                                 §§goto(addr043d);
                              }
                              §§goto(addr04c1);
                           }
                           else
                           {
                              addr03a2:
                              §§pop().toolTip = §§pop();
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§goto(addr03b2);
                              }
                           }
                           §§goto(addr042b);
                        }
                        else
                        {
                           addr034c:
                           §§pop().imageNameRight = "layer_cc_icon";
                           addr0349:
                           if(_loc5_)
                           {
                              addr0355:
                              §§push(this.buildNowButton);
                              if(_loc5_)
                              {
                                 §§push(false);
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    §§pop().showSparkle = §§pop();
                                    if(!_loc4_)
                                    {
                                       addr0377:
                                       §§push(this.buildNowButton);
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          addr0389:
                                          §§push(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.button.buy.tooltip"));
                                          if(_loc5_ || _loc2_)
                                          {
                                             §§goto(addr03a2);
                                          }
                                          §§goto(addr04a8);
                                       }
                                       §§goto(addr03c4);
                                    }
                                    §§goto(addr042b);
                                 }
                                 §§goto(addr03e0);
                              }
                              §§goto(addr03c4);
                           }
                        }
                        addr04c1:
                        var _loc1_:CenterItemDataVo = new CenterItemDataVo();
                        var _loc2_:Boolean = false;
                        if(_loc5_)
                        {
                           §§push(this._data.permissionBuyable);
                           if(!_loc4_)
                           {
                              if(§§pop())
                              {
                                 if(_loc5_)
                                 {
                                    §§goto(addr04f7);
                                 }
                                 §§goto(addr0514);
                              }
                              §§goto(addr0506);
                           }
                           addr04f7:
                           _loc2_ = true;
                           if(!(_loc4_ && _loc3_))
                           {
                              addr0506:
                              _loc1_.blueprintVO = this._data;
                              if(_loc5_)
                              {
                                 addr0514:
                                 this.center.data = _loc1_;
                              }
                           }
                           §§goto(addr051b);
                        }
                        addr051b:
                        return;
                     }
                     §§push(this.buildNowButton);
                     if(!_loc4_)
                     {
                        §§push(true);
                        if(!(_loc4_ && _loc3_))
                        {
                           §§pop().enabled = §§pop();
                           if(!_loc4_)
                           {
                              §§goto(addr01c6);
                           }
                           §§goto(addr03b2);
                        }
                        §§goto(addr045f);
                     }
                     §§goto(addr047f);
                  }
                  §§goto(addr0335);
               }
               §§goto(addr028d);
            }
            §§goto(addr032c);
         }
         §§goto(addr0355);
      }
      
      private function _ArchitectTemplate_MysteryBuilding_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.height = 25;
               if(_loc3_ || Boolean(this))
               {
                  addr0049:
                  _loc1_.verticalAlign = "middle";
                  if(_loc3_)
                  {
                     _loc1_.horizontalAlign = "center";
                     if(!_loc2_)
                     {
                        addr005e:
                        _loc1_.top = -9;
                        if(_loc3_ || _loc2_)
                        {
                           §§goto(addr007d);
                        }
                     }
                     §§goto(addr00a1);
                  }
                  §§goto(addr005e);
               }
               addr007d:
               _loc1_.mxmlContent = [this._ArchitectTemplate_MysteryBuilding_LocaLabel1_i()];
               if(_loc3_ || Boolean(_loc1_))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr00a1:
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr00a5);
            }
            addr00a5:
            return _loc1_;
         }
         §§goto(addr0049);
      }
      
      private function _ArchitectTemplate_MysteryBuilding_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.maxWidth = 690;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.maxDisplayedLines = 2;
               if(!_loc2_)
               {
                  _loc1_.styleName = "flavorText";
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.id = "flavorText";
                     if(_loc3_)
                     {
                        §§goto(addr007e);
                     }
                     §§goto(addr008a);
                  }
                  addr007e:
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr008a:
                        _loc1_.document = this;
                        if(_loc3_)
                        {
                           §§goto(addr0093);
                        }
                        §§goto(addr009d);
                     }
                  }
                  addr0093:
                  this.flavorText = _loc1_;
                  if(!_loc2_)
                  {
                     addr009d:
                     BindingManager.executeBindings(this,"flavorText",this.flavorText);
                  }
                  return _loc1_;
               }
               §§goto(addr008a);
            }
         }
         §§goto(addr009d);
      }
      
      private function _ArchitectTemplate_MysteryBuilding_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc3_)
         {
            _loc1_.width = 240;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.height = 300;
               if(!_loc2_)
               {
                  addr0051:
                  _loc1_.left = 4;
                  if(_loc3_)
                  {
                     _loc1_.bottom = 10;
                     if(!_loc2_)
                     {
                        _loc1_.mxmlContent = [this._ArchitectTemplate_MysteryBuilding_BuildingCostComponent1_i(),this._ArchitectTemplate_MysteryBuilding_StickyNoteComponent1_i()];
                        if(!_loc2_)
                        {
                           §§goto(addr0087);
                        }
                        §§goto(addr009b);
                     }
                  }
                  addr0087:
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        addr009b:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr009f);
               }
               addr009f:
               return _loc1_;
            }
            §§goto(addr0051);
         }
         §§goto(addr009b);
      }
      
      private function _ArchitectTemplate_MysteryBuilding_BuildingCostComponent1_i() : BuildingCostComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BuildingCostComponent = new BuildingCostComponent();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.top = 0;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.height = 115;
                  if(_loc2_)
                  {
                     _loc1_.id = "costComponent";
                     if(!_loc3_)
                     {
                        addr006e:
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr0087:
                              _loc1_.document = this;
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr0098:
                                 this.costComponent = _loc1_;
                                 if(_loc2_)
                                 {
                                    addr00a2:
                                    BindingManager.executeBindings(this,"costComponent",this.costComponent);
                                 }
                              }
                           }
                           return _loc1_;
                        }
                        §§goto(addr0098);
                     }
                     §§goto(addr00a2);
                  }
                  §§goto(addr0087);
               }
               §§goto(addr006e);
            }
            §§goto(addr0098);
         }
         §§goto(addr0087);
      }
      
      private function _ArchitectTemplate_MysteryBuilding_StickyNoteComponent1_i() : StickyNoteComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.bottom = 28;
               if(_loc3_)
               {
                  _loc1_.height = 126;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.tapeLeft = true;
                     if(!_loc2_)
                     {
                        addr005a:
                        _loc1_.tapeRight = true;
                        if(!(_loc2_ && _loc2_))
                        {
                           _loc1_.visible = false;
                           if(!_loc2_)
                           {
                              §§goto(addr0080);
                           }
                           §§goto(addr00d1);
                        }
                     }
                     §§goto(addr009d);
                  }
                  §§goto(addr00d1);
               }
               addr0080:
               _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ArchitectTemplate_MysteryBuilding_Array4_c);
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr009d:
                  _loc1_.id = "restrictionGroup";
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           addr00d1:
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              addr00da:
                              this.restrictionGroup = _loc1_;
                              if(_loc3_)
                              {
                                 BindingManager.executeBindings(this,"restrictionGroup",this.restrictionGroup);
                              }
                           }
                           §§goto(addr00f1);
                        }
                     }
                  }
                  §§goto(addr00da);
               }
               addr00f1:
               return _loc1_;
            }
            §§goto(addr005a);
         }
         §§goto(addr009d);
      }
      
      private function _ArchitectTemplate_MysteryBuilding_Array4_c() : Array
      {
         return [this._ArchitectTemplate_MysteryBuilding_DynamicImageButton1_i(),this._ArchitectTemplate_MysteryBuilding_VGroup1_c()];
      }
      
      private function _ArchitectTemplate_MysteryBuilding_DynamicImageButton1_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!_loc2_)
         {
            _loc1_.styleName = "featureInfoButton";
            if(_loc3_ || _loc3_)
            {
               _loc1_.right = 8;
               if(_loc3_)
               {
                  _loc1_.top = -10;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.addEventListener("click",this.__restrictionFeatureButton_click);
                     if(!_loc2_)
                     {
                        _loc1_.id = "restrictionFeatureButton";
                        if(_loc3_)
                        {
                           addr0075:
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || Boolean(_loc1_))
                              {
                                 _loc1_.document = this;
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr00a5:
                                    this.restrictionFeatureButton = _loc1_;
                                    if(!_loc2_)
                                    {
                                       addr00af:
                                       BindingManager.executeBindings(this,"restrictionFeatureButton",this.restrictionFeatureButton);
                                    }
                                 }
                                 return _loc1_;
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr00a5);
            }
            §§goto(addr00af);
         }
         §§goto(addr0075);
      }
      
      public function __restrictionFeatureButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.handleRestrictionFeatureClick();
         }
      }
      
      private function _ArchitectTemplate_MysteryBuilding_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.horizontalCenter = 0;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.top = 9;
               if(_loc2_)
               {
                  addr0057:
                  _loc1_.mxmlContent = [this._ArchitectTemplate_MysteryBuilding_PostitHeaderComponent1_i(),this._ArchitectTemplate_MysteryBuilding_HGroup2_c()];
                  if(!(_loc3_ && _loc2_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr0081:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr0081);
               }
               addr0085:
               return _loc1_;
            }
            §§goto(addr0057);
         }
         §§goto(addr0081);
      }
      
      private function _ArchitectTemplate_MysteryBuilding_PostitHeaderComponent1_i() : PostitHeaderComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:PostitHeaderComponent = new PostitHeaderComponent();
         if(_loc2_)
         {
            _loc1_.id = "restrictionHeader";
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     _loc1_.document = this;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        §§goto(addr005e);
                     }
                  }
                  §§goto(addr0070);
               }
               addr005e:
               this.restrictionHeader = _loc1_;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr0070:
                  BindingManager.executeBindings(this,"restrictionHeader",this.restrictionHeader);
               }
               return _loc1_;
            }
         }
         §§goto(addr0070);
      }
      
      private function _ArchitectTemplate_MysteryBuilding_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc2_)
         {
            _loc1_.horizontalAlign = "left";
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.verticalAlign = "middle";
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.mxmlContent = [this._ArchitectTemplate_MysteryBuilding_BriskImageDynaLib1_i(),this._ArchitectTemplate_MysteryBuilding_LocaLabel2_i()];
                  addr005b:
                  if(_loc3_ || _loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           addr0099:
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr005b);
         }
         §§goto(addr0099);
      }
      
      private function _ArchitectTemplate_MysteryBuilding_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "restriction_icon_farmland";
               if(!_loc3_)
               {
                  addr004b:
                  _loc1_.id = "restrictionGfx";
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              addr007e:
                              this.restrictionGfx = _loc1_;
                              if(!_loc3_)
                              {
                                 addr0088:
                                 BindingManager.executeBindings(this,"restrictionGfx",this.restrictionGfx);
                              }
                              §§goto(addr0095);
                           }
                           §§goto(addr0088);
                        }
                        addr0095:
                        return _loc1_;
                     }
                  }
                  §§goto(addr007e);
               }
               §§goto(addr0088);
            }
         }
         §§goto(addr004b);
      }
      
      private function _ArchitectTemplate_MysteryBuilding_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.styleName = "miniLayerFlavourText";
            if(!_loc2_)
            {
               _loc1_.id = "restrictionName";
               if(_loc3_ || Boolean(this))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(this))
                     {
                        _loc1_.document = this;
                        if(_loc3_)
                        {
                           §§goto(addr0073);
                        }
                     }
                     §§goto(addr0085);
                  }
               }
               addr0073:
               this.restrictionName = _loc1_;
               if(!(_loc2_ && Boolean(this)))
               {
                  addr0085:
                  BindingManager.executeBindings(this,"restrictionName",this.restrictionName);
               }
               §§goto(addr0092);
            }
            addr0092:
            return _loc1_;
         }
         §§goto(addr0085);
      }
      
      private function _ArchitectTemplate_MysteryBuilding_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!_loc2_)
         {
            _loc1_.left = 240;
            if(_loc3_)
            {
               _loc1_.right = 220;
               if(!_loc2_)
               {
                  _loc1_.height = 300;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr004b:
                     _loc1_.bottom = 15;
                     if(!_loc2_)
                     {
                        _loc1_.verticalAlign = "top";
                        if(!(_loc2_ && Boolean(this)))
                        {
                           _loc1_.horizontalAlign = "center";
                           if(_loc3_)
                           {
                              _loc1_.gap = 15;
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 §§goto(addr00a1);
                              }
                              §§goto(addr00b7);
                           }
                           addr00a1:
                           _loc1_.mxmlContent = [this._ArchitectTemplate_MysteryBuilding_DetailsCenterComponent1_i(),this._ArchitectTemplate_MysteryBuilding_MultistateButton1_i()];
                           if(!_loc2_)
                           {
                              addr00b7:
                              if(!_loc1_.document)
                              {
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    addr00cb:
                                    _loc1_.document = this;
                                 }
                              }
                           }
                           §§goto(addr00cf);
                        }
                        §§goto(addr00cb);
                     }
                  }
                  addr00cf:
                  return _loc1_;
               }
               §§goto(addr00cb);
            }
            §§goto(addr00a1);
         }
         §§goto(addr004b);
      }
      
      private function _ArchitectTemplate_MysteryBuilding_DetailsCenterComponent1_i() : DetailsCenterComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DetailsCenterComponent = new DetailsCenterComponent();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.id = "center";
            if(_loc2_ || _loc2_)
            {
               addr0048:
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.document = this;
                     if(!_loc3_)
                     {
                        addr0072:
                        this.center = _loc1_;
                        if(_loc2_ || Boolean(this))
                        {
                           addr0084:
                           BindingManager.executeBindings(this,"center",this.center);
                        }
                        §§goto(addr0090);
                     }
                     §§goto(addr0084);
                  }
                  §§goto(addr0090);
               }
               §§goto(addr0072);
            }
            addr0090:
            return _loc1_;
         }
         §§goto(addr0048);
      }
      
      private function _ArchitectTemplate_MysteryBuilding_MultistateButton1_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.width = 204;
            if(_loc2_)
            {
               _loc1_.imageNameLeft = "button_icon_build";
               if(!(_loc3_ && _loc3_))
               {
                  addr0052:
                  _loc1_.libNameLeft = "gui_popups_paperPopup";
                  if(_loc2_)
                  {
                     _loc1_.id = "buildNowButton";
                     if(!_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              §§goto(addr0088);
                           }
                        }
                        §§goto(addr0091);
                     }
                  }
                  addr0088:
                  _loc1_.document = this;
                  if(_loc2_)
                  {
                     addr0091:
                     this.buildNowButton = _loc1_;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        BindingManager.executeBindings(this,"buildNowButton",this.buildNowButton);
                     }
                  }
               }
               §§goto(addr00b0);
            }
            §§goto(addr0052);
         }
         addr00b0:
         return _loc1_;
      }
      
      private function _ArchitectTemplate_MysteryBuilding_VGroup3_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.width = 240;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.height = 300;
               if(!_loc3_)
               {
                  §§goto(addr0052);
               }
               §§goto(addr006f);
            }
            addr0052:
            _loc1_.right = -10;
            if(!_loc3_)
            {
               _loc1_.bottom = 25;
               if(!(_loc3_ && _loc3_))
               {
                  addr006f:
                  _loc1_.verticalAlign = "middle";
                  if(_loc2_)
                  {
                     _loc1_.mxmlContent = [this._ArchitectTemplate_MysteryBuilding_StickyNoteComponent2_c()];
                     if(!_loc3_)
                     {
                        §§goto(addr0097);
                     }
                     §§goto(addr00ab);
                  }
                  addr0097:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        addr00ab:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr00af);
               }
               §§goto(addr00ab);
            }
            §§goto(addr00af);
         }
         addr00af:
         return _loc1_;
      }
      
      private function _ArchitectTemplate_MysteryBuilding_StickyNoteComponent2_c() : StickyNoteComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               addr0032:
               _loc1_.height = 250;
               if(!_loc3_)
               {
                  _loc1_.tapeTop = true;
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.tapeBottom = true;
                     if(_loc2_)
                     {
                        addr0070:
                        _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ArchitectTemplate_MysteryBuilding_Array9_c);
                        if(_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || Boolean(_loc1_))
                              {
                                 addr0099:
                                 _loc1_.document = this;
                              }
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr0099);
               }
            }
            §§goto(addr0070);
         }
         §§goto(addr0032);
      }
      
      private function _ArchitectTemplate_MysteryBuilding_Array9_c() : Array
      {
         return [this._ArchitectTemplate_MysteryBuilding_VGroup4_c()];
      }
      
      private function _ArchitectTemplate_MysteryBuilding_VGroup4_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.horizontalCenter = 0;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.mxmlContent = [this._ArchitectTemplate_MysteryBuilding_PostitHeaderComponent2_i(),this._ArchitectTemplate_MysteryBuilding_BriskImageDynaLib2_i()];
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr0074:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0078);
               }
               §§goto(addr0074);
            }
         }
         addr0078:
         return _loc1_;
      }
      
      private function _ArchitectTemplate_MysteryBuilding_PostitHeaderComponent2_i() : PostitHeaderComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:PostitHeaderComponent = new PostitHeaderComponent();
         if(!_loc3_)
         {
            _loc1_.horizontalCenter = 0;
            if(!_loc3_)
            {
               _loc1_.id = "exclusiveHeader";
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        _loc1_.document = this;
                        if(!_loc3_)
                        {
                           addr0064:
                           this.exclusiveHeader = _loc1_;
                           if(!_loc3_)
                           {
                              addr006e:
                              BindingManager.executeBindings(this,"exclusiveHeader",this.exclusiveHeader);
                           }
                        }
                        §§goto(addr007b);
                     }
                  }
                  §§goto(addr0064);
               }
               addr007b:
               return _loc1_;
            }
            §§goto(addr0064);
         }
         §§goto(addr006e);
      }
      
      private function _ArchitectTemplate_MysteryBuilding_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.id = "exclusiveGfx";
            if(_loc2_)
            {
               addr002b:
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.document = this;
                     if(!_loc3_)
                     {
                        §§goto(addr0061);
                     }
                  }
                  §§goto(addr0073);
               }
            }
            addr0061:
            this.exclusiveGfx = _loc1_;
            if(_loc2_ || Boolean(this))
            {
               addr0073:
               BindingManager.executeBindings(this,"exclusiveGfx",this.exclusiveGfx);
            }
            return _loc1_;
         }
         §§goto(addr002b);
      }
      
      public function ___ArchitectTemplate_MysteryBuilding_Group1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
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
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr0051:
                  this._597326554buildNowButton = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buildNowButton",_loc2_,param1));
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
         §§goto(addr0051);
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
               if(!(_loc3_ && _loc3_))
               {
                  this._1364013995center = param1;
                  if(_loc4_)
                  {
                     §§goto(addr005e);
                  }
                  §§goto(addr006e);
               }
               addr005e:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_)
                  {
                     addr006e:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"center",_loc2_,param1));
                  }
               }
               §§goto(addr007c);
            }
            addr007c:
            return;
         }
         §§goto(addr006e);
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
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._1253508016costComponent = param1;
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           addr0080:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr008f);
                  }
               }
               §§goto(addr0080);
            }
            addr008f:
            return;
         }
         §§goto(addr0080);
      }
      
      [Bindable(event="propertyChange")]
      public function get exclusiveGfx() : BriskImageDynaLib
      {
         return this._792695813exclusiveGfx;
      }
      
      public function set exclusiveGfx(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._792695813exclusiveGfx;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._792695813exclusiveGfx = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"exclusiveGfx",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get exclusiveHeader() : PostitHeaderComponent
      {
         return this._1443651893exclusiveHeader;
      }
      
      public function set exclusiveHeader(param1:PostitHeaderComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1443651893exclusiveHeader;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._1443651893exclusiveHeader = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr007c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"exclusiveHeader",_loc2_,param1));
                        }
                     }
                     §§goto(addr008b);
                  }
               }
               §§goto(addr007c);
            }
            addr008b:
            return;
         }
         §§goto(addr007c);
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
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._1684755691flavorText = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     addr0069:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavorText",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0090);
               }
               §§goto(addr0069);
            }
            addr0090:
            return;
         }
         §§goto(addr0069);
      }
      
      [Bindable(event="propertyChange")]
      public function get restrictionFeatureButton() : DynamicImageButton
      {
         return this._188635812restrictionFeatureButton;
      }
      
      public function set restrictionFeatureButton(param1:DynamicImageButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._188635812restrictionFeatureButton;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  addr004d:
                  this._188635812restrictionFeatureButton = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionFeatureButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr0076);
                  }
                  §§goto(addr0067);
               }
            }
            addr0076:
            return;
         }
         §§goto(addr004d);
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
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._294445069restrictionGfx = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr007d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionGfx",_loc2_,param1));
                        }
                     }
                     §§goto(addr008c);
                  }
                  §§goto(addr007d);
               }
            }
         }
         addr008c:
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
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._505777645restrictionGroup = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0068:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0077);
                  }
               }
               §§goto(addr0068);
            }
         }
         addr0077:
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
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._1516951929restrictionHeader = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     addr0063:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionHeader",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0081);
               }
               §§goto(addr0063);
            }
            addr0081:
            return;
         }
         §§goto(addr0063);
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
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  addr0048:
                  this._538066039restrictionName = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0062:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionName",_loc2_,param1));
                        }
                     }
                     §§goto(addr0071);
                  }
               }
               §§goto(addr0062);
            }
            addr0071:
            return;
         }
         §§goto(addr0048);
      }
   }
}

