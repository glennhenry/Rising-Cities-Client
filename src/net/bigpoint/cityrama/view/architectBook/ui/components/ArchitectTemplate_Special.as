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
   import net.bigpoint.cityrama.model.architecturalBook.vo.BlueprintVo;
   import net.bigpoint.cityrama.model.architecturalBook.vo.CenterItemDataVo;
   import net.bigpoint.cityrama.model.architecturalBook.vo.VerifiedBlueprintVo;
   import net.bigpoint.cityrama.view.architectBook.ui.skins.ArchitectImageValueSkin;
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
   
   public class ArchitectTemplate_Special extends Group
   {
      
      public static const NAME:String = "ArchitectTemplate_Special";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || _loc2_)
      {
         NAME = "ArchitectTemplate_Special";
      }
      
      private var _597326554buildNowButton:MultistateButton;
      
      private var _1364013995center:DetailsCenterComponent;
      
      private var _1253508016costComponent:BuildingCostComponent;
      
      private var _1768900535effectFeatureButton:DynamicImageButton;
      
      private var _490397341effectsGroup:VGroup;
      
      private var _1961361873effectsHeader:PostitHeaderComponent;
      
      private var _1678527680effectsList:List;
      
      private var _1684755691flavorText:LocaLabel;
      
      private var _188635812restrictionFeatureButton:DynamicImageButton;
      
      private var _294445069restrictionGfx:BriskImageDynaLib;
      
      private var _505777645restrictionGroup:StickyNoteComponent;
      
      private var _1516951929restrictionHeader:PostitHeaderComponent;
      
      private var _538066039restrictionName:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:BlueprintVo;
      
      private var _veryData:VerifiedBlueprintVo;
      
      public function ArchitectTemplate_Special()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super();
            if(!(_loc1_ && _loc2_))
            {
               mx_internal::_document = this;
               if(!_loc1_)
               {
                  this.percentWidth = 100;
                  if(!_loc1_)
                  {
                     this.percentHeight = 100;
                     if(_loc2_)
                     {
                        addr0068:
                        this.mxmlContent = [this._ArchitectTemplate_Special_HGroup1_c(),this._ArchitectTemplate_Special_Group2_c(),this._ArchitectTemplate_Special_VGroup2_c(),this._ArchitectTemplate_Special_Group3_c()];
                        if(_loc2_ || _loc1_)
                        {
                           this.addEventListener("creationComplete",this.___ArchitectTemplate_Special_Group1_creationComplete);
                        }
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr0068);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            super.moduleFactory = param1;
            if(!(_loc3_ && Boolean(this)))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     §§goto(addr005d);
                  }
               }
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         addr005d:
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super.initialize();
         }
      }
      
      protected function handleCreationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            this.effectsHeader.text = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.effects");
            if(!(_loc4_ && _loc2_))
            {
               §§push(this.buildNowButton);
               if(_loc3_ || Boolean(this))
               {
                  §§pop().label = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.buildNow");
                  if(_loc3_ || _loc3_)
                  {
                     addr0077:
                     this.restrictionHeader.text = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.buildableLand");
                     if(!_loc4_)
                     {
                        §§goto(addr0092);
                     }
                     §§goto(addr00cf);
                  }
                  §§goto(addr00a4);
               }
               addr0092:
               this.buildNowButton.addEventListener(MouseEvent.CLICK,this.handleBuildClick);
               if(_loc3_)
               {
                  this.restrictionFeatureButton.visible = this.restrictionFeatureButton.includeInLayout = false;
                  addr00a4:
                  if(!(_loc4_ && _loc3_))
                  {
                     addr00cf:
                     this.setupCenter();
                     if(_loc3_ || _loc3_)
                     {
                        addr00e1:
                        this.updateAll();
                     }
                     §§goto(addr00e7);
                  }
                  §§goto(addr00e1);
               }
               addr00e7:
               return;
            }
            §§goto(addr00cf);
         }
         §§goto(addr0077);
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
         if(!_loc1_)
         {
            dispatchEvent(new Event("effectFeatureClick"));
         }
      }
      
      private function handleBuildClick(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            dispatchEvent(new Event("buildNow"));
         }
      }
      
      private function handleRestrictionFeatureClick() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            dispatchEvent(new Event("restrictionFeatureClick"));
         }
      }
      
      public function setData(param1:VerifiedBlueprintVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._data = param1.bluePrintVO;
            if(_loc3_ || _loc3_)
            {
               this._veryData = param1;
               if(_loc3_)
               {
                  invalidateProperties();
               }
            }
         }
      }
      
      private function updateAll() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            this.flavorText.text = this._veryData.descriptionVo.descriptionText;
            if(_loc2_)
            {
               §§push(this._veryData.buildableLandVO.visualName);
               if(_loc2_ || Boolean(this))
               {
                  if(§§pop() != "")
                  {
                     if(!(_loc1_ && _loc2_))
                     {
                        §§push(this.restrictionGfx);
                        if(_loc2_)
                        {
                           §§push(this._veryData);
                           if(_loc2_)
                           {
                              §§push(§§pop().buildableLandVO);
                              if(_loc2_)
                              {
                                 §§push(§§pop().visualLibName);
                                 if(_loc2_ || _loc2_)
                                 {
                                    §§pop().dynaLibName = §§pop();
                                    if(_loc2_ || Boolean(this))
                                    {
                                       addr0096:
                                       §§push(this.restrictionGfx);
                                       if(_loc2_ || Boolean(this))
                                       {
                                          §§push(this._veryData);
                                          if(_loc2_)
                                          {
                                             addr00b0:
                                             §§push(§§pop().buildableLandVO);
                                             if(_loc2_ || Boolean(this))
                                             {
                                                §§push(§§pop().visualName);
                                                if(!(_loc1_ && Boolean(this)))
                                                {
                                                   addr00d0:
                                                   §§pop().dynaBmpSourceName = §§pop();
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      addr00ec:
                                                      this.restrictionGfx.toolTip = this._veryData.buildableLandVO.toolTip;
                                                      addr00ea:
                                                      addr00e7:
                                                      addr00e3:
                                                      if(_loc2_)
                                                      {
                                                         this.restrictionName.text = this._veryData.buildableLandVO.descriptionText;
                                                         if(!(_loc1_ && Boolean(this)))
                                                         {
                                                            §§push(this.restrictionGroup);
                                                            if(!_loc1_)
                                                            {
                                                               §§push(true);
                                                               if(!(_loc1_ && Boolean(this)))
                                                               {
                                                                  §§pop().visible = §§pop();
                                                                  if(!(_loc1_ && _loc1_))
                                                                  {
                                                                     addr0158:
                                                                     §§push(this._data);
                                                                     if(_loc2_ || _loc2_)
                                                                     {
                                                                        §§push(§§pop().state);
                                                                        if(_loc2_ || Boolean(this))
                                                                        {
                                                                           addr0179:
                                                                           §§push(BlueprintVo.STATE_FULLY_CONSTRUCTED_AVAILABLE);
                                                                           if(_loc2_)
                                                                           {
                                                                              §§push(§§pop() == §§pop());
                                                                              if(_loc2_)
                                                                              {
                                                                                 var _temp_16:* = §§pop();
                                                                                 §§push(_temp_16);
                                                                                 if(!_temp_16)
                                                                                 {
                                                                                    if(!(_loc1_ && _loc1_))
                                                                                    {
                                                                                       §§pop();
                                                                                       if(!_loc1_)
                                                                                       {
                                                                                          addr01b0:
                                                                                          addr01af:
                                                                                          addr01a9:
                                                                                          addr01a6:
                                                                                          addr01a2:
                                                                                          if(this._data.state == BlueprintVo.STATE_BUY_MORE_WITH_RC)
                                                                                          {
                                                                                             if(!(_loc1_ && _loc1_))
                                                                                             {
                                                                                                addr01c1:
                                                                                                §§push(this.costComponent);
                                                                                                if(_loc2_ || _loc2_)
                                                                                                {
                                                                                                   §§push("noCosts");
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                      §§pop().currentState = §§pop();
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         §§push(this.costComponent);
                                                                                                         if(!(_loc1_ && _loc2_))
                                                                                                         {
                                                                                                            §§pop().invalidateProperties();
                                                                                                            if(!_loc1_)
                                                                                                            {
                                                                                                               addr0239:
                                                                                                               this.effectsList.dataProvider = this._veryData.consequenceVOList;
                                                                                                               if(!_loc1_)
                                                                                                               {
                                                                                                                  addr024c:
                                                                                                                  this.setTooltips();
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr021d:
                                                                                                            §§pop().currentState = "hasCosts";
                                                                                                            addr021a:
                                                                                                            if(!_loc1_)
                                                                                                            {
                                                                                                               addr0229:
                                                                                                               this.costComponent.setData(this._veryData.costVOList);
                                                                                                               addr0225:
                                                                                                               if(_loc2_)
                                                                                                               {
                                                                                                                  §§goto(addr0239);
                                                                                                               }
                                                                                                               §§goto(addr024c);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr0252);
                                                                                                      }
                                                                                                      §§goto(addr0225);
                                                                                                   }
                                                                                                   §§goto(addr021d);
                                                                                                }
                                                                                                §§goto(addr0229);
                                                                                             }
                                                                                             §§goto(addr0252);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(this.costComponent);
                                                                                             if(!(_loc1_ && Boolean(this)))
                                                                                             {
                                                                                                §§goto(addr021a);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr0229);
                                                                                       }
                                                                                       §§goto(addr0239);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr01b0);
                                                                           }
                                                                           §§goto(addr01af);
                                                                        }
                                                                        §§goto(addr01a9);
                                                                     }
                                                                     §§goto(addr01a6);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr0149:
                                                                  §§pop().visible = §§pop();
                                                                  if(_loc2_ || _loc2_)
                                                                  {
                                                                     §§goto(addr0158);
                                                                  }
                                                               }
                                                               §§goto(addr01a2);
                                                            }
                                                            else
                                                            {
                                                               addr0148:
                                                               §§push(false);
                                                            }
                                                            §§goto(addr0149);
                                                         }
                                                         addr0252:
                                                         return;
                                                      }
                                                      §§goto(addr01a2);
                                                   }
                                                   §§goto(addr0158);
                                                }
                                                §§goto(addr00ec);
                                             }
                                             §§goto(addr00ea);
                                          }
                                          §§goto(addr00e7);
                                       }
                                       §§goto(addr00e3);
                                    }
                                    §§goto(addr01c1);
                                 }
                                 §§goto(addr00d0);
                              }
                              §§goto(addr00ea);
                           }
                           §§goto(addr00b0);
                        }
                        §§goto(addr00e3);
                     }
                     §§goto(addr0096);
                  }
                  else
                  {
                     §§push(this.restrictionGroup);
                  }
                  §§goto(addr0148);
               }
               §§goto(addr0179);
            }
            §§goto(addr0158);
         }
         §§goto(addr0096);
      }
      
      public function setSubData(param1:VerifiedBlueprintVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            this._veryData = param1;
            if(!_loc3_)
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
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §§push(LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.arrowLeft"));
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.arrowRight"));
         if(!(_loc4_ && _loc2_))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || Boolean(this))
         {
            §§push(this.center);
            if(_loc3_ || _loc3_)
            {
               §§push("tooltipLeftScroll");
               if(_loc3_)
               {
                  §§push(_loc1_);
                  if(_loc3_)
                  {
                     §§pop().setStyle(§§pop(),§§pop());
                     if(!(_loc4_ && _loc2_))
                     {
                        §§goto(addr0093);
                     }
                     §§goto(addr00bb);
                  }
                  addr0093:
                  this.center.setStyle("tooltipRightScroll",_loc2_);
                  §§goto(addr0085);
               }
               addr0085:
               §§goto(addr0082);
            }
            addr0082:
            if(!(_loc4_ && _loc2_))
            {
               this.buildNowButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.placeButton");
               if(!_loc4_)
               {
                  addr00bb:
                  §§push(this._data);
                  if(!_loc4_)
                  {
                     §§push(§§pop().permissionBuyable);
                     if(_loc3_)
                     {
                        §§push(§§pop());
                        if(!_loc4_)
                        {
                           §§goto(addr00d4);
                        }
                        §§goto(addr00e6);
                     }
                     addr00d4:
                     var _temp_6:* = §§pop();
                     §§push(_temp_6);
                     if(_temp_6)
                     {
                        if(_loc3_ || _loc1_)
                        {
                           addr00e6:
                           §§pop();
                           if(!_loc4_)
                           {
                              §§goto(addr00fa);
                           }
                           §§goto(addr0139);
                        }
                        §§goto(addr00f9);
                     }
                     addr00fa:
                     §§goto(addr00f1);
                  }
                  addr00f1:
                  §§push(this._data.locked);
                  if(_loc3_)
                  {
                     addr00f9:
                     §§push(!§§pop());
                  }
                  if(§§pop())
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        §§goto(addr011a);
                     }
                     §§goto(addr0139);
                  }
                  addr011a:
                  this.effectFeatureButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.feature.effects");
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr0139:
                     this.restrictionFeatureButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.feature.restrictions");
                  }
                  §§goto(addr014a);
               }
            }
            addr014a:
            return;
         }
         §§goto(addr011a);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super.commitProperties();
            if(!_loc1_)
            {
               this.setupCenter();
               if(_loc2_ || _loc2_)
               {
                  this.setTooltips();
                  if(_loc2_)
                  {
                     addr0047:
                     this.updateAll();
                  }
               }
               return;
            }
         }
         §§goto(addr0047);
      }
      
      private function setupCenter() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!_loc5_)
         {
            §§push(this._data);
            if(!(_loc5_ && Boolean(this)))
            {
               §§push(§§pop().state);
               if(_loc4_ || Boolean(this))
               {
                  §§push(BlueprintVo.STATE_FULLY_CONSTRUCTED_AVAILABLE);
                  if(!_loc5_)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(_loc4_)
                        {
                           §§push(this.buildNowButton);
                           if(_loc4_)
                           {
                              §§push(true);
                              if(!(_loc5_ && _loc2_))
                              {
                                 §§pop().enabled = §§pop();
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    §§push(this.buildNowButton);
                                    if(_loc4_)
                                    {
                                       §§push(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.button.place.capital"));
                                       if(_loc4_)
                                       {
                                          §§pop().label = §§pop();
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             addr00a9:
                                             §§push(this.buildNowButton);
                                             if(!_loc5_)
                                             {
                                                §§push(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.button.place.tooltip"));
                                                if(!_loc5_)
                                                {
                                                   §§pop().toolTip = §§pop();
                                                   if(!(_loc5_ && Boolean(this)))
                                                   {
                                                      §§push(this.buildNowButton);
                                                      if(!_loc5_)
                                                      {
                                                         §§push("button_icon_build");
                                                         if(_loc4_)
                                                         {
                                                            §§pop().imageNameLeft = §§pop();
                                                            if(_loc4_)
                                                            {
                                                               §§push(this.buildNowButton);
                                                               if(_loc4_)
                                                               {
                                                                  §§push("gui_popups_paperPopup");
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     addr010b:
                                                                     §§pop().libNameLeft = §§pop();
                                                                     if(_loc4_ || Boolean(this))
                                                                     {
                                                                        §§push(this.buildNowButton);
                                                                        if(_loc4_)
                                                                        {
                                                                           §§push(this.buildNowButton);
                                                                           if(!_loc5_)
                                                                           {
                                                                              §§push("");
                                                                              if(_loc4_)
                                                                              {
                                                                                 var _temp_9:* = §§pop();
                                                                                 §§push(_temp_9);
                                                                                 §§push(_temp_9);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    var _loc3_:* = §§pop();
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       §§pop().libNameRight = §§pop();
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          §§push(_loc3_);
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                §§pop().imageNameRight = §§pop();
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   addr0390:
                                                                                                   §§push(this.buildNowButton);
                                                                                                   if(!(_loc5_ && _loc1_))
                                                                                                   {
                                                                                                      addr03a2:
                                                                                                      §§push(this.buildNowButton);
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         §§push(Boolean(§§pop().enabled));
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            addr03b6:
                                                                                                            var _temp_11:* = §§pop();
                                                                                                            §§push(_temp_11);
                                                                                                            §§push(_temp_11);
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     if(_loc4_ || Boolean(this))
                                                                                                                     {
                                                                                                                        addr03d6:
                                                                                                                        §§push(this._data);
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           §§push(§§pop().locked);
                                                                                                                           if(_loc4_ || _loc2_)
                                                                                                                           {
                                                                                                                              addr03f1:
                                                                                                                              §§push(!§§pop());
                                                                                                                              if(_loc4_)
                                                                                                                              {
                                                                                                                                 addr03f8:
                                                                                                                                 §§pop().enabled = §§pop();
                                                                                                                                 if(!_loc5_)
                                                                                                                                 {
                                                                                                                                    addr0401:
                                                                                                                                    §§push(this.buildNowButton);
                                                                                                                                    if(!_loc5_)
                                                                                                                                    {
                                                                                                                                       addr040b:
                                                                                                                                       §§push(this._data);
                                                                                                                                       if(_loc4_ || _loc1_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().userCanAfford);
                                                                                                                                          if(!_loc5_)
                                                                                                                                          {
                                                                                                                                             §§push(!§§pop());
                                                                                                                                             if(!(_loc5_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                addr0435:
                                                                                                                                                var _temp_16:* = §§pop();
                                                                                                                                                §§push(_temp_16);
                                                                                                                                                §§push(_temp_16);
                                                                                                                                                if(!_loc5_)
                                                                                                                                                {
                                                                                                                                                   addr043c:
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      if(!_loc5_)
                                                                                                                                                      {
                                                                                                                                                         §§pop();
                                                                                                                                                         if(!(_loc5_ && _loc2_))
                                                                                                                                                         {
                                                                                                                                                            addr0459:
                                                                                                                                                            addr0455:
                                                                                                                                                            §§push(Boolean(this.buildNowButton.enabled));
                                                                                                                                                            if(!_loc5_)
                                                                                                                                                            {
                                                                                                                                                               addr0463:
                                                                                                                                                               var _temp_18:* = §§pop();
                                                                                                                                                               addr0464:
                                                                                                                                                               §§push(_temp_18);
                                                                                                                                                               if(_temp_18)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     addr046e:
                                                                                                                                                                     §§pop();
                                                                                                                                                                     addr0484:
                                                                                                                                                                     addr046f:
                                                                                                                                                                     addr0473:
                                                                                                                                                                     addr0476:
                                                                                                                                                                     §§push(this._data.state == BlueprintVo.STATE_FULLY_CONSTRUCTED_AVAILABLE);
                                                                                                                                                                     if(_loc4_)
                                                                                                                                                                     {
                                                                                                                                                                        addr0483:
                                                                                                                                                                        §§push(!§§pop());
                                                                                                                                                                     }
                                                                                                                                                                     §§pop().showPlus = §§pop();
                                                                                                                                                                     addr0487:
                                                                                                                                                                     var _loc1_:CenterItemDataVo = new CenterItemDataVo();
                                                                                                                                                                     var _loc2_:Boolean = false;
                                                                                                                                                                     if(!_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this._data);
                                                                                                                                                                        if(_loc4_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().permissionBuyable);
                                                                                                                                                                           if(_loc4_)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc4_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr04c3:
                                                                                                                                                                                    addr04bf:
                                                                                                                                                                                    if(this._data.permission.permissionsBought < this._data.permission.config.buyCap)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc5_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr04ed:
                                                                                                                                                                                          _loc2_ = true;
                                                                                                                                                                                          if(_loc4_ || _loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr04fc);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr0512);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr04fc);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr0512);
                                                                                                                                                                              }
                                                                                                                                                                              addr04fc:
                                                                                                                                                                              _loc1_.blueprintVO = this._data;
                                                                                                                                                                              if(_loc4_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr0512:
                                                                                                                                                                                 this.center.data = _loc1_;
                                                                                                                                                                              }
                                                                                                                                                                              return;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr04ed);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr04c3);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr04bf);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr0483);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0484);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr046f);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr046e);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0463);
                                                                                                                                                }
                                                                                                                                                §§goto(addr0464);
                                                                                                                                             }
                                                                                                                                             §§goto(addr0484);
                                                                                                                                          }
                                                                                                                                          §§goto(addr046e);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0473);
                                                                                                                                    }
                                                                                                                                    §§goto(addr046f);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0487);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr0463);
                                                                                                                        }
                                                                                                                        §§goto(addr0473);
                                                                                                                     }
                                                                                                                     §§goto(addr040b);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr03f8);
                                                                                                            }
                                                                                                            §§goto(addr043c);
                                                                                                         }
                                                                                                         §§goto(addr0435);
                                                                                                      }
                                                                                                      §§goto(addr0459);
                                                                                                   }
                                                                                                   §§goto(addr0455);
                                                                                                }
                                                                                                §§goto(addr0487);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr01ba:
                                                                                                §§pop().label = §§pop();
                                                                                                if(!(_loc5_ && Boolean(_loc1_)))
                                                                                                {
                                                                                                   addr01cb:
                                                                                                   §§push(this.buildNowButton);
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      addr01d5:
                                                                                                      §§push("gui_resources_icons");
                                                                                                      if(!(_loc5_ && Boolean(this)))
                                                                                                      {
                                                                                                         §§pop().libNameRight = §§pop();
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            §§push(this.buildNowButton);
                                                                                                            if(_loc4_ || _loc3_)
                                                                                                            {
                                                                                                               addr0201:
                                                                                                               §§push(this.buildNowButton);
                                                                                                               if(!(_loc5_ && _loc3_))
                                                                                                               {
                                                                                                                  addr0217:
                                                                                                                  §§pop().libNameLeft = _loc3_ = "";
                                                                                                                  addr021b:
                                                                                                                  addr021a:
                                                                                                                  §§push(_loc3_);
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     addr0223:
                                                                                                                     §§pop().imageNameLeft = §§pop();
                                                                                                                     if(!(_loc5_ && Boolean(_loc3_)))
                                                                                                                     {
                                                                                                                        §§push(this._data);
                                                                                                                        if(_loc4_ || Boolean(_loc1_))
                                                                                                                        {
                                                                                                                           addr0246:
                                                                                                                           §§push(§§pop().state);
                                                                                                                           if(_loc4_ || _loc2_)
                                                                                                                           {
                                                                                                                              §§push(BlueprintVo.STATE_BUY_MORE_WITH_RC);
                                                                                                                              if(!_loc5_)
                                                                                                                              {
                                                                                                                                 addr0263:
                                                                                                                                 if(§§pop() == §§pop())
                                                                                                                                 {
                                                                                                                                    if(!_loc5_)
                                                                                                                                    {
                                                                                                                                       addr026d:
                                                                                                                                       §§push(this.buildNowButton);
                                                                                                                                       if(_loc4_ || Boolean(this))
                                                                                                                                       {
                                                                                                                                          addr028b:
                                                                                                                                          §§push("dd_button_icon");
                                                                                                                                          if(_loc4_)
                                                                                                                                          {
                                                                                                                                             addr0294:
                                                                                                                                             §§pop().imageNameRight = §§pop();
                                                                                                                                             if(!(_loc5_ && Boolean(this)))
                                                                                                                                             {
                                                                                                                                                §§push(this.buildNowButton);
                                                                                                                                                if(_loc4_ || Boolean(this))
                                                                                                                                                {
                                                                                                                                                   addr02b7:
                                                                                                                                                   §§push(true);
                                                                                                                                                   if(!(_loc5_ && Boolean(this)))
                                                                                                                                                   {
                                                                                                                                                      §§pop().showSparkle = §§pop();
                                                                                                                                                      if(!_loc5_)
                                                                                                                                                      {
                                                                                                                                                         addr02cf:
                                                                                                                                                         §§push(this.buildNowButton);
                                                                                                                                                         if(!(_loc5_ && Boolean(_loc3_)))
                                                                                                                                                         {
                                                                                                                                                            §§push(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.button.buyPermission.tooltip"));
                                                                                                                                                            if(!_loc5_)
                                                                                                                                                            {
                                                                                                                                                               §§pop().toolTip = §§pop();
                                                                                                                                                               if(_loc5_ && Boolean(this))
                                                                                                                                                               {
                                                                                                                                                                  addr0325:
                                                                                                                                                                  §§push(this.buildNowButton);
                                                                                                                                                                  if(_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     addr0332:
                                                                                                                                                                     §§pop().imageNameRight = "layer_cc_icon";
                                                                                                                                                                     if(!(_loc5_ && Boolean(_loc1_)))
                                                                                                                                                                     {
                                                                                                                                                                        addr0343:
                                                                                                                                                                        §§push(this.buildNowButton);
                                                                                                                                                                        if(!(_loc5_ && Boolean(_loc3_)))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(false);
                                                                                                                                                                           if(_loc4_ || Boolean(_loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              §§pop().showSparkle = §§pop();
                                                                                                                                                                              if(_loc4_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr036d:
                                                                                                                                                                                 §§push(this.buildNowButton);
                                                                                                                                                                                 if(!_loc5_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr0377:
                                                                                                                                                                                    §§push(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.button.buy.tooltip"));
                                                                                                                                                                                    if(!_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr0388:
                                                                                                                                                                                       §§pop().toolTip = §§pop();
                                                                                                                                                                                       if(_loc4_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr0390);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr0401);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr0476);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr0455);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr0390);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr0484);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr0455);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr0401);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr03d6);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0390);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0388);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0455);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr036d);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr03b6);
                                                                                                                                                }
                                                                                                                                                §§goto(addr0455);
                                                                                                                                             }
                                                                                                                                             §§goto(addr02cf);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0332);
                                                                                                                                       }
                                                                                                                                       §§goto(addr02b7);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr0313:
                                                                                                                                    addr030d:
                                                                                                                                    addr030a:
                                                                                                                                    if(this._data.state == BlueprintVo.STATE_PERMISSION_AVAILABLE)
                                                                                                                                    {
                                                                                                                                       if(_loc4_ || Boolean(_loc1_))
                                                                                                                                       {
                                                                                                                                          §§goto(addr0325);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr0390);
                                                                                                                              }
                                                                                                                              §§goto(addr0313);
                                                                                                                           }
                                                                                                                           §§goto(addr030d);
                                                                                                                        }
                                                                                                                        §§goto(addr030a);
                                                                                                                     }
                                                                                                                     §§goto(addr036d);
                                                                                                                  }
                                                                                                                  §§goto(addr0476);
                                                                                                                  addr0216:
                                                                                                                  addr0215:
                                                                                                               }
                                                                                                               §§goto(addr0459);
                                                                                                            }
                                                                                                            §§goto(addr046f);
                                                                                                         }
                                                                                                         §§goto(addr0487);
                                                                                                      }
                                                                                                      §§goto(addr0294);
                                                                                                   }
                                                                                                   §§goto(addr0201);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr0390);
                                                                                          }
                                                                                          §§goto(addr021b);
                                                                                       }
                                                                                       §§goto(addr021a);
                                                                                    }
                                                                                    §§goto(addr0217);
                                                                                 }
                                                                                 §§goto(addr0216);
                                                                              }
                                                                              §§goto(addr0215);
                                                                           }
                                                                           §§goto(addr0459);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr01a7:
                                                                           §§push(LocaUtils.getThousendSeperatedNumber(this._data.price));
                                                                           if(!_loc5_)
                                                                           {
                                                                              §§goto(addr01ba);
                                                                           }
                                                                        }
                                                                        §§goto(addr0223);
                                                                     }
                                                                     §§goto(addr01cb);
                                                                  }
                                                                  §§goto(addr0332);
                                                               }
                                                               §§goto(addr028b);
                                                            }
                                                            §§goto(addr01cb);
                                                         }
                                                         §§goto(addr010b);
                                                      }
                                                      §§goto(addr0201);
                                                   }
                                                   §§goto(addr0343);
                                                }
                                                §§goto(addr0223);
                                             }
                                             §§goto(addr01a7);
                                          }
                                          §§goto(addr02cf);
                                       }
                                       §§goto(addr0476);
                                    }
                                    §§goto(addr01d5);
                                 }
                                 §§goto(addr00a9);
                              }
                              §§goto(addr0484);
                           }
                           §§goto(addr0455);
                        }
                        §§goto(addr02cf);
                     }
                     else
                     {
                        §§push(this.buildNowButton);
                        if(_loc4_ || Boolean(_loc3_))
                        {
                           §§push(true);
                           if(_loc4_ || Boolean(_loc1_))
                           {
                              §§pop().enabled = §§pop();
                              if(!_loc5_)
                              {
                                 addr0195:
                                 §§push(this.buildNowButton);
                                 if(!(_loc5_ && Boolean(_loc1_)))
                                 {
                                    §§goto(addr01a7);
                                 }
                                 §§goto(addr03a2);
                              }
                              §§goto(addr026d);
                           }
                           §§goto(addr03f1);
                        }
                     }
                     §§goto(addr0377);
                  }
                  §§goto(addr0263);
               }
               §§goto(addr030d);
            }
            §§goto(addr0246);
         }
         §§goto(addr0195);
      }
      
      private function _ArchitectTemplate_Special_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc2_)
            {
               _loc1_.height = 25;
               if(!_loc2_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc3_ || Boolean(this))
                  {
                     §§goto(addr005c);
                  }
               }
            }
            §§goto(addr0084);
         }
         addr005c:
         _loc1_.horizontalAlign = "center";
         if(_loc3_ || _loc2_)
         {
            _loc1_.top = -9;
            if(!_loc2_)
            {
               addr0084:
               _loc1_.mxmlContent = [this._ArchitectTemplate_Special_LocaLabel1_i()];
               if(!_loc2_)
               {
                  §§goto(addr0094);
               }
            }
            §§goto(addr00a0);
         }
         addr0094:
         if(!_loc1_.document)
         {
            if(!_loc2_)
            {
               addr00a0:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Special_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.maxWidth = 690;
            if(_loc2_)
            {
               _loc1_.maxDisplayedLines = 2;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.styleName = "flavorText";
                  if(_loc2_)
                  {
                     addr0057:
                     _loc1_.id = "flavorText";
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              §§goto(addr008a);
                           }
                        }
                        §§goto(addr0093);
                     }
                  }
                  addr008a:
                  _loc1_.document = this;
                  if(_loc2_)
                  {
                     addr0093:
                     this.flavorText = _loc1_;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        BindingManager.executeBindings(this,"flavorText",this.flavorText);
                     }
                  }
                  §§goto(addr00b2);
               }
            }
            §§goto(addr0057);
         }
         addr00b2:
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Special_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || _loc3_)
         {
            _loc1_.width = 240;
            if(_loc2_)
            {
               _loc1_.height = 300;
               if(_loc2_)
               {
                  _loc1_.left = 4;
                  if(_loc2_)
                  {
                     _loc1_.bottom = 10;
                     if(_loc2_)
                     {
                        addr006c:
                        _loc1_.mxmlContent = [this._ArchitectTemplate_Special_BuildingCostComponent1_i(),this._ArchitectTemplate_Special_StickyNoteComponent1_i()];
                        if(_loc2_)
                        {
                           addr0082:
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 addr0096:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr009a);
                        }
                     }
                     §§goto(addr0096);
                  }
                  addr009a:
                  return _loc1_;
               }
               §§goto(addr0082);
            }
            §§goto(addr006c);
         }
         §§goto(addr0096);
      }
      
      private function _ArchitectTemplate_Special_BuildingCostComponent1_i() : BuildingCostComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BuildingCostComponent = new BuildingCostComponent();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc3_)
            {
               _loc1_.top = 0;
               if(!(_loc2_ && Boolean(this)))
               {
                  addr005e:
                  _loc1_.height = 115;
                  if(!_loc2_)
                  {
                     _loc1_.id = "costComponent";
                     if(_loc3_ || _loc3_)
                     {
                        addr007b:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              _loc1_.document = this;
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr00aa:
                                 this.costComponent = _loc1_;
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    addr00bc:
                                    BindingManager.executeBindings(this,"costComponent",this.costComponent);
                                 }
                              }
                              return _loc1_;
                           }
                           §§goto(addr00bc);
                        }
                     }
                  }
                  §§goto(addr00aa);
               }
               §§goto(addr007b);
            }
         }
         §§goto(addr005e);
      }
      
      private function _ArchitectTemplate_Special_StickyNoteComponent1_i() : StickyNoteComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(_loc3_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc2_)
            {
               _loc1_.bottom = 28;
               if(_loc3_)
               {
                  _loc1_.height = 126;
                  if(!_loc2_)
                  {
                     _loc1_.tapeLeft = true;
                     if(_loc3_)
                     {
                        _loc1_.tapeRight = true;
                        if(_loc3_)
                        {
                           _loc1_.visible = false;
                           if(!_loc2_)
                           {
                              _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ArchitectTemplate_Special_Array4_c);
                              if(!_loc2_)
                              {
                                 _loc1_.id = "restrictionGroup";
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr00a1:
                                    if(!_loc1_.document)
                                    {
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          addr00c0:
                                          _loc1_.document = this;
                                          if(_loc3_)
                                          {
                                             §§goto(addr00c9);
                                          }
                                          §§goto(addr00d3);
                                       }
                                    }
                                    addr00c9:
                                    this.restrictionGroup = _loc1_;
                                    if(!_loc2_)
                                    {
                                       addr00d3:
                                       BindingManager.executeBindings(this,"restrictionGroup",this.restrictionGroup);
                                    }
                                    §§goto(addr00e0);
                                 }
                                 §§goto(addr00c0);
                              }
                           }
                           addr00e0:
                           return _loc1_;
                        }
                        §§goto(addr00a1);
                     }
                     §§goto(addr00c9);
                  }
               }
               §§goto(addr00c0);
            }
            §§goto(addr00d3);
         }
         §§goto(addr00c0);
      }
      
      private function _ArchitectTemplate_Special_Array4_c() : Array
      {
         return [this._ArchitectTemplate_Special_DynamicImageButton1_i(),this._ArchitectTemplate_Special_VGroup1_c()];
      }
      
      private function _ArchitectTemplate_Special_DynamicImageButton1_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.styleName = "featureInfoButton";
            if(_loc3_)
            {
               _loc1_.right = 8;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.top = -10;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.addEventListener("click",this.__restrictionFeatureButton_click);
                     if(!_loc2_)
                     {
                        addr0071:
                        _loc1_.id = "restrictionFeatureButton";
                        if(_loc3_)
                        {
                           addr0089:
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr0095:
                                 _loc1_.document = this;
                                 if(_loc3_)
                                 {
                                    addr009e:
                                    this.restrictionFeatureButton = _loc1_;
                                    if(_loc3_)
                                    {
                                       addr00a8:
                                       BindingManager.executeBindings(this,"restrictionFeatureButton",this.restrictionFeatureButton);
                                    }
                                    §§goto(addr00b5);
                                 }
                                 §§goto(addr00a8);
                              }
                              addr00b5:
                              return _loc1_;
                           }
                           §§goto(addr009e);
                        }
                     }
                     §§goto(addr0095);
                  }
                  §§goto(addr009e);
               }
               §§goto(addr0071);
            }
            §§goto(addr0089);
         }
         §§goto(addr0095);
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
      
      private function _ArchitectTemplate_Special_VGroup1_c() : VGroup
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
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._ArchitectTemplate_Special_PostitHeaderComponent1_i(),this._ArchitectTemplate_Special_HGroup2_c()];
                  addr004e:
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr0076);
                  }
               }
               §§goto(addr008a);
            }
            addr0076:
            if(!_loc1_.document)
            {
               if(!(_loc2_ && _loc2_))
               {
                  addr008a:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr004e);
      }
      
      private function _ArchitectTemplate_Special_PostitHeaderComponent1_i() : PostitHeaderComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:PostitHeaderComponent = new PostitHeaderComponent();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.id = "restrictionHeader";
            if(_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     _loc1_.document = this;
                     if(_loc3_ || Boolean(this))
                     {
                        addr0069:
                        this.restrictionHeader = _loc1_;
                        if(!(_loc2_ && _loc3_))
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
            }
            §§goto(addr0069);
         }
         addr0088:
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Special_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.horizontalAlign = "left";
            if(_loc3_)
            {
               _loc1_.verticalAlign = "middle";
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._ArchitectTemplate_Special_BriskImageDynaLib1_i(),this._ArchitectTemplate_Special_LocaLabel2_i()];
                  if(_loc3_ || _loc2_)
                  {
                     addr0075:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr008d);
               }
               §§goto(addr0075);
            }
            addr008d:
            return _loc1_;
         }
         §§goto(addr0075);
      }
      
      private function _ArchitectTemplate_Special_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "restriction_icon_farmland";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr0053:
                  _loc1_.id = "restrictionGfx";
                  if(!(_loc2_ && Boolean(this)))
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              addr0087:
                              this.restrictionGfx = _loc1_;
                              if(_loc3_ || _loc2_)
                              {
                                 BindingManager.executeBindings(this,"restrictionGfx",this.restrictionGfx);
                              }
                           }
                        }
                        §§goto(addr00a6);
                     }
                     §§goto(addr0087);
                  }
               }
               addr00a6:
               return _loc1_;
            }
         }
         §§goto(addr0053);
      }
      
      private function _ArchitectTemplate_Special_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc3_)
         {
            _loc1_.styleName = "miniLayerFlavourText";
            if(!_loc2_)
            {
               _loc1_.id = "restrictionName";
               if(_loc3_ || Boolean(this))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        addr0070:
                        _loc1_.document = this;
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr0081:
                           this.restrictionName = _loc1_;
                           if(!_loc2_)
                           {
                              addr008b:
                              BindingManager.executeBindings(this,"restrictionName",this.restrictionName);
                           }
                           §§goto(addr0098);
                        }
                        §§goto(addr008b);
                     }
                     addr0098:
                     return _loc1_;
                  }
                  §§goto(addr0081);
               }
               §§goto(addr0070);
            }
            §§goto(addr0081);
         }
         §§goto(addr0070);
      }
      
      private function _ArchitectTemplate_Special_VGroup2_c() : VGroup
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
               if(_loc3_)
               {
                  _loc1_.height = 300;
                  if(_loc3_)
                  {
                     _loc1_.bottom = 15;
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.verticalAlign = "top";
                        if(_loc3_ || _loc2_)
                        {
                           _loc1_.horizontalAlign = "center";
                           if(!_loc2_)
                           {
                              addr007d:
                              _loc1_.gap = 15;
                              if(_loc3_ || Boolean(this))
                              {
                                 addr009b:
                                 _loc1_.mxmlContent = [this._ArchitectTemplate_Special_DetailsCenterComponent1_i(),this._ArchitectTemplate_Special_MultistateButton1_i()];
                                 if(!_loc2_)
                                 {
                                    §§goto(addr00b1);
                                 }
                              }
                              §§goto(addr00bd);
                           }
                           §§goto(addr009b);
                        }
                        §§goto(addr00bd);
                     }
                     addr00b1:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr00bd:
                           _loc1_.document = this;
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr00bd);
               }
               §§goto(addr007d);
            }
         }
         §§goto(addr009b);
      }
      
      private function _ArchitectTemplate_Special_DetailsCenterComponent1_i() : DetailsCenterComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DetailsCenterComponent = new DetailsCenterComponent();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.id = "center";
            if(_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     _loc1_.document = this;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr0067:
                        this.center = _loc1_;
                        if(_loc2_ || Boolean(this))
                        {
                           addr0079:
                           BindingManager.executeBindings(this,"center",this.center);
                        }
                        §§goto(addr0085);
                     }
                     §§goto(addr0079);
                  }
                  addr0085:
                  return _loc1_;
               }
            }
            §§goto(addr0067);
         }
         §§goto(addr0079);
      }
      
      private function _ArchitectTemplate_Special_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.width = 204;
            if(!_loc2_)
            {
               _loc1_.imageNameLeft = "button_icon_build";
               if(!_loc2_)
               {
                  _loc1_.libNameLeft = "gui_popups_paperPopup";
                  if(!_loc2_)
                  {
                     _loc1_.id = "buildNowButton";
                     if(!_loc2_)
                     {
                        addr0062:
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr0083:
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 §§goto(addr008c);
                              }
                              §§goto(addr0096);
                           }
                        }
                        addr008c:
                        this.buildNowButton = _loc1_;
                        if(_loc3_)
                        {
                           addr0096:
                           BindingManager.executeBindings(this,"buildNowButton",this.buildNowButton);
                        }
                        §§goto(addr00a3);
                     }
                     addr00a3:
                     return _loc1_;
                  }
                  §§goto(addr0096);
               }
               §§goto(addr0062);
            }
            §§goto(addr008c);
         }
         §§goto(addr0083);
      }
      
      private function _ArchitectTemplate_Special_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.width = 220;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.height = 300;
               addr0032:
               if(_loc3_ || _loc2_)
               {
                  _loc1_.right = -4;
                  if(_loc3_)
                  {
                     _loc1_.bottom = 10;
                     if(_loc3_ || _loc3_)
                     {
                        addr0079:
                        _loc1_.mxmlContent = [this._ArchitectTemplate_Special_StickyNoteComponent2_c()];
                        if(!_loc2_)
                        {
                           addr0089:
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr0095:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr0099);
                     }
                     §§goto(addr0095);
                  }
                  addr0099:
                  return _loc1_;
               }
               §§goto(addr0079);
            }
            §§goto(addr0089);
         }
         §§goto(addr0032);
      }
      
      private function _ArchitectTemplate_Special_StickyNoteComponent2_c() : StickyNoteComponent
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
               _loc1_.height = 150;
               if(_loc3_ || Boolean(_loc1_))
               {
                  §§goto(addr003e);
               }
               §§goto(addr00a9);
            }
         }
         addr003e:
         _loc1_.bottom = 120;
         if(_loc3_ || _loc2_)
         {
            _loc1_.tapeTop = true;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.right = 15;
               if(_loc3_ || _loc3_)
               {
                  §§goto(addr008c);
               }
               §§goto(addr00b5);
            }
            §§goto(addr00a9);
         }
         addr008c:
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ArchitectTemplate_Special_Array9_c);
         if(!(_loc2_ && _loc3_))
         {
            addr00a9:
            if(!_loc1_.document)
            {
               if(!_loc2_)
               {
                  addr00b5:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Special_Array9_c() : Array
      {
         return [this._ArchitectTemplate_Special_VGroup3_i(),this._ArchitectTemplate_Special_DynamicImageButton2_i()];
      }
      
      private function _ArchitectTemplate_Special_VGroup3_i() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.horizontalCenter = 0;
            if(_loc2_ || _loc2_)
            {
               _loc1_.paddingTop = 5;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.mxmlContent = [this._ArchitectTemplate_Special_PostitHeaderComponent2_i(),this._ArchitectTemplate_Special_HGroup3_c()];
                  if(!_loc3_)
                  {
                     _loc1_.id = "effectsGroup";
                     if(!(_loc3_ && _loc3_))
                     {
                        addr0079:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              addr0099:
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 addr00a2:
                                 this.effectsGroup = _loc1_;
                                 if(_loc2_ || Boolean(_loc1_))
                                 {
                                    addr00b4:
                                    BindingManager.executeBindings(this,"effectsGroup",this.effectsGroup);
                                 }
                                 §§goto(addr00c1);
                              }
                              §§goto(addr00b4);
                           }
                           §§goto(addr00c1);
                        }
                        §§goto(addr00a2);
                     }
                     §§goto(addr0099);
                  }
               }
               §§goto(addr0079);
            }
            §§goto(addr00b4);
         }
         addr00c1:
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Special_PostitHeaderComponent2_i() : PostitHeaderComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:PostitHeaderComponent = new PostitHeaderComponent();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.horizontalCenter = 0;
            if(_loc2_)
            {
               _loc1_.id = "effectsHeader";
               if(!(_loc3_ && _loc3_))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        _loc1_.document = this;
                        if(_loc2_)
                        {
                           §§goto(addr0075);
                        }
                        §§goto(addr0087);
                     }
                  }
               }
            }
            addr0075:
            this.effectsHeader = _loc1_;
            if(_loc2_ || Boolean(_loc1_))
            {
               addr0087:
               BindingManager.executeBindings(this,"effectsHeader",this.effectsHeader);
            }
            §§goto(addr0094);
         }
         addr0094:
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Special_HGroup3_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.horizontalAlign = "center";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.horizontalCenter = 0;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.paddingTop = 10;
                  if(!_loc3_)
                  {
                     addr006f:
                     _loc1_.mxmlContent = [this._ArchitectTemplate_Special_List1_i()];
                     if(_loc2_ || _loc2_)
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
                     §§goto(addr0097);
                  }
                  §§goto(addr0087);
               }
               addr0097:
               return _loc1_;
            }
            §§goto(addr0087);
         }
         §§goto(addr006f);
      }
      
      private function _ArchitectTemplate_Special_List1_i() : List
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:List = new List();
         if(_loc2_)
         {
            _loc1_.itemRenderer = this._ArchitectTemplate_Special_ClassFactory1_c();
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.setStyle("skinClass",ArchitectImageValueSkin);
               if(_loc2_ || _loc2_)
               {
                  addr0058:
                  _loc1_.id = "effectsList";
                  if(!_loc3_)
                  {
                     §§goto(addr0063);
                  }
                  §§goto(addr0083);
               }
               addr0063:
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0083:
                     _loc1_.document = this;
                     if(_loc2_ || Boolean(this))
                     {
                        §§goto(addr0094);
                     }
                  }
                  §§goto(addr009e);
               }
               addr0094:
               this.effectsList = _loc1_;
               if(!_loc3_)
               {
                  addr009e:
                  BindingManager.executeBindings(this,"effectsList",this.effectsList);
               }
               §§goto(addr00ab);
            }
            §§goto(addr0058);
         }
         addr00ab:
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Special_ClassFactory1_c() : ClassFactory
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ClassFactory = new ClassFactory();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.generator = ArchitectImageValueItemRenderer;
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Special_DynamicImageButton2_i() : DynamicImageButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!_loc3_)
         {
            _loc1_.styleName = "featureInfoButton";
            if(_loc2_)
            {
               _loc1_.right = 0;
               if(!_loc3_)
               {
                  _loc1_.top = -10;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.addEventListener("click",this.__effectFeatureButton_click);
                     if(_loc2_)
                     {
                        _loc1_.id = "effectFeatureButton";
                        if(!_loc3_)
                        {
                           §§goto(addr006d);
                        }
                        §§goto(addr0081);
                     }
                     §§goto(addr006d);
                  }
               }
               §§goto(addr00af);
            }
            §§goto(addr0081);
         }
         addr006d:
         if(!_loc1_.document)
         {
            if(_loc2_ || Boolean(_loc1_))
            {
               addr0081:
               _loc1_.document = this;
               if(_loc2_ || Boolean(_loc1_))
               {
                  §§goto(addr009d);
               }
               §§goto(addr00af);
            }
         }
         addr009d:
         this.effectFeatureButton = _loc1_;
         if(_loc2_ || Boolean(this))
         {
            addr00af:
            BindingManager.executeBindings(this,"effectFeatureButton",this.effectFeatureButton);
         }
         return _loc1_;
      }
      
      public function __effectFeatureButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.handleEffectFeatureClick();
         }
      }
      
      public function ___ArchitectTemplate_Special_Group1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
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
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._597326554buildNowButton;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._597326554buildNowButton = param1;
                  if(_loc3_)
                  {
                     §§goto(addr0060);
                  }
                  §§goto(addr0078);
               }
               addr0060:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     addr0078:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buildNowButton",_loc2_,param1));
                  }
               }
               §§goto(addr0087);
            }
         }
         addr0087:
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
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._1364013995center = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"center",_loc2_,param1));
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
      public function get costComponent() : BuildingCostComponent
      {
         return this._1253508016costComponent;
      }
      
      public function set costComponent(param1:BuildingCostComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1253508016costComponent;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._1253508016costComponent = param1;
                  if(!_loc4_)
                  {
                     addr0058:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr007f);
                  }
                  §§goto(addr0070);
               }
            }
            addr007f:
            return;
         }
         §§goto(addr0058);
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._1768900535effectFeatureButton = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectFeatureButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr0085);
                  }
               }
               §§goto(addr0076);
            }
            addr0085:
            return;
         }
         §§goto(addr0076);
      }
      
      [Bindable(event="propertyChange")]
      public function get effectsGroup() : VGroup
      {
         return this._490397341effectsGroup;
      }
      
      public function set effectsGroup(param1:VGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._490397341effectsGroup;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._490397341effectsGroup = param1;
                  if(_loc4_ || _loc3_)
                  {
                     addr0061:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr0078:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectsGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0087);
                  }
               }
               §§goto(addr0078);
            }
            addr0087:
            return;
         }
         §§goto(addr0061);
      }
      
      [Bindable(event="propertyChange")]
      public function get effectsHeader() : PostitHeaderComponent
      {
         return this._1961361873effectsHeader;
      }
      
      public function set effectsHeader(param1:PostitHeaderComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1961361873effectsHeader;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1961361873effectsHeader = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
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
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectsHeader",_loc2_,param1));
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
      public function get effectsList() : List
      {
         return this._1678527680effectsList;
      }
      
      public function set effectsList(param1:List) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1678527680effectsList;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._1678527680effectsList = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           addr0078:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectsList",_loc2_,param1));
                        }
                     }
                     §§goto(addr0087);
                  }
               }
               §§goto(addr0078);
            }
            addr0087:
            return;
         }
         §§goto(addr0078);
      }
      
      [Bindable(event="propertyChange")]
      public function get flavorText() : LocaLabel
      {
         return this._1684755691flavorText;
      }
      
      public function set flavorText(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1684755691flavorText;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._1684755691flavorText = param1;
                  if(!_loc3_)
                  {
                     addr0059:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavorText",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0059);
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._188635812restrictionFeatureButton = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr0057);
                  }
                  §§goto(addr0066);
               }
               addr0057:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr0066:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionFeatureButton",_loc2_,param1));
                  }
               }
               §§goto(addr0075);
            }
         }
         addr0075:
      }
      
      [Bindable(event="propertyChange")]
      public function get restrictionGfx() : BriskImageDynaLib
      {
         return this._294445069restrictionGfx;
      }
      
      public function set restrictionGfx(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._294445069restrictionGfx;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  addr004c:
                  this._294445069restrictionGfx = param1;
                  if(!_loc4_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionGfx",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0076);
               }
               §§goto(addr0057);
            }
            addr0076:
            return;
         }
         §§goto(addr004c);
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
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._505777645restrictionGroup = param1;
                  if(!_loc3_)
                  {
                     addr004b:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr0063:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0072);
                  }
               }
               §§goto(addr0063);
            }
            addr0072:
            return;
         }
         §§goto(addr004b);
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
                  if(!_loc4_)
                  {
                     §§goto(addr0057);
                  }
                  §§goto(addr0067);
               }
               addr0057:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr0067:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionHeader",_loc2_,param1));
                  }
               }
               §§goto(addr0076);
            }
            addr0076:
            return;
         }
         §§goto(addr0057);
      }
      
      [Bindable(event="propertyChange")]
      public function get restrictionName() : LocaLabel
      {
         return this._538066039restrictionName;
      }
      
      public function set restrictionName(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._538066039restrictionName;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._538066039restrictionName = param1;
                  if(_loc4_ || _loc3_)
                  {
                     addr0060:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionName",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0060);
            }
         }
         addr007f:
      }
   }
}

