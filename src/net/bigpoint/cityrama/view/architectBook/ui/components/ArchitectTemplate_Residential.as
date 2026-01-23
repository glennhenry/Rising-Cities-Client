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
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.architecturalBook.vo.BlueprintImageValueVO;
   import net.bigpoint.cityrama.model.architecturalBook.vo.BlueprintVo;
   import net.bigpoint.cityrama.model.architecturalBook.vo.CenterItemDataVo;
   import net.bigpoint.cityrama.model.architecturalBook.vo.VerifiedBlueprintVo;
   import net.bigpoint.cityrama.model.detailViews.MainLayerProxy;
   import net.bigpoint.cityrama.view.architectBook.ui.skins.ArchitectResidentListSkin;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BuildingConstructionStepsComponent;
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
   
   public class ArchitectTemplate_Residential extends Group
   {
      
      public static const NAME:String = "ArchitectTemplate_Residential";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || ArchitectTemplate_Residential)
      {
         NAME = "ArchitectTemplate_Residential";
      }
      
      private var _597326554buildNowButton:MultistateButton;
      
      private var _1364013995center:DetailsCenterComponent;
      
      private var _1976000313constructionStepsComponent:BuildingConstructionStepsComponent;
      
      private var _1253508016costComponent:BuildingCostComponent;
      
      private var _1163225682cycleLabel:LocaLabel;
      
      private var _2034685672cycleLengthLabel:LocaLabel;
      
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
      
      private var _1419001267outcomeGroup:StickyNoteComponent;
      
      private var _1023176577outcomeHeader:PostitHeaderComponent;
      
      private var _844949286outputImage:BriskImageDynaLib;
      
      private var _842535309outputLabel:LocaLabel;
      
      private var _414639265possibleOutcome:HGroup;
      
      private var _276043379residentComponent:StickyNoteComponent;
      
      private var _814154328residentFeatureButton:DynamicImageButton;
      
      private var _1013833725residentHeader:PostitHeaderComponent;
      
      private var _1961678079residentInfoGroup:HGroup;
      
      private var _311670258residentList:List;
      
      private var _517409340residentTotaLabel:LocaLabel;
      
      private var _2124045603residents:HGroup;
      
      private var _188635812restrictionFeatureButton:DynamicImageButton;
      
      private var _294445069restrictionGfx:BriskImageDynaLib;
      
      private var _505777645restrictionGroup:StickyNoteComponent;
      
      private var _1516951929restrictionHeader:PostitHeaderComponent;
      
      private var _538066039restrictionName:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:BlueprintVo;
      
      private var _veryData:VerifiedBlueprintVo;
      
      public function ArchitectTemplate_Residential()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
            if(_loc1_)
            {
               mx_internal::_document = this;
               if(!_loc2_)
               {
                  this.percentWidth = 100;
                  if(!(_loc2_ && _loc1_))
                  {
                     addr004b:
                     this.percentHeight = 100;
                     if(!_loc2_)
                     {
                        §§goto(addr005f);
                     }
                  }
                  §§goto(addr0089);
               }
               §§goto(addr005f);
            }
            §§goto(addr004b);
         }
         addr005f:
         this.mxmlContent = [this._ArchitectTemplate_Residential_HGroup1_c(),this._ArchitectTemplate_Residential_Group2_c(),this._ArchitectTemplate_Residential_VGroup2_c(),this._ArchitectTemplate_Residential_Group3_c()];
         if(_loc1_ || Boolean(this))
         {
            addr0089:
            this.addEventListener("creationComplete",this.___ArchitectTemplate_Residential_Group1_creationComplete);
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.moduleFactory = param1;
            if(!(_loc3_ && Boolean(this)))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr004a);
                  }
               }
               this.__moduleFactoryInitialized = true;
               §§goto(addr005d);
            }
            addr004a:
            return;
         }
         addr005d:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super.initialize();
         }
      }
      
      protected function handleCreationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!(_loc4_ && _loc2_))
         {
            this.effectHeader.text = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.effects");
            if(_loc5_ || Boolean(this))
            {
               this.outcomeHeader.text = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.rentoutcome");
            }
         }
         §§push(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.residents"));
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            this.residentHeader.text = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.residents");
            if(_loc5_ || _loc2_)
            {
               this.restrictionHeader.text = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.buildableLand");
               if(!_loc4_)
               {
                  this.buildNowButton.addEventListener(MouseEvent.CLICK,this.handleBuildClick);
                  if(_loc5_ || Boolean(this))
                  {
                     addr00d3:
                     this.residentFeatureButton.visible = this.residentFeatureButton.enabled = false;
                     if(_loc5_)
                     {
                        this.restrictionFeatureButton.enabled = this.restrictionFeatureButton.visible = false;
                        if(_loc5_ || Boolean(param1))
                        {
                           addr0119:
                           this.setTapes();
                           if(_loc5_ || _loc2_)
                           {
                              this.setupCenter();
                              if(_loc5_)
                              {
                                 addr0139:
                                 this.updateAll();
                              }
                           }
                        }
                        §§goto(addr013f);
                     }
                     §§goto(addr0139);
                  }
                  §§goto(addr013f);
               }
               §§goto(addr0119);
            }
            addr013f:
            return;
         }
         §§goto(addr00d3);
      }
      
      private function handleBuildClick(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            dispatchEvent(new Event("buildNow"));
         }
      }
      
      private function handleEffectFeatureClick() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            dispatchEvent(new Event("effectFeatureClick"));
         }
      }
      
      private function handleResidentFeatureClick() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            dispatchEvent(new Event("residentFeatureClick"));
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
         if(_loc3_ || Boolean(param1))
         {
            this._data = param1.bluePrintVO;
            if(_loc3_ || _loc3_)
            {
               §§goto(addr0041);
            }
            §§goto(addr004b);
         }
         addr0041:
         this._veryData = param1;
         if(!_loc2_)
         {
            addr004b:
            invalidateProperties();
         }
      }
      
      private function updateAll() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §§push(this.flavorText);
            §§push(LocaUtils);
            §§push("rcl.playfielditems.shortdescription");
            §§push("rcl.playfielditems.shortdescription.");
            if(!(_loc2_ && Boolean(this)))
            {
               §§push(§§pop() + this._data.configObj.localeId);
            }
            §§pop().text = §§pop().getString(§§pop(),§§pop());
            if(_loc3_ || _loc3_)
            {
               §§push(this._veryData.buildableLandVO.visualName);
               if(_loc3_)
               {
                  if(§§pop() != "")
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        §§push(this.restrictionGfx);
                        if(!(_loc2_ && Boolean(this)))
                        {
                           §§push(this._veryData);
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              §§push(§§pop().buildableLandVO);
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§push(§§pop().visualLibName);
                                 if(_loc3_ || Boolean(this))
                                 {
                                    §§pop().dynaLibName = §§pop();
                                    if(!(_loc2_ && Boolean(_loc1_)))
                                    {
                                       §§push(this.restrictionGfx);
                                       if(!_loc2_)
                                       {
                                          §§push(this._veryData);
                                          if(_loc3_ || Boolean(_loc1_))
                                          {
                                             §§push(§§pop().buildableLandVO);
                                             if(_loc3_ || _loc3_)
                                             {
                                                §§push(§§pop().visualName);
                                                if(_loc3_)
                                                {
                                                   §§pop().dynaBmpSourceName = §§pop();
                                                   if(_loc3_ || Boolean(this))
                                                   {
                                                      addr0110:
                                                      this.restrictionGfx.toolTip = this._veryData.buildableLandVO.toolTip;
                                                      addr010e:
                                                      addr010b:
                                                      addr0107:
                                                      if(!(_loc2_ && Boolean(this)))
                                                      {
                                                         this.restrictionName.text = this._veryData.buildableLandVO.descriptionText;
                                                         if(_loc3_ || Boolean(this))
                                                         {
                                                            §§push(this.restrictionGroup);
                                                            if(!(_loc2_ && Boolean(_loc1_)))
                                                            {
                                                               §§push(true);
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  §§pop().visible = §§pop();
                                                                  if(!_loc2_)
                                                                  {
                                                                     addr017a:
                                                                     §§push(this._data);
                                                                     if(_loc3_ || Boolean(_loc1_))
                                                                     {
                                                                        §§push(§§pop().state);
                                                                        if(!(_loc2_ && _loc2_))
                                                                        {
                                                                           §§push(BlueprintVo.STATE_FULLY_CONSTRUCTED_AVAILABLE);
                                                                           if(_loc3_)
                                                                           {
                                                                              §§push(§§pop() == §§pop());
                                                                              if(!(_loc2_ && Boolean(_loc1_)))
                                                                              {
                                                                                 var _temp_20:* = §§pop();
                                                                                 §§push(_temp_20);
                                                                                 if(!_temp_20)
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       §§pop();
                                                                                       if(!(_loc2_ && _loc2_))
                                                                                       {
                                                                                          addr01cc:
                                                                                          §§push(this._data);
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             addr01de:
                                                                                             addr01d8:
                                                                                             addr01d5:
                                                                                             §§push(§§pop().state == BlueprintVo.STATE_BUY_MORE_WITH_RC);
                                                                                             if(!(_loc2_ && _loc3_))
                                                                                             {
                                                                                                addr01ec:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      addr01f5:
                                                                                                      §§push(this.costComponent);
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         §§push("noCosts");
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            §§pop().currentState = §§pop();
                                                                                                            if(_loc3_ || Boolean(_loc1_))
                                                                                                            {
                                                                                                               §§push(this.costComponent);
                                                                                                               if(!_loc2_)
                                                                                                               {
                                                                                                                  addr021f:
                                                                                                                  §§pop().invalidateProperties();
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  addr026f:
                                                                                                                  addr0276:
                                                                                                                  addr0273:
                                                                                                                  if(!this._data.hasConstructionSteps)
                                                                                                                  {
                                                                                                                     if(_loc3_ || Boolean(this))
                                                                                                                     {
                                                                                                                        addr0287:
                                                                                                                        §§push(this.constructionStepsComponent);
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           §§push("noSteps");
                                                                                                                           if(_loc3_ || _loc3_)
                                                                                                                           {
                                                                                                                              §§pop().currentState = §§pop();
                                                                                                                              if(!(_loc3_ || _loc3_))
                                                                                                                              {
                                                                                                                                 addr02cc:
                                                                                                                                 this.constructionStepsComponent.setData(this._veryData.materialVOList);
                                                                                                                                 addr02c8:
                                                                                                                                 if(!(_loc2_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    addr02e4:
                                                                                                                                    this.setEffects();
                                                                                                                                    if(!_loc2_)
                                                                                                                                    {
                                                                                                                                       addr02ef:
                                                                                                                                       §§push(this.outputLabel);
                                                                                                                                       §§push(this._data.minOutput + "  -  ");
                                                                                                                                       if(!_loc2_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + this._data.maxOutput);
                                                                                                                                       }
                                                                                                                                       §§pop().text = §§pop();
                                                                                                                                    }
                                                                                                                                    addr0386:
                                                                                                                                    var _loc1_:* = this._data.baseOutPutType;
                                                                                                                                    if(!(_loc2_ && Boolean(this)))
                                                                                                                                    {
                                                                                                                                       §§push(ServerResConst.RESOURCE_PRODUCTIONPOINTS);
                                                                                                                                       if(_loc3_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc1_);
                                                                                                                                          if(!(_loc2_ && Boolean(this)))
                                                                                                                                          {
                                                                                                                                             if(§§pop() === §§pop())
                                                                                                                                             {
                                                                                                                                                if(_loc3_ || Boolean(_loc1_))
                                                                                                                                                {
                                                                                                                                                   addr03c5:
                                                                                                                                                   §§push(0);
                                                                                                                                                   if(_loc2_ && Boolean(this))
                                                                                                                                                   {
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr0401:
                                                                                                                                                   §§push(1);
                                                                                                                                                   if(_loc3_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§push(ServerResConst.RESOURCE_EDUCATIONPOINTS);
                                                                                                                                                if(!(_loc2_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   §§push(_loc1_);
                                                                                                                                                   if(_loc3_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop() === §§pop())
                                                                                                                                                      {
                                                                                                                                                         if(_loc3_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr0401);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            addr041e:
                                                                                                                                                            §§push(2);
                                                                                                                                                            if(_loc2_)
                                                                                                                                                            {
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0435);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr041a);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr041a:
                                                                                                                                                   §§goto(addr0419);
                                                                                                                                                }
                                                                                                                                                addr0419:
                                                                                                                                                if(ServerResConst.RESOURCE_VIRTUALCURRENCY === _loc1_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr041e);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§push(3);
                                                                                                                                                }
                                                                                                                                                §§goto(addr0435);
                                                                                                                                             }
                                                                                                                                             addr0435:
                                                                                                                                             switch(§§pop())
                                                                                                                                             {
                                                                                                                                                case 0:
                                                                                                                                                   §§push(this.outputImage);
                                                                                                                                                   if(!(_loc2_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      §§push("pp_icon");
                                                                                                                                                      if(!(_loc2_ && Boolean(_loc1_)))
                                                                                                                                                      {
                                                                                                                                                         §§pop().dynaBmpSourceName = §§pop();
                                                                                                                                                         if(!_loc3_)
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         addr044d:
                                                                                                                                                         this.residentTotaLabel.text = String(this._data.configObj.maxResidents);
                                                                                                                                                         if(_loc3_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            this.residentList.dataProvider = this._veryData.residentVoList;
                                                                                                                                                            if(_loc3_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               addr0497:
                                                                                                                                                               this.cycleLabel.text = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.every");
                                                                                                                                                               if(_loc2_)
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               this.cycleLengthLabel.text = LocaUtils.getDuration(this._data.runtime);
                                                                                                                                                               if(_loc2_)
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            this.setTooltips();
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         addr0353:
                                                                                                                                                         §§pop().dynaBmpSourceName = §§pop();
                                                                                                                                                         if(!(_loc2_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr044d);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr0497);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr034b:
                                                                                                                                                      §§push("ep_icon");
                                                                                                                                                      if(_loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr0353);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         addr036e:
                                                                                                                                                         §§pop().dynaBmpSourceName = §§pop();
                                                                                                                                                         if(_loc2_ && Boolean(this))
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr044d);
                                                                                                                                                   }
                                                                                                                                                case 1:
                                                                                                                                                   §§push(this.outputImage);
                                                                                                                                                   if(_loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr034b);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr036b:
                                                                                                                                                      §§push("layer_cc_icon");
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr036e);
                                                                                                                                                case 2:
                                                                                                                                                   §§goto(addr036b);
                                                                                                                                                   §§push(this.outputImage);
                                                                                                                                                default:
                                                                                                                                                   §§goto(addr044d);
                                                                                                                                             }
                                                                                                                                             return;
                                                                                                                                          }
                                                                                                                                          §§goto(addr041a);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0419);
                                                                                                                                    }
                                                                                                                                    §§goto(addr03c5);
                                                                                                                                 }
                                                                                                                                 §§goto(addr02ef);
                                                                                                                              }
                                                                                                                              §§goto(addr02e4);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr02c0:
                                                                                                                              §§pop().currentState = §§pop();
                                                                                                                              if(_loc3_)
                                                                                                                              {
                                                                                                                                 §§goto(addr02c8);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr0386);
                                                                                                                        }
                                                                                                                        §§goto(addr02cc);
                                                                                                                     }
                                                                                                                     §§goto(addr02ef);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(this.constructionStepsComponent);
                                                                                                                     if(!_loc2_)
                                                                                                                     {
                                                                                                                        §§goto(addr02c0);
                                                                                                                        §§push("hasSteps");
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr02cc);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr024b:
                                                                                                                  §§pop().currentState = "hasCosts";
                                                                                                                  addr0248:
                                                                                                                  if(!(_loc2_ && _loc2_))
                                                                                                                  {
                                                                                                                     addr025f:
                                                                                                                     this.costComponent.setData(this._veryData.costVOList);
                                                                                                                     addr025b:
                                                                                                                     if(!_loc2_)
                                                                                                                     {
                                                                                                                        §§goto(addr026f);
                                                                                                                     }
                                                                                                                     §§goto(addr02e4);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr0287);
                                                                                                            }
                                                                                                            §§goto(addr026f);
                                                                                                         }
                                                                                                         §§goto(addr024b);
                                                                                                      }
                                                                                                      §§goto(addr021f);
                                                                                                   }
                                                                                                   §§goto(addr02c8);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(this.costComponent);
                                                                                                   if(_loc3_ || Boolean(this))
                                                                                                   {
                                                                                                      §§goto(addr0248);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr025f);
                                                                                             }
                                                                                             §§goto(addr0276);
                                                                                          }
                                                                                          §§goto(addr0273);
                                                                                       }
                                                                                       §§goto(addr026f);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr01ec);
                                                                              }
                                                                              §§goto(addr0276);
                                                                           }
                                                                           §§goto(addr01de);
                                                                        }
                                                                        §§goto(addr01d8);
                                                                     }
                                                                     §§goto(addr01d5);
                                                                  }
                                                                  §§goto(addr026f);
                                                               }
                                                               else
                                                               {
                                                                  addr016b:
                                                                  §§pop().visible = §§pop();
                                                                  if(_loc3_ || _loc3_)
                                                                  {
                                                                     §§goto(addr017a);
                                                                  }
                                                               }
                                                               §§goto(addr025b);
                                                            }
                                                            else
                                                            {
                                                               addr016a:
                                                               §§push(false);
                                                            }
                                                            §§goto(addr016b);
                                                         }
                                                         §§goto(addr02e4);
                                                      }
                                                      §§goto(addr01f5);
                                                   }
                                                   §§goto(addr02e4);
                                                }
                                                §§goto(addr0110);
                                             }
                                             §§goto(addr010e);
                                          }
                                          §§goto(addr010b);
                                       }
                                       §§goto(addr0107);
                                    }
                                    §§goto(addr02c8);
                                 }
                                 §§goto(addr0110);
                              }
                              §§goto(addr010e);
                           }
                           §§goto(addr010b);
                        }
                        §§goto(addr0107);
                     }
                     §§goto(addr017a);
                  }
                  else
                  {
                     §§push(this.restrictionGroup);
                  }
                  §§goto(addr016a);
               }
               §§goto(addr01d8);
            }
            §§goto(addr01cc);
         }
         §§goto(addr017a);
      }
      
      public function setSubData(param1:VerifiedBlueprintVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this._veryData = param1;
            if(!(_loc3_ && _loc2_))
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
         if(_loc3_ || Boolean(this))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(this.center);
            if(!(_loc4_ && _loc1_))
            {
               §§push("tooltipLeftScroll");
               if(!(_loc4_ && Boolean(this)))
               {
                  §§push(_loc1_);
                  if(_loc3_ || _loc3_)
                  {
                     §§pop().setStyle(§§pop(),§§pop());
                     if(!_loc4_)
                     {
                        addr0085:
                        this.center.setStyle("tooltipRightScroll",_loc2_);
                        addr0084:
                        addr0081:
                        if(!_loc4_)
                        {
                           this.possibleOutcome.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.outcome");
                           if(_loc3_)
                           {
                              this.residents.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.residents.total");
                              if(_loc3_ || _loc2_)
                              {
                                 addr00c4:
                                 §§push(this._data);
                                 if(_loc3_ || _loc1_)
                                 {
                                    §§push(§§pop().permissionBuyable);
                                    if(!(_loc4_ && _loc1_))
                                    {
                                       §§push(§§pop());
                                       if(!(_loc4_ && Boolean(this)))
                                       {
                                          var _temp_9:* = §§pop();
                                          §§push(_temp_9);
                                          if(_temp_9)
                                          {
                                             if(!(_loc4_ && _loc1_))
                                             {
                                                §§goto(addr0113);
                                             }
                                             §§goto(addr0137);
                                          }
                                       }
                                       §§goto(addr0138);
                                    }
                                    addr0113:
                                    §§pop();
                                    if(!(_loc4_ && _loc1_))
                                    {
                                       addr0138:
                                       addr0126:
                                       §§push(this._data.locked);
                                       if(!(_loc4_ && _loc1_))
                                       {
                                          addr0137:
                                          §§push(!§§pop());
                                       }
                                       if(§§pop())
                                       {
                                          if(_loc3_)
                                          {
                                             addr0141:
                                             this.effectFeatureButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.feature.effects");
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                this.residentFeatureButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.feature.residents");
                                                if(_loc3_)
                                                {
                                                   addr0177:
                                                   this.energyGroup.toolTip = LocaUtils.getString("rcl.tooltips.residentialBook","rcl.tooltips.residentialBook.effects.energy");
                                                   if(_loc3_ || Boolean(this))
                                                   {
                                                      addr01a3:
                                                      this.moodGroup.toolTip = LocaUtils.getString("rcl.tooltips.residentialBook","rcl.tooltips.residentialBook.effects.mood");
                                                      if(!(_loc4_ && _loc1_))
                                                      {
                                                         addr01c2:
                                                         this.restrictionFeatureButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.feature.restrictions");
                                                      }
                                                      §§goto(addr01d3);
                                                   }
                                                   §§goto(addr01c2);
                                                }
                                                §§goto(addr01d3);
                                             }
                                          }
                                          §§goto(addr01a3);
                                       }
                                       §§goto(addr0141);
                                    }
                                    addr01d3:
                                    return;
                                 }
                                 §§goto(addr0126);
                              }
                           }
                           §§goto(addr01a3);
                        }
                     }
                     §§goto(addr0177);
                  }
                  §§goto(addr0085);
               }
               §§goto(addr0084);
            }
            §§goto(addr0081);
         }
         §§goto(addr00c4);
      }
      
      override public function get name() : String
      {
         return NAME;
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super.commitProperties();
            if(!_loc2_)
            {
               addr0031:
               this.setupCenter();
               if(_loc1_)
               {
                  this.setTooltips();
                  if(!_loc2_)
                  {
                     addr0047:
                     this.updateAll();
                  }
                  §§goto(addr004d);
               }
               §§goto(addr0047);
            }
            addr004d:
            return;
         }
         §§goto(addr0031);
      }
      
      private function setupCenter() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!(_loc5_ && _loc3_))
         {
            §§push(this._data);
            if(_loc4_)
            {
               §§push(§§pop().state);
               if(!(_loc5_ && _loc2_))
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
                              if(_loc4_)
                              {
                                 §§pop().enabled = §§pop();
                                 if(_loc4_)
                                 {
                                    §§push(this.buildNowButton);
                                    if(!_loc5_)
                                    {
                                       §§push(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.button.place.capital"));
                                       if(!_loc5_)
                                       {
                                          §§pop().label = §§pop();
                                          if(_loc4_)
                                          {
                                             §§push(this.buildNowButton);
                                             if(!_loc5_)
                                             {
                                                §§push(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.button.place.tooltip"));
                                                if(!_loc5_)
                                                {
                                                   §§pop().toolTip = §§pop();
                                                   if(_loc4_)
                                                   {
                                                      §§push(this.buildNowButton);
                                                      if(!(_loc5_ && _loc2_))
                                                      {
                                                         §§push("button_icon_build");
                                                         if(!(_loc5_ && _loc1_))
                                                         {
                                                            §§pop().imageNameLeft = §§pop();
                                                            if(!_loc5_)
                                                            {
                                                               addr00f1:
                                                               §§push(this.buildNowButton);
                                                               if(!_loc5_)
                                                               {
                                                                  §§push("gui_popups_paperPopup");
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     addr010c:
                                                                     §§pop().libNameLeft = §§pop();
                                                                     if(_loc4_ || _loc3_)
                                                                     {
                                                                        §§push(this.buildNowButton);
                                                                        if(!(_loc5_ && _loc1_))
                                                                        {
                                                                           §§push(this.buildNowButton);
                                                                           if(_loc4_ || _loc2_)
                                                                           {
                                                                              §§push("");
                                                                              if(!_loc5_)
                                                                              {
                                                                                 var _temp_11:* = §§pop();
                                                                                 §§push(_temp_11);
                                                                                 §§push(_temp_11);
                                                                                 if(_loc4_ || Boolean(this))
                                                                                 {
                                                                                    var _loc3_:* = §§pop();
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       §§pop().libNameRight = §§pop();
                                                                                       if(!(_loc5_ && _loc2_))
                                                                                       {
                                                                                          §§push(_loc3_);
                                                                                          if(!(_loc5_ && _loc3_))
                                                                                          {
                                                                                             if(_loc4_ || _loc2_)
                                                                                             {
                                                                                                addr018f:
                                                                                                §§pop().imageNameRight = §§pop();
                                                                                                if(_loc5_ && Boolean(this))
                                                                                                {
                                                                                                   addr02cf:
                                                                                                   §§push(this.buildNowButton);
                                                                                                   if(_loc4_ || _loc1_)
                                                                                                   {
                                                                                                      addr02e1:
                                                                                                      §§push(true);
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         addr02e8:
                                                                                                         §§pop().showSparkle = §§pop();
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            §§push(this.buildNowButton);
                                                                                                            if(_loc4_ || Boolean(this))
                                                                                                            {
                                                                                                               §§push(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.button.buyPermission.tooltip"));
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  addr0314:
                                                                                                                  §§pop().toolTip = §§pop();
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     addr03a2:
                                                                                                                     §§push(this.buildNowButton);
                                                                                                                     if(_loc4_ || _loc3_)
                                                                                                                     {
                                                                                                                        addr03b4:
                                                                                                                        §§push(this.buildNowButton);
                                                                                                                        if(_loc4_ || _loc3_)
                                                                                                                        {
                                                                                                                           addr03c6:
                                                                                                                           §§push(Boolean(§§pop().enabled));
                                                                                                                           if(_loc4_ || Boolean(this))
                                                                                                                           {
                                                                                                                              var _temp_22:* = §§pop();
                                                                                                                              §§push(_temp_22);
                                                                                                                              §§push(_temp_22);
                                                                                                                              if(!(_loc5_ && _loc3_))
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    if(!_loc5_)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       if(!(_loc5_ && _loc1_))
                                                                                                                                       {
                                                                                                                                          addr0400:
                                                                                                                                          §§push(this._data);
                                                                                                                                          if(_loc4_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().locked);
                                                                                                                                             if(_loc4_)
                                                                                                                                             {
                                                                                                                                                addr0413:
                                                                                                                                                §§push(!§§pop());
                                                                                                                                                if(!_loc5_)
                                                                                                                                                {
                                                                                                                                                   addr041a:
                                                                                                                                                   §§pop().enabled = §§pop();
                                                                                                                                                   if(_loc4_)
                                                                                                                                                   {
                                                                                                                                                      addr0423:
                                                                                                                                                      §§push(this.buildNowButton);
                                                                                                                                                      if(!(_loc5_ && Boolean(this)))
                                                                                                                                                      {
                                                                                                                                                         addr0435:
                                                                                                                                                         §§push(this._data);
                                                                                                                                                         if(!_loc5_)
                                                                                                                                                         {
                                                                                                                                                            addr043f:
                                                                                                                                                            §§push(§§pop().userCanAfford);
                                                                                                                                                            if(!(_loc5_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               §§push(!§§pop());
                                                                                                                                                               if(!(_loc5_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  var _temp_28:* = §§pop();
                                                                                                                                                                  §§push(_temp_28);
                                                                                                                                                                  §§push(_temp_28);
                                                                                                                                                                  if(!_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc4_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           addr0478:
                                                                                                                                                                           §§pop();
                                                                                                                                                                           if(!(_loc5_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              addr048b:
                                                                                                                                                                              addr0487:
                                                                                                                                                                              §§push(Boolean(this.buildNowButton.enabled));
                                                                                                                                                                              if(!_loc5_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr0495:
                                                                                                                                                                                 var _temp_31:* = §§pop();
                                                                                                                                                                                 addr0496:
                                                                                                                                                                                 §§push(_temp_31);
                                                                                                                                                                                 if(_temp_31)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc5_ && _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr04a8:
                                                                                                                                                                                       §§pop();
                                                                                                                                                                                       addr04a9:
                                                                                                                                                                                       addr04ad:
                                                                                                                                                                                       addr04b0:
                                                                                                                                                                                       §§push(this._data.state == BlueprintVo.STATE_FULLY_CONSTRUCTED_AVAILABLE);
                                                                                                                                                                                       if(!_loc5_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr04bd:
                                                                                                                                                                                          §§push(!§§pop());
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§pop().showPlus = §§pop();
                                                                                                                                                                                 addr04c1:
                                                                                                                                                                                 var _loc1_:CenterItemDataVo = new CenterItemDataVo();
                                                                                                                                                                                 var _loc2_:Boolean = false;
                                                                                                                                                                                 if(_loc4_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this._data);
                                                                                                                                                                                    if(!_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().permissionBuyable);
                                                                                                                                                                                       if(_loc4_ || Boolean(this))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc4_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr04fd:
                                                                                                                                                                                                if(this._data.permission.permissionsBought < this._data.permission.config.buyCap)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc5_ && _loc2_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr0530:
                                                                                                                                                                                                      _loc2_ = true;
                                                                                                                                                                                                      if(!_loc5_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr0537:
                                                                                                                                                                                                         _loc1_.blueprintVO = this._data;
                                                                                                                                                                                                         if(!_loc5_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            this.center.data = _loc1_;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   return;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr0537);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr0530);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr04fd);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr0537);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr04bd);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr04a9);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr0495);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr0496);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr04a8);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr04ad);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr04a9);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr04c1);
                                                                                                                                                }
                                                                                                                                                §§goto(addr0495);
                                                                                                                                             }
                                                                                                                                             §§goto(addr0478);
                                                                                                                                          }
                                                                                                                                          §§goto(addr043f);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0435);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0413);
                                                                                                                                 }
                                                                                                                                 §§goto(addr041a);
                                                                                                                              }
                                                                                                                              §§goto(addr0496);
                                                                                                                           }
                                                                                                                           §§goto(addr04a8);
                                                                                                                        }
                                                                                                                        §§goto(addr048b);
                                                                                                                     }
                                                                                                                     §§goto(addr0487);
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr039a:
                                                                                                                  §§pop().toolTip = §§pop();
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     §§goto(addr03a2);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr04c1);
                                                                                                            }
                                                                                                            §§goto(addr0400);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr0355:
                                                                                                            §§push(this.buildNowButton);
                                                                                                            if(_loc4_ || Boolean(this))
                                                                                                            {
                                                                                                               addr0367:
                                                                                                               §§push(false);
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  addr036e:
                                                                                                                  §§pop().showSparkle = §§pop();
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     addr0377:
                                                                                                                     §§push(this.buildNowButton);
                                                                                                                     if(_loc4_ || _loc3_)
                                                                                                                     {
                                                                                                                        addr0389:
                                                                                                                        §§push(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.button.buy.tooltip"));
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           §§goto(addr039a);
                                                                                                                        }
                                                                                                                        §§goto(addr04b0);
                                                                                                                     }
                                                                                                                     §§goto(addr0400);
                                                                                                                  }
                                                                                                                  §§goto(addr0423);
                                                                                                               }
                                                                                                               §§goto(addr04bd);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr0435);
                                                                                                      }
                                                                                                      §§goto(addr0413);
                                                                                                   }
                                                                                                   §§goto(addr0389);
                                                                                                }
                                                                                                §§goto(addr03a2);
                                                                                             }
                                                                                             §§goto(addr0314);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr0244:
                                                                                             if(_loc4_ || Boolean(this))
                                                                                             {
                                                                                                §§pop().imageNameLeft = §§pop();
                                                                                                if(!(_loc5_ && Boolean(this)))
                                                                                                {
                                                                                                   §§push(this._data);
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      §§push(§§pop().state);
                                                                                                      if(!(_loc5_ && _loc2_))
                                                                                                      {
                                                                                                         addr0280:
                                                                                                         §§push(BlueprintVo.STATE_BUY_MORE_WITH_RC);
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            addr0299:
                                                                                                            if(§§pop() == §§pop())
                                                                                                            {
                                                                                                               if(!(_loc5_ && Boolean(_loc1_)))
                                                                                                               {
                                                                                                                  §§push(this.buildNowButton);
                                                                                                                  if(!(_loc5_ && _loc3_))
                                                                                                                  {
                                                                                                                     addr02bd:
                                                                                                                     §§push("dd_button_icon");
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        addr02c6:
                                                                                                                        §§pop().imageNameRight = §§pop();
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           §§goto(addr02cf);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr0344:
                                                                                                                        §§pop().imageNameRight = §§pop();
                                                                                                                        if(_loc4_ || _loc2_)
                                                                                                                        {
                                                                                                                           §§goto(addr0355);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr03a2);
                                                                                                                  }
                                                                                                                  §§goto(addr04a9);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr032d:
                                                                                                               addr0327:
                                                                                                               addr0324:
                                                                                                               if(this._data.state == BlueprintVo.STATE_PERMISSION_AVAILABLE)
                                                                                                               {
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     addr0337:
                                                                                                                     §§push(this.buildNowButton);
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        addr0341:
                                                                                                                        §§goto(addr0344);
                                                                                                                        §§push("layer_cc_icon");
                                                                                                                     }
                                                                                                                     §§goto(addr0400);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr03a2);
                                                                                                         }
                                                                                                         §§goto(addr032d);
                                                                                                      }
                                                                                                      §§goto(addr0327);
                                                                                                   }
                                                                                                   §§goto(addr0324);
                                                                                                }
                                                                                                §§goto(addr04c1);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr04b0);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr0243:
                                                                                          §§push(_loc3_);
                                                                                       }
                                                                                       §§goto(addr0244);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr0240:
                                                                                       §§pop().libNameLeft = §§pop();
                                                                                    }
                                                                                    §§goto(addr0243);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr023f:
                                                                                    _loc3_ = §§pop();
                                                                                 }
                                                                                 §§goto(addr0240);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr023e:
                                                                                 var _temp_43:* = §§pop();
                                                                                 §§push(_temp_43);
                                                                                 §§push(_temp_43);
                                                                              }
                                                                              §§goto(addr023f);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr023c:
                                                                              §§push("");
                                                                           }
                                                                           §§goto(addr023e);
                                                                        }
                                                                        §§goto(addr02bd);
                                                                     }
                                                                     §§goto(addr0377);
                                                                  }
                                                                  §§goto(addr0344);
                                                               }
                                                               §§goto(addr02bd);
                                                            }
                                                            §§goto(addr0377);
                                                         }
                                                         §§goto(addr010c);
                                                      }
                                                      §§goto(addr0367);
                                                   }
                                                   §§goto(addr0337);
                                                }
                                                §§goto(addr018f);
                                             }
                                             else
                                             {
                                                addr01ae:
                                                §§push(true);
                                                if(!_loc5_)
                                                {
                                                   §§pop().enabled = §§pop();
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      §§push(this.buildNowButton);
                                                      if(_loc4_)
                                                      {
                                                         addr01d0:
                                                         §§push(LocaUtils.getThousendSeperatedNumber(this._data.price));
                                                         if(!(_loc5_ && Boolean(this)))
                                                         {
                                                            §§pop().label = §§pop();
                                                            if(_loc4_ || _loc2_)
                                                            {
                                                               §§push(this.buildNowButton);
                                                               if(_loc4_)
                                                               {
                                                                  §§push("gui_resources_icons");
                                                                  if(!(_loc5_ && _loc3_))
                                                                  {
                                                                     §§pop().libNameRight = §§pop();
                                                                     if(_loc4_)
                                                                     {
                                                                        addr0220:
                                                                        §§push(this.buildNowButton);
                                                                        if(!_loc5_)
                                                                        {
                                                                           addr022a:
                                                                           §§push(this.buildNowButton);
                                                                           if(_loc4_ || Boolean(this))
                                                                           {
                                                                              §§goto(addr023c);
                                                                           }
                                                                           §§goto(addr03c6);
                                                                        }
                                                                        §§goto(addr0341);
                                                                     }
                                                                     §§goto(addr04c1);
                                                                  }
                                                                  §§goto(addr02c6);
                                                               }
                                                               §§goto(addr03b4);
                                                            }
                                                            §§goto(addr04c1);
                                                         }
                                                         §§goto(addr0314);
                                                      }
                                                      §§goto(addr02e1);
                                                   }
                                                   §§goto(addr0377);
                                                }
                                             }
                                             §§goto(addr036e);
                                          }
                                          §§goto(addr0220);
                                       }
                                       §§goto(addr018f);
                                    }
                                    §§goto(addr03b4);
                                 }
                                 §§goto(addr02cf);
                              }
                              §§goto(addr02e8);
                           }
                           §§goto(addr022a);
                        }
                        §§goto(addr0355);
                     }
                     else
                     {
                        §§push(this.buildNowButton);
                        if(!_loc5_)
                        {
                           §§goto(addr01ae);
                        }
                     }
                     §§goto(addr01d0);
                  }
                  §§goto(addr0299);
               }
               §§goto(addr0280);
            }
            §§goto(addr0324);
         }
         §§goto(addr00f1);
      }
      
      private function setEffects() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:BlueprintImageValueVO = null;
         var _loc2_:int = 0;
         var _loc3_:* = this._veryData.consequenceVOList.source;
         for each(_loc1_ in _loc3_)
         {
            if(_loc4_ || Boolean(_loc2_))
            {
               §§push(_loc1_.effectType);
               if(_loc4_)
               {
                  if(§§pop() == "")
                  {
                     continue;
                  }
                  if(_loc4_)
                  {
                     §§push(_loc1_.effectType);
                     if(!(_loc5_ && Boolean(this)))
                     {
                        addr006c:
                        §§push(MainLayerProxy.ENERGY);
                        if(!_loc5_)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(!_loc5_)
                              {
                                 §§push(this.energyIcon);
                                 if(!_loc5_)
                                 {
                                    §§push(_loc1_.visualName);
                                    if(_loc4_)
                                    {
                                       §§pop().dynaBmpSourceName = §§pop();
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          addr00ae:
                                          this.energyIcon.dynaLibName = _loc1_.visualLibName;
                                          if(_loc4_ || _loc3_)
                                          {
                                             addr00cc:
                                             §§push(this.energyLabel);
                                             if(_loc4_ || Boolean(_loc2_))
                                             {
                                                §§pop().setStyle("color",_loc1_.valueColor);
                                                if(!_loc4_)
                                                {
                                                   continue;
                                                }
                                                addr00ee:
                                                §§push(this.energyLabel);
                                             }
                                             §§pop().text = _loc1_.textLabel;
                                             if(!_loc4_)
                                             {
                                                addr0186:
                                                this.moodLabel.text = _loc1_.textLabel;
                                                addr0182:
                                             }
                                             continue;
                                          }
                                          §§goto(addr00ee);
                                          addr00aa:
                                       }
                                       §§goto(addr00cc);
                                    }
                                    §§goto(addr00ae);
                                 }
                                 §§goto(addr00aa);
                              }
                           }
                           else
                           {
                              addr010c:
                              addr0106:
                              if(_loc1_.effectType != MainLayerProxy.MOOD)
                              {
                                 continue;
                              }
                              if(!(_loc5_ && _loc3_))
                              {
                                 §§push(this.moodIcon);
                                 if(!_loc5_)
                                 {
                                    §§push(_loc1_.visualName);
                                    if(!_loc5_)
                                    {
                                       §§pop().dynaBmpSourceName = §§pop();
                                       if(_loc4_ || _loc3_)
                                       {
                                          addr014a:
                                          this.moodIcon.dynaLibName = _loc1_.visualLibName;
                                          addr0146:
                                          addr0142:
                                          if(!_loc4_)
                                          {
                                             continue;
                                          }
                                          §§push(this.moodLabel);
                                          if(_loc4_)
                                          {
                                             §§pop().setStyle("color",_loc1_.valueColor);
                                             if(!(_loc4_ || Boolean(this)))
                                             {
                                                continue;
                                             }
                                             §§goto(addr0182);
                                          }
                                          §§goto(addr0186);
                                       }
                                       §§goto(addr0182);
                                    }
                                    §§goto(addr014a);
                                 }
                                 §§goto(addr0146);
                              }
                           }
                           §§goto(addr0182);
                        }
                        §§goto(addr010c);
                     }
                     §§goto(addr0106);
                  }
                  §§goto(addr0142);
               }
               §§goto(addr006c);
            }
            §§goto(addr00cc);
         }
      }
      
      private function setTapes() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this.effectsComponent);
            if(_loc2_ || _loc2_)
            {
               §§pop().rightTape.setStyle("top",20);
               if(!_loc1_)
               {
                  §§push(this.effectsComponent);
                  if(_loc2_ || _loc2_)
                  {
                     addr0047:
                     §§pop().rightTape.setStyle("bottom",20);
                     if(!_loc1_)
                     {
                        §§goto(addr0057);
                     }
                     §§goto(addr00df);
                  }
                  §§goto(addr0060);
               }
               §§goto(addr00b6);
            }
            §§goto(addr0047);
         }
         addr0057:
         §§push(this.effectsComponent);
         if(_loc2_)
         {
            addr0060:
            §§pop().leftTape.setStyle("top",20);
            if(_loc2_)
            {
               §§goto(addr0073);
            }
            §§goto(addr00df);
         }
         addr0073:
         this.effectsComponent.leftTape.setStyle("bottom",20);
         if(_loc2_ || _loc1_)
         {
            §§push(this.outcomeGroup);
            if(_loc2_)
            {
               §§pop().topTape.setStyle("left",40);
               if(_loc2_ || _loc2_)
               {
                  addr00b6:
                  §§push(this.outcomeGroup);
                  if(!(_loc1_ && Boolean(this)))
                  {
                     §§pop().topTape.setStyle("right",50);
                     if(!(_loc1_ && _loc1_))
                     {
                        addr00df:
                        §§push(this.outcomeGroup);
                        if(_loc2_ || _loc1_)
                        {
                           §§pop().bottomTape.setStyle("left",60);
                           if(_loc2_ || _loc1_)
                           {
                              addr0116:
                              this.outcomeGroup.bottomTape.setStyle("right",60);
                           }
                           §§goto(addr0121);
                        }
                        §§goto(addr0116);
                     }
                     §§goto(addr0121);
                  }
                  §§goto(addr0116);
               }
               §§goto(addr0121);
            }
            §§goto(addr0116);
         }
         addr0121:
      }
      
      private function _ArchitectTemplate_Residential_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.height = 25;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(!_loc2_)
                  {
                     _loc1_.horizontalAlign = "center";
                     if(_loc3_)
                     {
                        addr0067:
                        _loc1_.top = -9;
                        if(!_loc2_)
                        {
                           _loc1_.mxmlContent = [this._ArchitectTemplate_Residential_LocaLabel1_i()];
                           addr0071:
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr0098:
                              if(!_loc1_.document)
                              {
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    addr00ac:
                                    _loc1_.document = this;
                                 }
                              }
                              §§goto(addr00b0);
                           }
                        }
                        §§goto(addr00ac);
                     }
                     addr00b0:
                     return _loc1_;
                  }
                  §§goto(addr0067);
               }
               §§goto(addr0071);
            }
            §§goto(addr0098);
         }
         §§goto(addr00ac);
      }
      
      private function _ArchitectTemplate_Residential_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc3_)
         {
            _loc1_.maxWidth = 690;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.maxDisplayedLines = 2;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.styleName = "flavorText";
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§goto(addr006e);
                  }
                  §§goto(addr0081);
               }
               addr006e:
               _loc1_.id = "flavorText";
               if(!(_loc2_ && _loc3_))
               {
                  addr0081:
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        _loc1_.document = this;
                        if(_loc3_ || _loc3_)
                        {
                           addr00aa:
                           this.flavorText = _loc1_;
                           if(!_loc2_)
                           {
                              addr00b4:
                              BindingManager.executeBindings(this,"flavorText",this.flavorText);
                           }
                        }
                        §§goto(addr00c1);
                     }
                     §§goto(addr00b4);
                  }
                  §§goto(addr00aa);
               }
               §§goto(addr00c1);
            }
            addr00c1:
            return _loc1_;
         }
         §§goto(addr00b4);
      }
      
      private function _ArchitectTemplate_Residential_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.width = 240;
            if(_loc2_)
            {
               _loc1_.height = 300;
               if(!_loc3_)
               {
                  _loc1_.left = 4;
                  if(_loc2_)
                  {
                     §§goto(addr004c);
                  }
               }
               §§goto(addr009e);
            }
            addr004c:
            _loc1_.bottom = 10;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.mxmlContent = [this._ArchitectTemplate_Residential_StickyNoteComponent1_i(),this._ArchitectTemplate_Residential_BuildingCostComponent1_i(),this._ArchitectTemplate_Residential_BuildingConstructionStepsComponent1_i()];
               if(_loc2_ || _loc3_)
               {
                  §§goto(addr0092);
               }
               §§goto(addr009e);
            }
            addr0092:
            if(!_loc1_.document)
            {
               if(!_loc3_)
               {
                  addr009e:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr009e);
      }
      
      private function _ArchitectTemplate_Residential_StickyNoteComponent1_i() : StickyNoteComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(_loc3_)
         {
            _loc1_.width = 226;
            if(_loc3_)
            {
               _loc1_.top = 88;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  §§goto(addr003d);
               }
               §§goto(addr0075);
            }
            §§goto(addr009d);
         }
         addr003d:
         _loc1_.height = 120;
         if(_loc3_)
         {
            _loc1_.left = 8;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.visible = false;
               if(_loc3_ || Boolean(this))
               {
                  addr0075:
                  _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ArchitectTemplate_Residential_Array4_c);
                  if(!_loc2_)
                  {
                     _loc1_.id = "restrictionGroup";
                     if(_loc3_ || _loc2_)
                     {
                        addr009d:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              _loc1_.document = this;
                              if(_loc3_ || _loc3_)
                              {
                                 §§goto(addr00d0);
                              }
                           }
                           §§goto(addr00e2);
                        }
                        addr00d0:
                        this.restrictionGroup = _loc1_;
                        if(_loc3_ || _loc2_)
                        {
                           addr00e2:
                           BindingManager.executeBindings(this,"restrictionGroup",this.restrictionGroup);
                        }
                        §§goto(addr00ef);
                     }
                  }
                  §§goto(addr00ef);
               }
               §§goto(addr00e2);
            }
            §§goto(addr009d);
         }
         addr00ef:
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_Array4_c() : Array
      {
         return [this._ArchitectTemplate_Residential_DynamicImageButton1_i(),this._ArchitectTemplate_Residential_VGroup1_c()];
      }
      
      private function _ArchitectTemplate_Residential_DynamicImageButton1_i() : DynamicImageButton
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
               §§goto(addr002a);
            }
            §§goto(addr0061);
         }
         addr002a:
         _loc1_.right = 0;
         if(_loc2_)
         {
            _loc1_.top = 0;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.addEventListener("click",this.__restrictionFeatureButton_click);
               if(!_loc3_)
               {
                  addr0061:
                  _loc1_.id = "restrictionFeatureButton";
                  if(_loc2_ || _loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           §§goto(addr0093);
                        }
                        §§goto(addr00ae);
                     }
                     §§goto(addr009c);
                  }
               }
               §§goto(addr0093);
            }
            §§goto(addr0061);
         }
         addr0093:
         _loc1_.document = this;
         if(_loc2_)
         {
            addr009c:
            this.restrictionFeatureButton = _loc1_;
            if(_loc2_ || Boolean(this))
            {
               addr00ae:
               BindingManager.executeBindings(this,"restrictionFeatureButton",this.restrictionFeatureButton);
            }
         }
         return _loc1_;
      }
      
      public function __restrictionFeatureButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this.handleRestrictionFeatureClick();
         }
      }
      
      private function _ArchitectTemplate_Residential_VGroup1_c() : VGroup
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
               _loc1_.top = 9;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.mxmlContent = [this._ArchitectTemplate_Residential_PostitHeaderComponent1_i(),this._ArchitectTemplate_Residential_HGroup2_c()];
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr0083:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0087);
                  }
               }
               §§goto(addr0083);
            }
            addr0087:
            return _loc1_;
         }
         §§goto(addr0083);
      }
      
      private function _ArchitectTemplate_Residential_PostitHeaderComponent1_i() : PostitHeaderComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:PostitHeaderComponent = new PostitHeaderComponent();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.id = "restrictionHeader";
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     _loc1_.document = this;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr006d:
                        this.restrictionHeader = _loc1_;
                        if(_loc2_)
                        {
                           addr0077:
                           BindingManager.executeBindings(this,"restrictionHeader",this.restrictionHeader);
                        }
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr006d);
            }
            §§goto(addr0077);
         }
         addr0084:
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.horizontalAlign = "left";
            if(_loc2_)
            {
               _loc1_.verticalAlign = "middle";
               if(_loc2_ || _loc2_)
               {
                  _loc1_.mxmlContent = [this._ArchitectTemplate_Residential_BriskImageDynaLib1_i(),this._ArchitectTemplate_Residential_LocaLabel2_i()];
                  if(_loc2_ || Boolean(this))
                  {
                     addr007c:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr0088:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr008c);
               }
               §§goto(addr007c);
            }
            §§goto(addr0088);
         }
         addr008c:
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "restriction_icon_farmland";
               if(_loc3_)
               {
                  _loc1_.id = "restrictionGfx";
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr007b:
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              §§goto(addr0084);
                           }
                           §§goto(addr0096);
                        }
                     }
                  }
                  addr0084:
                  this.restrictionGfx = _loc1_;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr0096:
                     BindingManager.executeBindings(this,"restrictionGfx",this.restrictionGfx);
                  }
                  §§goto(addr00a3);
               }
               §§goto(addr0096);
            }
            §§goto(addr007b);
         }
         addr00a3:
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc2_)
         {
            _loc1_.styleName = "miniLayerFlavourText";
            if(_loc3_)
            {
               _loc1_.id = "restrictionName";
               if(!(_loc2_ && _loc2_))
               {
                  addr0053:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(this))
                     {
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           §§goto(addr007d);
                        }
                     }
                     §§goto(addr0087);
                  }
                  addr007d:
                  this.restrictionName = _loc1_;
                  if(!_loc2_)
                  {
                     addr0087:
                     BindingManager.executeBindings(this,"restrictionName",this.restrictionName);
                  }
                  §§goto(addr0094);
               }
               addr0094:
               return _loc1_;
            }
            §§goto(addr0053);
         }
         §§goto(addr0087);
      }
      
      private function _ArchitectTemplate_Residential_BuildingCostComponent1_i() : BuildingCostComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BuildingCostComponent = new BuildingCostComponent();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.top = 0;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.height = 115;
                  if(!_loc3_)
                  {
                     _loc1_.id = "costComponent";
                     if(_loc2_)
                     {
                        addr0061:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              _loc1_.document = this;
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 addr0088:
                                 this.costComponent = _loc1_;
                                 if(!_loc3_)
                                 {
                                    BindingManager.executeBindings(this,"costComponent",this.costComponent);
                                 }
                              }
                           }
                           §§goto(addr009f);
                        }
                     }
                     §§goto(addr0088);
                  }
                  addr009f:
                  return _loc1_;
               }
            }
            §§goto(addr0061);
         }
         §§goto(addr0088);
      }
      
      private function _ArchitectTemplate_Residential_BuildingConstructionStepsComponent1_i() : BuildingConstructionStepsComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BuildingConstructionStepsComponent = new BuildingConstructionStepsComponent();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.height = 130;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.bottom = -10;
                  if(_loc3_)
                  {
                     _loc1_.id = "constructionStepsComponent";
                     if(_loc3_ || _loc2_)
                     {
                        §§goto(addr006c);
                     }
                     §§goto(addr008c);
                  }
                  addr006c:
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        addr008c:
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           §§goto(addr0095);
                        }
                        §§goto(addr00a7);
                     }
                  }
                  addr0095:
                  this.constructionStepsComponent = _loc1_;
                  if(!(_loc2_ && _loc3_))
                  {
                     addr00a7:
                     BindingManager.executeBindings(this,"constructionStepsComponent",this.constructionStepsComponent);
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
      
      private function _ArchitectTemplate_Residential_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.left = 240;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.right = 220;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.height = 300;
                  if(!_loc3_)
                  {
                     §§goto(addr0064);
                  }
                  §§goto(addr0079);
               }
               addr0064:
               _loc1_.bottom = 15;
               if(!_loc3_)
               {
                  _loc1_.verticalAlign = "top";
                  if(!_loc3_)
                  {
                     addr0079:
                     _loc1_.horizontalAlign = "center";
                     if(!_loc3_)
                     {
                        addr0083:
                        _loc1_.gap = 15;
                        if(!(_loc3_ && Boolean(this)))
                        {
                           §§goto(addr00a1);
                        }
                        §§goto(addr00b7);
                     }
                     §§goto(addr00c3);
                  }
                  §§goto(addr0083);
               }
               §§goto(addr00a1);
            }
            §§goto(addr00c3);
         }
         addr00a1:
         _loc1_.mxmlContent = [this._ArchitectTemplate_Residential_DetailsCenterComponent1_i(),this._ArchitectTemplate_Residential_MultistateButton1_i()];
         if(_loc2_)
         {
            addr00b7:
            if(!_loc1_.document)
            {
               if(_loc2_)
               {
                  addr00c3:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_DetailsCenterComponent1_i() : DetailsCenterComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DetailsCenterComponent = new DetailsCenterComponent();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.id = "center";
            if(_loc2_)
            {
               addr0041:
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr004d);
                  }
                  §§goto(addr007a);
               }
               §§goto(addr0068);
            }
            addr004d:
            _loc1_.document = this;
            if(_loc2_ || Boolean(this))
            {
               addr0068:
               this.center = _loc1_;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr007a:
                  BindingManager.executeBindings(this,"center",this.center);
               }
            }
            return _loc1_;
         }
         §§goto(addr0041);
      }
      
      private function _ArchitectTemplate_Residential_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc3_)
         {
            _loc1_.width = 204;
            if(!_loc2_)
            {
               _loc1_.imageNameLeft = "button_icon_build";
               if(_loc3_ || _loc3_)
               {
                  _loc1_.libNameLeft = "gui_popups_paperPopup";
                  if(!_loc2_)
                  {
                     addr0059:
                     _loc1_.id = "buildNowButton";
                     if(!_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && Boolean(this)))
                           {
                              §§goto(addr0084);
                           }
                           §§goto(addr0097);
                        }
                        §§goto(addr008d);
                     }
                  }
               }
               addr0084:
               _loc1_.document = this;
               if(!_loc2_)
               {
                  addr008d:
                  this.buildNowButton = _loc1_;
                  if(_loc3_)
                  {
                     addr0097:
                     BindingManager.executeBindings(this,"buildNowButton",this.buildNowButton);
                  }
               }
               return _loc1_;
            }
            §§goto(addr008d);
         }
         §§goto(addr0059);
      }
      
      private function _ArchitectTemplate_Residential_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || _loc2_)
         {
            _loc1_.width = 230;
            if(_loc2_)
            {
               _loc1_.height = 290;
               if(_loc2_)
               {
                  _loc1_.right = -5;
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.bottom = 30;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        _loc1_.mxmlContent = [this._ArchitectTemplate_Residential_StickyNoteComponent2_i(),this._ArchitectTemplate_Residential_StickyNoteComponent3_i(),this._ArchitectTemplate_Residential_Group4_c()];
                        §§goto(addr0070);
                     }
                     §§goto(addr00ab);
                  }
                  §§goto(addr0097);
               }
            }
            §§goto(addr00ab);
         }
         addr0070:
         if(!_loc3_)
         {
            addr0097:
            if(!_loc1_.document)
            {
               if(_loc2_ || _loc3_)
               {
                  addr00ab:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_StickyNoteComponent2_i() : StickyNoteComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.height = 130;
               if(!_loc3_)
               {
                  _loc1_.top = 110;
                  if(_loc2_)
                  {
                     _loc1_.left = 10;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.right = 10;
                        if(_loc2_)
                        {
                           _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ArchitectTemplate_Residential_Array9_c);
                           if(_loc2_ || _loc3_)
                           {
                              addr008b:
                              _loc1_.id = "residentComponent";
                              if(_loc2_ || _loc2_)
                              {
                                 if(!_loc1_.document)
                                 {
                                    if(!_loc3_)
                                    {
                                       addr00b6:
                                       _loc1_.document = this;
                                       if(_loc2_)
                                       {
                                          §§goto(addr00bf);
                                       }
                                       §§goto(addr00d1);
                                    }
                                 }
                              }
                           }
                           addr00bf:
                           this.residentComponent = _loc1_;
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              addr00d1:
                              BindingManager.executeBindings(this,"residentComponent",this.residentComponent);
                           }
                           return _loc1_;
                        }
                        §§goto(addr00b6);
                     }
                     §§goto(addr008b);
                  }
               }
            }
         }
         §§goto(addr00b6);
      }
      
      private function _ArchitectTemplate_Residential_Array9_c() : Array
      {
         return [this._ArchitectTemplate_Residential_DynamicImageButton2_i(),this._ArchitectTemplate_Residential_PostitHeaderComponent2_i(),this._ArchitectTemplate_Residential_HGroup3_i()];
      }
      
      private function _ArchitectTemplate_Residential_DynamicImageButton2_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.styleName = "featureInfoButton";
            if(!_loc2_)
            {
               _loc1_.right = 0;
               if(_loc3_)
               {
                  _loc1_.top = -13;
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.addEventListener("click",this.__residentFeatureButton_click);
                     if(!(_loc2_ && Boolean(this)))
                     {
                        _loc1_.id = "residentFeatureButton";
                        if(!_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr009a:
                                 _loc1_.document = this;
                                 if(_loc3_)
                                 {
                                    addr00a3:
                                    this.residentFeatureButton = _loc1_;
                                    if(!(_loc2_ && Boolean(_loc1_)))
                                    {
                                       BindingManager.executeBindings(this,"residentFeatureButton",this.residentFeatureButton);
                                    }
                                 }
                              }
                              §§goto(addr00c2);
                           }
                           §§goto(addr00a3);
                        }
                        §§goto(addr009a);
                     }
                     addr00c2:
                     return _loc1_;
                  }
                  §§goto(addr00a3);
               }
            }
         }
         §§goto(addr009a);
      }
      
      public function __residentFeatureButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.handleResidentFeatureClick();
         }
      }
      
      private function _ArchitectTemplate_Residential_PostitHeaderComponent2_i() : PostitHeaderComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:PostitHeaderComponent = new PostitHeaderComponent();
         if(!_loc2_)
         {
            _loc1_.top = 3;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.id = "residentHeader";
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(this)))
                     {
                        §§goto(addr0071);
                     }
                  }
                  §§goto(addr007a);
               }
               §§goto(addr0071);
            }
            §§goto(addr008c);
         }
         addr0071:
         _loc1_.document = this;
         if(_loc3_)
         {
            addr007a:
            this.residentHeader = _loc1_;
            if(!(_loc2_ && _loc2_))
            {
               addr008c:
               BindingManager.executeBindings(this,"residentHeader",this.residentHeader);
            }
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_HGroup3_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 95;
            if(_loc3_ || _loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.verticalAlign = "middle";
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.top = 26;
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.mxmlContent = [this._ArchitectTemplate_Residential_HGroup4_i(),this._ArchitectTemplate_Residential_List1_i()];
                        if(!(_loc2_ && Boolean(this)))
                        {
                           §§goto(addr0091);
                        }
                        §§goto(addr00bb);
                     }
                  }
               }
               addr0091:
               _loc1_.id = "residentInfoGroup";
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        addr00bb:
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           §§goto(addr00c4);
                        }
                        §§goto(addr00d6);
                     }
                  }
               }
               §§goto(addr00c4);
            }
            addr00c4:
            this.residentInfoGroup = _loc1_;
            if(!(_loc2_ && _loc3_))
            {
               addr00d6:
               BindingManager.executeBindings(this,"residentInfoGroup",this.residentInfoGroup);
            }
            return _loc1_;
         }
         §§goto(addr00bb);
      }
      
      private function _ArchitectTemplate_Residential_HGroup4_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.horizontalAlign = "center";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.verticalAlign = "middle";
               if(_loc3_)
               {
                  _loc1_.percentWidth = 100;
                  if(!(_loc2_ && _loc3_))
                  {
                     addr005e:
                     _loc1_.mxmlContent = [this._ArchitectTemplate_Residential_LocaLabel3_i(),this._ArchitectTemplate_Residential_BriskImageDynaLib2_c()];
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.id = "residents";
                        if(!_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr009f:
                                 _loc1_.document = this;
                                 if(_loc3_)
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
                  addr00a8:
                  this.residents = _loc1_;
                  if(_loc3_)
                  {
                     addr00b2:
                     BindingManager.executeBindings(this,"residents",this.residents);
                  }
                  return _loc1_;
               }
               §§goto(addr00b2);
            }
            §§goto(addr005e);
         }
         §§goto(addr00b2);
      }
      
      private function _ArchitectTemplate_Residential_LocaLabel3_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.styleName = "outcomeNeutral";
            if(!_loc2_)
            {
               addr0032:
               _loc1_.text = "230";
               if(_loc3_ || _loc3_)
               {
                  _loc1_.id = "residentTotaLabel";
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0071:
                           _loc1_.document = this;
                           if(_loc3_ || _loc3_)
                           {
                              §§goto(addr008d);
                           }
                           §§goto(addr009f);
                        }
                     }
                  }
                  addr008d:
                  this.residentTotaLabel = _loc1_;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr009f:
                     BindingManager.executeBindings(this,"residentTotaLabel",this.residentTotaLabel);
                  }
                  return _loc1_;
               }
            }
            §§goto(addr0071);
         }
         §§goto(addr0032);
      }
      
      private function _ArchitectTemplate_Residential_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "postit_icon_population";
               if(_loc2_ || _loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc3_))
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
      
      private function _ArchitectTemplate_Residential_List1_i() : List
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:List = new List();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.itemRenderer = this._ArchitectTemplate_Residential_ClassFactory1_c();
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.setStyle("skinClass",ArchitectResidentListSkin);
               if(_loc2_)
               {
                  §§goto(addr0058);
               }
               §§goto(addr009b);
            }
            §§goto(addr00ad);
         }
         addr0058:
         _loc1_.id = "residentList";
         if(!(_loc3_ && _loc3_))
         {
            if(!_loc1_.document)
            {
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.document = this;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr009b:
                     this.residentList = _loc1_;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr00ad:
                        BindingManager.executeBindings(this,"residentList",this.residentList);
                     }
                  }
                  §§goto(addr00ba);
               }
            }
            §§goto(addr009b);
         }
         addr00ba:
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_ClassFactory1_c() : ClassFactory
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ClassFactory = new ClassFactory();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.generator = ResidentItemRenderer;
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_StickyNoteComponent3_i() : StickyNoteComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               addr0029:
               _loc1_.height = 135;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.top = 0;
                  if(_loc2_)
                  {
                     _loc1_.tapeTop = true;
                     if(_loc2_ || Boolean(this))
                     {
                        _loc1_.tapeBottom = true;
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0075:
                           _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ArchitectTemplate_Residential_Array12_c);
                           if(_loc2_)
                           {
                              _loc1_.id = "outcomeGroup";
                              if(_loc2_ || _loc3_)
                              {
                                 addr009d:
                                 if(!_loc1_.document)
                                 {
                                    if(!_loc3_)
                                    {
                                       _loc1_.document = this;
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          addr00c6:
                                          this.outcomeGroup = _loc1_;
                                          if(_loc2_ || _loc3_)
                                          {
                                             BindingManager.executeBindings(this,"outcomeGroup",this.outcomeGroup);
                                          }
                                       }
                                       §§goto(addr00e5);
                                    }
                                 }
                                 §§goto(addr00c6);
                              }
                              §§goto(addr00e5);
                           }
                           §§goto(addr009d);
                        }
                        addr00e5:
                        return _loc1_;
                     }
                  }
               }
               §§goto(addr0075);
            }
            §§goto(addr00c6);
         }
         §§goto(addr0029);
      }
      
      private function _ArchitectTemplate_Residential_Array12_c() : Array
      {
         return [this._ArchitectTemplate_Residential_PostitHeaderComponent3_i(),this._ArchitectTemplate_Residential_HGroup5_c(),this._ArchitectTemplate_Residential_HGroup6_i()];
      }
      
      private function _ArchitectTemplate_Residential_PostitHeaderComponent3_i() : PostitHeaderComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:PostitHeaderComponent = new PostitHeaderComponent();
         if(_loc3_)
         {
            _loc1_.id = "outcomeHeader";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.document = this;
                     if(!_loc2_)
                     {
                        addr0069:
                        this.outcomeHeader = _loc1_;
                        if(_loc3_)
                        {
                           addr0073:
                           BindingManager.executeBindings(this,"outcomeHeader",this.outcomeHeader);
                        }
                     }
                     §§goto(addr0080);
                  }
                  §§goto(addr0073);
               }
            }
            §§goto(addr0069);
         }
         addr0080:
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_HGroup5_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.top = 20;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.horizontalAlign = "center";
               if(!_loc3_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc2_)
                  {
                     _loc1_.percentWidth = 100;
                     if(_loc2_ || _loc3_)
                     {
                        _loc1_.mxmlContent = [this._ArchitectTemplate_Residential_LocaLabel4_i(),this._ArchitectTemplate_Residential_BriskImageDynaLib3_c(),this._ArchitectTemplate_Residential_LocaLabel5_i()];
                        addr0063:
                        if(_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr00a0:
                                 _loc1_.document = this;
                              }
                           }
                        }
                     }
                     return _loc1_;
                  }
               }
            }
            §§goto(addr00a0);
         }
         §§goto(addr0063);
      }
      
      private function _ArchitectTemplate_Residential_LocaLabel4_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.styleName = "residentialCycleText";
            if(_loc2_ || _loc2_)
            {
               _loc1_.id = "cycleLabel";
               if(_loc2_)
               {
                  addr0053:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        §§goto(addr005f);
                     }
                     §§goto(addr008f);
                  }
                  §§goto(addr007d);
               }
               addr005f:
               _loc1_.document = this;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr007d:
                  this.cycleLabel = _loc1_;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr008f:
                     BindingManager.executeBindings(this,"cycleLabel",this.cycleLabel);
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0053);
      }
      
      private function _ArchitectTemplate_Residential_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_residentialPopup";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.dynaBmpSourceName = "layer_clock_mini_icon";
               addr0044:
               if(_loc2_ || _loc3_)
               {
                  §§goto(addr0065);
               }
               §§goto(addr0079);
            }
            addr0065:
            if(!_loc1_.document)
            {
               if(_loc2_ || _loc2_)
               {
                  addr0079:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0044);
      }
      
      private function _ArchitectTemplate_Residential_LocaLabel5_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.text = "00:00:00";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.styleName = "residentialCycleText";
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.id = "cycleLengthLabel";
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr006d:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr008f:
                           _loc1_.document = this;
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr00a0:
                              this.cycleLengthLabel = _loc1_;
                              if(_loc3_)
                              {
                                 BindingManager.executeBindings(this,"cycleLengthLabel",this.cycleLengthLabel);
                              }
                           }
                        }
                        return _loc1_;
                     }
                  }
                  §§goto(addr00a0);
               }
               §§goto(addr008f);
            }
            §§goto(addr00a0);
         }
         §§goto(addr006d);
      }
      
      private function _ArchitectTemplate_Residential_HGroup6_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.horizontalAlign = "center";
               if(!_loc2_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.top = 48;
                     if(_loc3_)
                     {
                        addr0065:
                        _loc1_.mxmlContent = [this._ArchitectTemplate_Residential_LocaLabel6_i(),this._ArchitectTemplate_Residential_BriskImageDynaLib4_i()];
                        if(!(_loc2_ && _loc3_))
                        {
                           _loc1_.id = "possibleOutcome";
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              if(!_loc1_.document)
                              {
                                 if(_loc3_)
                                 {
                                    _loc1_.document = this;
                                    if(_loc3_ || _loc3_)
                                    {
                                       addr00be:
                                       this.possibleOutcome = _loc1_;
                                       if(_loc3_)
                                       {
                                          addr00c8:
                                          BindingManager.executeBindings(this,"possibleOutcome",this.possibleOutcome);
                                       }
                                    }
                                    §§goto(addr00d5);
                                 }
                              }
                              §§goto(addr00be);
                           }
                           addr00d5:
                           return _loc1_;
                        }
                     }
                  }
               }
               §§goto(addr00be);
            }
            §§goto(addr00c8);
         }
         §§goto(addr0065);
      }
      
      private function _ArchitectTemplate_Residential_LocaLabel6_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.styleName = "outcomeNeutral";
            if(!_loc3_)
            {
               _loc1_.text = "500 - 1000";
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.id = "outputLabel";
                  if(_loc2_)
                  {
                     addr0061:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr006d:
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              addr0076:
                              this.outputLabel = _loc1_;
                              if(!_loc3_)
                              {
                                 addr0080:
                                 BindingManager.executeBindings(this,"outputLabel",this.outputLabel);
                              }
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr0076);
                  }
                  §§goto(addr006d);
               }
               §§goto(addr0061);
            }
            §§goto(addr0080);
         }
         §§goto(addr0061);
      }
      
      private function _ArchitectTemplate_Residential_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_resources_icons";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "layer_cc_icon";
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.id = "outputImage";
                  if(!(_loc3_ && _loc2_))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr007c:
                           _loc1_.document = this;
                           if(_loc2_ || Boolean(this))
                           {
                              addr008d:
                              this.outputImage = _loc1_;
                              if(_loc2_)
                              {
                                 addr0097:
                                 BindingManager.executeBindings(this,"outputImage",this.outputImage);
                              }
                              §§goto(addr00a4);
                           }
                           §§goto(addr0097);
                        }
                        §§goto(addr00a4);
                     }
                     §§goto(addr008d);
                  }
                  addr00a4:
                  return _loc1_;
               }
               §§goto(addr007c);
            }
         }
         §§goto(addr008d);
      }
      
      private function _ArchitectTemplate_Residential_Group4_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.width = 230;
            if(_loc2_ || _loc3_)
            {
               _loc1_.top = 206;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.right = 1;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0079:
                     _loc1_.mxmlContent = [this._ArchitectTemplate_Residential_HGroup7_c(),this._ArchitectTemplate_Residential_DynamicImageButton3_i()];
                     if(_loc2_)
                     {
                        addr008f:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr009b:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr009f);
                  }
                  §§goto(addr009b);
               }
               addr009f:
               return _loc1_;
            }
            §§goto(addr008f);
         }
         §§goto(addr0079);
      }
      
      private function _ArchitectTemplate_Residential_HGroup7_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || _loc2_)
         {
            _loc1_.horizontalAlign = "center";
            if(!_loc3_)
            {
               addr003e:
               _loc1_.percentWidth = 100;
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._ArchitectTemplate_Residential_StickyNoteComponent4_i()];
                  if(!_loc3_)
                  {
                     §§goto(addr0063);
                  }
               }
               §§goto(addr0077);
            }
            addr0063:
            if(!_loc1_.document)
            {
               if(!(_loc3_ && _loc2_))
               {
                  addr0077:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr003e);
      }
      
      private function _ArchitectTemplate_Residential_StickyNoteComponent4_i() : StickyNoteComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(!_loc2_)
         {
            _loc1_.height = 120;
            if(_loc3_ || _loc3_)
            {
               _loc1_.percentWidth = 100;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.tapeLeft = true;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.tapeRight = true;
                     if(!(_loc2_ && _loc3_))
                     {
                        _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ArchitectTemplate_Residential_Array17_c);
                        if(_loc3_ || Boolean(this))
                        {
                           addr0090:
                           _loc1_.id = "effectsComponent";
                           if(!(_loc2_ && _loc3_))
                           {
                              addr00b0:
                              if(!_loc1_.document)
                              {
                                 if(!_loc2_)
                                 {
                                    addr00bc:
                                    _loc1_.document = this;
                                    if(!_loc2_)
                                    {
                                       addr00c5:
                                       this.effectsComponent = _loc1_;
                                       if(_loc3_)
                                       {
                                          addr00cf:
                                          BindingManager.executeBindings(this,"effectsComponent",this.effectsComponent);
                                       }
                                       §§goto(addr00dc);
                                    }
                                    §§goto(addr00cf);
                                 }
                                 addr00dc:
                                 return _loc1_;
                              }
                              §§goto(addr00c5);
                           }
                        }
                        §§goto(addr00cf);
                     }
                     §§goto(addr00b0);
                  }
                  §§goto(addr0090);
               }
               §§goto(addr00b0);
            }
         }
         §§goto(addr00bc);
      }
      
      private function _ArchitectTemplate_Residential_Array17_c() : Array
      {
         return [this._ArchitectTemplate_Residential_PostitHeaderComponent4_i(),this._ArchitectTemplate_Residential_HGroup8_c()];
      }
      
      private function _ArchitectTemplate_Residential_PostitHeaderComponent4_i() : PostitHeaderComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:PostitHeaderComponent = new PostitHeaderComponent();
         if(!_loc2_)
         {
            _loc1_.top = 0;
            if(!_loc2_)
            {
               §§goto(addr002d);
            }
            §§goto(addr0065);
         }
         addr002d:
         _loc1_.id = "effectHeader";
         if(_loc3_ || _loc3_)
         {
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  addr0065:
                  _loc1_.document = this;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§goto(addr0076);
                  }
                  §§goto(addr0080);
               }
            }
         }
         addr0076:
         this.effectHeader = _loc1_;
         if(_loc3_)
         {
            addr0080:
            BindingManager.executeBindings(this,"effectHeader",this.effectHeader);
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_HGroup8_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 90;
            if(_loc2_ || _loc2_)
            {
               _loc1_.top = 22;
               if(_loc2_)
               {
                  _loc1_.percentHeight = 100;
                  if(_loc2_)
                  {
                     addr005a:
                     _loc1_.horizontalCenter = 0;
                     if(!_loc3_)
                     {
                        addr0064:
                        _loc1_.mxmlContent = [this._ArchitectTemplate_Residential_HGroup9_i(),this._ArchitectTemplate_Residential_HGroup10_i()];
                        if(!_loc3_)
                        {
                           §§goto(addr007a);
                        }
                        §§goto(addr0086);
                     }
                  }
               }
               addr007a:
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr0086:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
            §§goto(addr005a);
         }
         §§goto(addr0064);
      }
      
      private function _ArchitectTemplate_Residential_HGroup9_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || _loc3_)
         {
            _loc1_.percentWidth = 50;
            if(!_loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.verticalAlign = "middle";
                  if(!_loc3_)
                  {
                     _loc1_.percentHeight = 100;
                     if(!_loc3_)
                     {
                        _loc1_.mxmlContent = [this._ArchitectTemplate_Residential_LocaLabel7_i(),this._ArchitectTemplate_Residential_BriskImageDynaLib5_i()];
                        if(!_loc3_)
                        {
                           _loc1_.id = "moodGroup";
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              addr009b:
                              if(!_loc1_.document)
                              {
                                 if(_loc2_)
                                 {
                                    §§goto(addr00a7);
                                 }
                              }
                           }
                        }
                        §§goto(addr00b0);
                     }
                     §§goto(addr009b);
                  }
                  §§goto(addr00a7);
               }
               §§goto(addr00ba);
            }
         }
         addr00a7:
         _loc1_.document = this;
         if(_loc2_)
         {
            addr00b0:
            this.moodGroup = _loc1_;
            if(!_loc3_)
            {
               addr00ba:
               BindingManager.executeBindings(this,"moodGroup",this.moodGroup);
            }
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_LocaLabel7_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.styleName = "outcomeNeutral";
            if(_loc3_)
            {
               _loc1_.text = "0";
               if(_loc3_)
               {
                  addr003f:
                  _loc1_.id = "moodLabel";
                  if(!(_loc2_ && _loc3_))
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              addr0074:
                              this.moodLabel = _loc1_;
                              if(_loc3_ || _loc3_)
                              {
                                 addr0086:
                                 BindingManager.executeBindings(this,"moodLabel",this.moodLabel);
                              }
                           }
                           §§goto(addr0093);
                        }
                     }
                     §§goto(addr0074);
                  }
               }
               §§goto(addr0086);
            }
            §§goto(addr003f);
         }
         addr0093:
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_resources_icons";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.dynaBmpSourceName = "layer_sad_icon";
               if(_loc2_ || _loc3_)
               {
                  _loc1_.id = "moodIcon";
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              §§goto(addr007e);
                           }
                           §§goto(addr0088);
                        }
                     }
                     §§goto(addr007e);
                  }
               }
            }
            §§goto(addr0088);
         }
         addr007e:
         this.moodIcon = _loc1_;
         if(!_loc3_)
         {
            addr0088:
            BindingManager.executeBindings(this,"moodIcon",this.moodIcon);
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_HGroup10_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || _loc2_)
         {
            _loc1_.percentWidth = 50;
            if(_loc2_ || _loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc2_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.percentHeight = 100;
                     if(!_loc3_)
                     {
                        _loc1_.mxmlContent = [this._ArchitectTemplate_Residential_LocaLabel8_i(),this._ArchitectTemplate_Residential_BriskImageDynaLib6_i()];
                        if(_loc2_)
                        {
                           addr0083:
                           _loc1_.id = "energyGroup";
                           if(_loc2_)
                           {
                              addr008e:
                              if(!_loc1_.document)
                              {
                                 if(!_loc3_)
                                 {
                                    addr00a5:
                                    _loc1_.document = this;
                                    if(_loc2_ || _loc2_)
                                    {
                                       addr00b6:
                                       this.energyGroup = _loc1_;
                                       if(_loc2_)
                                       {
                                          addr00c0:
                                          BindingManager.executeBindings(this,"energyGroup",this.energyGroup);
                                       }
                                    }
                                 }
                                 §§goto(addr00cd);
                              }
                              §§goto(addr00b6);
                           }
                           §§goto(addr00a5);
                        }
                        §§goto(addr00c0);
                     }
                     addr00cd:
                     return _loc1_;
                  }
                  §§goto(addr00b6);
               }
               §§goto(addr008e);
            }
            §§goto(addr00c0);
         }
         §§goto(addr0083);
      }
      
      private function _ArchitectTemplate_Residential_LocaLabel8_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.styleName = "outcomeNeutral";
            if(_loc3_)
            {
               _loc1_.text = "0";
               if(!_loc2_)
               {
                  _loc1_.id = "energyLabel";
                  if(_loc3_)
                  {
                     addr0058:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           _loc1_.document = this;
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              addr0081:
                              this.energyLabel = _loc1_;
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr0093:
                                 BindingManager.executeBindings(this,"energyLabel",this.energyLabel);
                              }
                           }
                           return _loc1_;
                        }
                        §§goto(addr0093);
                     }
                     §§goto(addr0081);
                  }
               }
               §§goto(addr0093);
            }
            §§goto(addr0081);
         }
         §§goto(addr0058);
      }
      
      private function _ArchitectTemplate_Residential_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_resources_icons";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "energy_icon";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr0050:
                  _loc1_.id = "energyIcon";
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr006d:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              addr0082:
                              this.energyIcon = _loc1_;
                              if(_loc2_)
                              {
                                 addr008c:
                                 BindingManager.executeBindings(this,"energyIcon",this.energyIcon);
                              }
                              §§goto(addr0099);
                           }
                           §§goto(addr008c);
                        }
                        addr0099:
                        return _loc1_;
                     }
                     §§goto(addr0082);
                  }
               }
               §§goto(addr008c);
            }
            §§goto(addr006d);
         }
         §§goto(addr0050);
      }
      
      private function _ArchitectTemplate_Residential_DynamicImageButton3_i() : DynamicImageButton
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
               _loc1_.right = 24;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.top = 15;
                  if(!_loc3_)
                  {
                     addr0059:
                     _loc1_.addEventListener("click",this.__effectFeatureButton_click);
                     if(!_loc3_)
                     {
                        _loc1_.id = "effectFeatureButton";
                        if(_loc2_)
                        {
                           addr0074:
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 _loc1_.document = this;
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    addr00a3:
                                    this.effectFeatureButton = _loc1_;
                                    if(!_loc3_)
                                    {
                                       addr00ad:
                                       BindingManager.executeBindings(this,"effectFeatureButton",this.effectFeatureButton);
                                    }
                                    §§goto(addr00ba);
                                 }
                                 §§goto(addr00ad);
                              }
                              addr00ba:
                              return _loc1_;
                           }
                        }
                        §§goto(addr00a3);
                     }
                  }
               }
               §§goto(addr00ad);
            }
            §§goto(addr0059);
         }
         §§goto(addr0074);
      }
      
      public function __effectFeatureButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this.handleEffectFeatureClick();
         }
      }
      
      public function ___ArchitectTemplate_Residential_Group1_creationComplete(param1:FlexEvent) : void
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
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  addr0039:
                  this._597326554buildNowButton = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buildNowButton",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0039);
      }
      
      [Bindable(event="propertyChange")]
      public function get center() : DetailsCenterComponent
      {
         return this._1364013995center;
      }
      
      public function set center(param1:DetailsCenterComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1364013995center;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1364013995center = param1;
                  addr003e:
                  if(!(_loc4_ && Boolean(this)))
                  {
                     §§goto(addr005d);
                  }
                  §§goto(addr006c);
               }
               addr005d:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_)
                  {
                     addr006c:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"center",_loc2_,param1));
                  }
               }
               §§goto(addr007a);
            }
            addr007a:
            return;
         }
         §§goto(addr003e);
      }
      
      [Bindable(event="propertyChange")]
      public function get constructionStepsComponent() : BuildingConstructionStepsComponent
      {
         return this._1976000313constructionStepsComponent;
      }
      
      public function set constructionStepsComponent(param1:BuildingConstructionStepsComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1976000313constructionStepsComponent;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1976000313constructionStepsComponent = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"constructionStepsComponent",_loc2_,param1));
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
               if(!_loc4_)
               {
                  this._1253508016costComponent = param1;
                  if(_loc3_ || _loc3_)
                  {
                     addr0053:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr006b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costComponent",_loc2_,param1));
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
         §§goto(addr0053);
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
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._1163225682cycleLabel = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cycleLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr007e);
                  }
                  §§goto(addr006f);
               }
            }
            addr007e:
            return;
         }
         §§goto(addr006f);
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
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._2034685672cycleLengthLabel = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0063:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cycleLengthLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0072);
               }
               §§goto(addr0063);
            }
         }
         addr0072:
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
               if(!_loc3_)
               {
                  addr0038:
                  this._1768900535effectFeatureButton = param1;
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectFeatureButton",_loc2_,param1));
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
         §§goto(addr0038);
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
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  addr003b:
                  this._713468034effectHeader = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0055:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectHeader",_loc2_,param1));
                        }
                     }
                     §§goto(addr0064);
                  }
                  §§goto(addr0055);
               }
            }
            addr0064:
            return;
         }
         §§goto(addr003b);
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
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  addr0054:
                  this._911984155effectsComponent = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectsComponent",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0054);
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
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._1840699177energyGroup = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"energyGroup",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get energyIcon() : BriskImageDynaLib
      {
         return this._1464688417energyIcon;
      }
      
      public function set energyIcon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1464688417energyIcon;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1464688417energyIcon = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"energyIcon",_loc2_,param1));
                        }
                     }
                     §§goto(addr0074);
                  }
                  §§goto(addr0065);
               }
            }
         }
         addr0074:
      }
      
      [Bindable(event="propertyChange")]
      public function get energyLabel() : LocaLabel
      {
         return this._1836601012energyLabel;
      }
      
      public function set energyLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1836601012energyLabel;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._1836601012energyLabel = param1;
                  if(_loc4_)
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"energyLabel",_loc2_,param1));
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
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1684755691flavorText = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr0044);
                  }
                  §§goto(addr0053);
               }
               addr0044:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr0053:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavorText",_loc2_,param1));
                  }
               }
               §§goto(addr0062);
            }
            addr0062:
            return;
         }
         §§goto(addr0053);
      }
      
      [Bindable(event="propertyChange")]
      public function get moodGroup() : HGroup
      {
         return this._899936824moodGroup;
      }
      
      public function set moodGroup(param1:HGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._899936824moodGroup;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._899936824moodGroup = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moodGroup",_loc2_,param1));
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
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._306079728moodIcon = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moodIcon",_loc2_,param1));
                        }
                     }
                     §§goto(addr0084);
                  }
               }
               §§goto(addr0075);
            }
         }
         addr0084:
      }
      
      [Bindable(event="propertyChange")]
      public function get moodLabel() : LocaLabel
      {
         return this._895838659moodLabel;
      }
      
      public function set moodLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._895838659moodLabel;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._895838659moodLabel = param1;
                  if(_loc3_)
                  {
                     addr005b:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           addr0073:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moodLabel",_loc2_,param1));
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
         §§goto(addr005b);
      }
      
      [Bindable(event="propertyChange")]
      public function get outcomeGroup() : StickyNoteComponent
      {
         return this._1419001267outcomeGroup;
      }
      
      public function set outcomeGroup(param1:StickyNoteComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1419001267outcomeGroup;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._1419001267outcomeGroup = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"outcomeGroup",_loc2_,param1));
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
      public function get outcomeHeader() : PostitHeaderComponent
      {
         return this._1023176577outcomeHeader;
      }
      
      public function set outcomeHeader(param1:PostitHeaderComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1023176577outcomeHeader;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1023176577outcomeHeader = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0064:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"outcomeHeader",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0073);
               }
               §§goto(addr0064);
            }
            addr0073:
            return;
         }
         §§goto(addr0064);
      }
      
      [Bindable(event="propertyChange")]
      public function get outputImage() : BriskImageDynaLib
      {
         return this._844949286outputImage;
      }
      
      public function set outputImage(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._844949286outputImage;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._844949286outputImage = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     addr0060:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"outputImage",_loc2_,param1));
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
      public function get outputLabel() : LocaLabel
      {
         return this._842535309outputLabel;
      }
      
      public function set outputLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._842535309outputLabel;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._842535309outputLabel = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"outputLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr006e);
               }
            }
         }
         addr007d:
      }
      
      [Bindable(event="propertyChange")]
      public function get possibleOutcome() : HGroup
      {
         return this._414639265possibleOutcome;
      }
      
      public function set possibleOutcome(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._414639265possibleOutcome;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._414639265possibleOutcome = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"possibleOutcome",_loc2_,param1));
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
         §§goto(addr0067);
      }
      
      [Bindable(event="propertyChange")]
      public function get residentComponent() : StickyNoteComponent
      {
         return this._276043379residentComponent;
      }
      
      public function set residentComponent(param1:StickyNoteComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._276043379residentComponent;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._276043379residentComponent = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"residentComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0074);
                  }
                  §§goto(addr0065);
               }
            }
         }
         addr0074:
      }
      
      [Bindable(event="propertyChange")]
      public function get residentFeatureButton() : DynamicImageButton
      {
         return this._814154328residentFeatureButton;
      }
      
      public function set residentFeatureButton(param1:DynamicImageButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._814154328residentFeatureButton;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._814154328residentFeatureButton = param1;
                  addr003f:
                  if(!_loc4_)
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"residentFeatureButton",_loc2_,param1));
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
         §§goto(addr003f);
      }
      
      [Bindable(event="propertyChange")]
      public function get residentHeader() : PostitHeaderComponent
      {
         return this._1013833725residentHeader;
      }
      
      public function set residentHeader(param1:PostitHeaderComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1013833725residentHeader;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._1013833725residentHeader = param1;
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr0065);
                  }
                  §§goto(addr007c);
               }
               addr0065:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     addr007c:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"residentHeader",_loc2_,param1));
                  }
               }
               §§goto(addr008b);
            }
            addr008b:
            return;
         }
         §§goto(addr007c);
      }
      
      [Bindable(event="propertyChange")]
      public function get residentInfoGroup() : HGroup
      {
         return this._1961678079residentInfoGroup;
      }
      
      public function set residentInfoGroup(param1:HGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1961678079residentInfoGroup;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1961678079residentInfoGroup = param1;
                  if(_loc3_)
                  {
                     addr0041:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"residentInfoGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr005f);
               }
               §§goto(addr0041);
            }
            addr005f:
            return;
         }
         §§goto(addr0041);
      }
      
      [Bindable(event="propertyChange")]
      public function get residentList() : List
      {
         return this._311670258residentList;
      }
      
      public function set residentList(param1:List) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._311670258residentList;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._311670258residentList = param1;
                  if(_loc4_)
                  {
                     addr0043:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"residentList",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0062);
               }
               §§goto(addr0043);
            }
            addr0062:
            return;
         }
         §§goto(addr0043);
      }
      
      [Bindable(event="propertyChange")]
      public function get residentTotaLabel() : LocaLabel
      {
         return this._517409340residentTotaLabel;
      }
      
      public function set residentTotaLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._517409340residentTotaLabel;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._517409340residentTotaLabel = param1;
                  if(_loc4_)
                  {
                     addr0062:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"residentTotaLabel",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0062);
      }
      
      [Bindable(event="propertyChange")]
      public function get residents() : HGroup
      {
         return this._2124045603residents;
      }
      
      public function set residents(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2124045603residents;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  addr004f:
                  this._2124045603residents = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"residents",_loc2_,param1));
                        }
                     }
                     §§goto(addr0078);
                  }
               }
               §§goto(addr0069);
            }
            addr0078:
            return;
         }
         §§goto(addr004f);
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
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._188635812restrictionFeatureButton = param1;
                  if(!_loc4_)
                  {
                     addr0060:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionFeatureButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007e);
               }
               §§goto(addr0060);
            }
            addr007e:
            return;
         }
         §§goto(addr006f);
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
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._294445069restrictionGfx = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionGfx",_loc2_,param1));
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
      public function get restrictionGroup() : StickyNoteComponent
      {
         return this._505777645restrictionGroup;
      }
      
      public function set restrictionGroup(param1:StickyNoteComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._505777645restrictionGroup;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._505777645restrictionGroup = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionGroup",_loc2_,param1));
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
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._1516951929restrictionHeader = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionHeader",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007e);
               }
               §§goto(addr006f);
            }
            addr007e:
            return;
         }
         §§goto(addr006f);
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
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._538066039restrictionName = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr0056);
                  }
                  §§goto(addr006d);
               }
               addr0056:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr006d:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionName",_loc2_,param1));
                  }
               }
               §§goto(addr007c);
            }
            addr007c:
            return;
         }
         §§goto(addr006d);
      }
   }
}

