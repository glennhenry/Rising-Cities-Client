package net.bigpoint.cityrama.view.miniLayer.ui
{
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.miniLayer.vo.ConstructionMiniLayerVo;
   import net.bigpoint.cityrama.model.residentialBook.vo.ResidentialNeedVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicPlusButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.PostitHeaderComponentMultiline;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   import net.bigpoint.cityrama.view.common.skins.DynamicPlusButtonSkin;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.NeedItemComponent;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class ConstructionMiniLayer extends MiniLayerWindow
   {
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         _skinParts = {
            "moveArea":false,
            "sparkle":false,
            "closeButton":false,
            "controlBarGroup":false,
            "attentionSign":false,
            "contentGroup":false,
            "titleDisplay":false
         };
      }
      
      private var _1229015684amountLabel:LocaLabel;
      
      private var _1255424046ddButton:DynamicPlusButton;
      
      private var _800887486flavourText:LocaLabel;
      
      private var _150471954instantDDText:LocaLabel;
      
      private var _273241018mainGroup:VGroup;
      
      private var _1604340842materialComponent:Group;
      
      private var _1935639916materialHeader:PostitHeaderComponentMultiline;
      
      private var _1169656716materialImage:NeedItemComponent;
      
      private var _391232536postIts:HGroup;
      
      private var _1182751149startConstruction:MultistateButton;
      
      private var _110364485timer:TimerBarComponent;
      
      private var _500208440timerComponent:StickyNoteComponent;
      
      private var _707097038timerHeader:PostitHeaderComponentMultiline;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _constructionData:ConstructionMiniLayerVo;
      
      private var _isDirty:Boolean;
      
      public function ConstructionMiniLayer()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super();
            if(!(_loc1_ && _loc2_))
            {
               mx_internal::_document = this;
               if(!(_loc1_ && _loc1_))
               {
                  this.width = 540;
                  if(!(_loc1_ && _loc2_))
                  {
                     this.height = 313;
                     if(_loc2_)
                     {
                        §§goto(addr007a);
                     }
                     §§goto(addr008c);
                  }
               }
               §§goto(addr007a);
            }
            §§goto(addr008c);
         }
         addr007a:
         this.showAttentionSign = true;
         if(_loc2_ || _loc2_)
         {
            addr008c:
            this.mxmlContentFactory = new DeferredInstanceFromFunction(this._ConstructionMiniLayer_Array1_c);
            if(_loc2_)
            {
               this.addEventListener("creationComplete",this.___ConstructionMiniLayer_MiniLayerWindow1_creationComplete);
            }
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(!_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_ || _loc2_)
                  {
                     §§goto(addr0044);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
         }
         addr0044:
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
      
      private function handleCreationComplete() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            this.setTapes();
            if(!_loc2_)
            {
               this.title = LocaUtils.getString("rcl.miniLayer.construction","rcl.miniLayer.construction.title");
               if(_loc1_)
               {
                  this.flavourText.text = LocaUtils.getString("rcl.miniLayer.construction","rcl.miniLayer.construction.flavour");
                  addr0047:
                  if(_loc1_)
                  {
                     addr0068:
                     this.startConstruction.label = LocaUtils.getString("rcl.miniLayer.construction","rcl.miniLayer.construction.button");
                     if(!_loc2_)
                     {
                        addr0080:
                        this.timerHeader.text = LocaUtils.getString("rcl.miniLayer.construction","rcl.miniLayer.construction.time");
                     }
                     §§goto(addr0092);
                  }
                  §§goto(addr0080);
               }
               addr0092:
               return;
            }
            §§goto(addr0047);
         }
         §§goto(addr0068);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:TimerBarComponentVo = null;
         if(_loc2_ || Boolean(_loc1_))
         {
            super.commitProperties();
            if(!(_loc3_ && _loc2_))
            {
               §§push(Boolean(this._constructionData));
               if(_loc2_)
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(_temp_3)
                  {
                     if(!_loc3_)
                     {
                        addr0049:
                        §§pop();
                        if(_loc2_)
                        {
                           §§goto(addr0059);
                        }
                        §§goto(addr006a);
                     }
                     §§goto(addr0058);
                  }
                  addr0059:
                  §§push(this._isDirty);
                  if(!_loc3_)
                  {
                     addr0058:
                     §§push(§§pop());
                  }
                  if(§§pop())
                  {
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr006a:
                        this._isDirty = false;
                     }
                     addr006f:
                     _loc1_ = new TimerBarComponentVo();
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(_loc1_);
                        §§push(this._constructionData.constructionStepEndTime);
                        if(_loc2_ || Boolean(this))
                        {
                           §§push(§§pop() - this._constructionData.constructionStepLength);
                        }
                        §§pop().startTime = §§pop();
                        if(!_loc3_)
                        {
                           _loc1_.currentTime = this._constructionData.constructionCurrentTime;
                           if(_loc2_)
                           {
                              _loc1_.targetTime = this._constructionData.constructionStepEndTime;
                              if(_loc2_ || _loc2_)
                              {
                                 _loc1_.cycleLength = this._constructionData.constructionStepLength;
                                 if(_loc2_ || _loc2_)
                                 {
                                    §§push(_loc1_);
                                    §§push(this._constructionData.hasStarted);
                                    if(_loc2_)
                                    {
                                       §§push(!§§pop());
                                    }
                                    §§pop().waitingForStart = §§pop();
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       if(this._constructionData.hasStarted)
                                       {
                                          if(!(_loc3_ && Boolean(_loc1_)))
                                          {
                                             _loc1_.userMayStart = true;
                                             if(!_loc3_)
                                             {
                                                this.materialComponent.includeInLayout = false;
                                                if(!_loc3_)
                                                {
                                                   this.materialComponent.visible = false;
                                                   if(_loc2_)
                                                   {
                                                      addr0144:
                                                      §§push(this.timerComponent);
                                                      if(_loc2_)
                                                      {
                                                         §§push(true);
                                                         if(_loc2_ || Boolean(this))
                                                         {
                                                            §§pop().tapeLeft = §§pop();
                                                            if(_loc2_ || Boolean(_loc1_))
                                                            {
                                                               §§push(this.startConstruction);
                                                               if(!(_loc3_ && Boolean(_loc1_)))
                                                               {
                                                                  §§push(false);
                                                                  if(_loc2_)
                                                                  {
                                                                     §§pop().enabled = §§pop();
                                                                     if(_loc2_)
                                                                     {
                                                                        §§goto(addr0227);
                                                                     }
                                                                     §§goto(addr0266);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr021f:
                                                                     §§pop().enabled = §§pop();
                                                                     if(_loc2_)
                                                                     {
                                                                        §§goto(addr0227);
                                                                     }
                                                                  }
                                                                  §§goto(addr02e7);
                                                               }
                                                               else
                                                               {
                                                                  addr0218:
                                                                  §§push(this._constructionData.materialAvailable);
                                                               }
                                                               §§goto(addr021f);
                                                            }
                                                            else
                                                            {
                                                               addr01cf:
                                                               _loc1_.userMayStart = this._constructionData.materialAvailable;
                                                               if(_loc2_ || Boolean(this))
                                                               {
                                                                  addr01e7:
                                                                  this.amountLabel.text = this._constructionData.amountNeeded + "x";
                                                                  if(!_loc3_)
                                                                  {
                                                                     this.materialHeader.text = LocaUtils.getString("rcl.miniLayer.construction","rcl.miniLayer.construction.resources");
                                                                     if(!_loc3_)
                                                                     {
                                                                        addr0214:
                                                                        §§goto(addr0218);
                                                                        §§push(this.startConstruction);
                                                                     }
                                                                     §§goto(addr0227);
                                                                  }
                                                                  §§goto(addr02e7);
                                                               }
                                                               §§goto(addr0214);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr01bf:
                                                            §§pop().tapeLeft = §§pop();
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               §§goto(addr01cf);
                                                            }
                                                         }
                                                         §§goto(addr0214);
                                                      }
                                                      else
                                                      {
                                                         addr01be:
                                                         §§push(false);
                                                      }
                                                      §§goto(addr01bf);
                                                   }
                                                   §§goto(addr01cf);
                                                }
                                                §§goto(addr0246);
                                             }
                                             §§goto(addr01e7);
                                          }
                                          §§goto(addr0227);
                                       }
                                       else
                                       {
                                          this.materialComponent.includeInLayout = true;
                                          if(!_loc3_)
                                          {
                                             addr01a6:
                                             this.materialComponent.visible = true;
                                             if(!(_loc3_ && Boolean(_loc1_)))
                                             {
                                                §§goto(addr01be);
                                                §§push(this.timerComponent);
                                             }
                                             §§goto(addr02e7);
                                          }
                                       }
                                       §§goto(addr0246);
                                    }
                                    §§goto(addr02e7);
                                 }
                                 addr0227:
                                 this.setNeeds();
                                 if(_loc2_)
                                 {
                                    this.timer.data = _loc1_;
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       addr0246:
                                       this.instantDDText.text = LocaUtils.getString("rcl.miniLayer.construction","rcl.miniLayer.construction.instant",[this._constructionData.realCurrencyCosts]);
                                       if(!_loc3_)
                                       {
                                          addr0266:
                                          §§push(this.ddButton);
                                          if(_loc2_ || Boolean(this))
                                          {
                                             §§push(this._constructionData);
                                             if(_loc2_)
                                             {
                                                §§push(§§pop().hasEnoughRC);
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   §§pop().showSparkle = §§pop();
                                                   if(_loc2_ || Boolean(_loc1_))
                                                   {
                                                      §§push(this.ddButton);
                                                      if(!(_loc3_ && Boolean(_loc1_)))
                                                      {
                                                         §§push(this._constructionData);
                                                         if(!(_loc3_ && Boolean(this)))
                                                         {
                                                            §§push(§§pop().hasEnoughRC);
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               addr02de:
                                                               §§push(!§§pop());
                                                            }
                                                            §§pop().showPlus = §§pop();
                                                            if(!_loc3_)
                                                            {
                                                               §§goto(addr02ef);
                                                            }
                                                            §§goto(addr02fa);
                                                         }
                                                         addr02ef:
                                                         this.ddButton.priceToConfirm = this._constructionData.realCurrencyCosts;
                                                         §§goto(addr02eb);
                                                      }
                                                      addr02eb:
                                                      addr02e7:
                                                      if(!_loc3_)
                                                      {
                                                         addr02fa:
                                                         this.setTooltips();
                                                      }
                                                   }
                                                   §§goto(addr0300);
                                                }
                                                §§goto(addr02de);
                                             }
                                             §§goto(addr02ef);
                                          }
                                          §§goto(addr02eb);
                                       }
                                       §§goto(addr02fa);
                                    }
                                 }
                              }
                              §§goto(addr0300);
                           }
                           §§goto(addr0144);
                        }
                        §§goto(addr01a6);
                     }
                     §§goto(addr0227);
                  }
                  addr0300:
                  return;
               }
               §§goto(addr0049);
            }
         }
         §§goto(addr006f);
      }
      
      private function setTooltips() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.timer.progressBar.toolTip = LocaUtils.getString("rcl.tooltips.miniLayer","rcl.tooltips.miniLayer.construction.timer");
            if(_loc2_ || Boolean(this))
            {
               this.startConstruction.toolTip = LocaUtils.getString("rcl.tooltips.miniLayer","rcl.tooltips.miniLayer.construction.buildButton");
               if(!_loc3_)
               {
                  addr0052:
                  this.ddButton.toolTip = LocaUtils.getString("rcl.tooltips.miniLayer","rcl.tooltips.miniLayer.construction.instant");
               }
            }
            §§push(LocaUtils);
            §§push("rcl.goods.goodname");
            §§push("rcl.goods.goodname.");
            if(_loc2_)
            {
               §§push(§§pop() + this._constructionData.assetGfxId);
            }
            §§push(§§pop().getString(§§pop(),§§pop()));
            if(!(_loc3_ && _loc1_))
            {
               §§push(§§pop());
            }
            var _loc1_:* = §§pop();
            if(_loc2_)
            {
               if(this._constructionData.materialAvailable)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(this.materialImage);
                     if(!(_loc3_ && _loc1_))
                     {
                        §§push(§§pop().icon);
                        if(!(_loc3_ && _loc3_))
                        {
                           §§pop().toolTip = _loc1_;
                           if(_loc2_ || _loc2_)
                           {
                           }
                        }
                        else
                        {
                           addr00f1:
                           §§push(this._constructionData.amountOwned + "/");
                           if(!_loc3_)
                           {
                              §§push(§§pop() + this._constructionData.amountNeeded);
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§push(§§pop() + " ");
                                 if(_loc2_)
                                 {
                                    §§push(§§pop() + _loc1_);
                                 }
                              }
                           }
                           §§pop().toolTip = §§pop();
                        }
                        §§goto(addr0132);
                     }
                     else
                     {
                        addr00ee:
                        §§push(§§pop().icon);
                     }
                     §§goto(addr00f1);
                  }
                  §§goto(addr0132);
               }
               else
               {
                  §§push(this.materialImage);
               }
               §§goto(addr00ee);
            }
            addr0132:
            return;
         }
         §§goto(addr0052);
      }
      
      public function setData(param1:ConstructionMiniLayerVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._isDirty = true;
            if(!(_loc2_ && _loc2_))
            {
               this._constructionData = param1;
               if(!(_loc2_ && Boolean(this)))
               {
                  addr0049:
                  invalidateProperties();
               }
               §§goto(addr004e);
            }
            §§goto(addr0049);
         }
         addr004e:
      }
      
      private function setTapes() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this.timerComponent);
            if(!(_loc2_ && _loc1_))
            {
               §§pop().rightTape.setStyle("top",20);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(this.timerComponent);
                  if(_loc1_)
                  {
                     §§goto(addr0050);
                  }
                  §§goto(addr0096);
               }
               §§goto(addr0092);
            }
            addr0050:
            §§pop().rightTape.setStyle("bottom",20);
            if(_loc1_ || Boolean(this))
            {
               addr0072:
               §§push(this.timerComponent);
               if(!_loc2_)
               {
                  §§pop().leftTape.setStyle("top",10);
                  if(_loc1_ || _loc1_)
                  {
                     addr0096:
                     this.timerComponent.leftTape.setStyle("bottom",10);
                     addr0092:
                  }
                  §§goto(addr00a1);
               }
               §§goto(addr0096);
            }
            addr00a1:
            return;
         }
         §§goto(addr0072);
      }
      
      private function setNeeds() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ResidentialNeedVo = new ResidentialNeedVo(this._constructionData.assetLibName,this._constructionData.assetImageName,this._constructionData.materialAvailable,false);
         if(!_loc2_)
         {
            if(this._constructionData.materialAvailable)
            {
               if(_loc3_ || Boolean(_loc1_))
               {
                  §§push(this.materialImage);
                  if(!_loc2_)
                  {
                     §§push("active");
                     if(!(_loc2_ && Boolean(this)))
                     {
                        §§pop().styleName = §§pop();
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr00a8:
                           this.materialImage.data = _loc1_;
                           addr00a4:
                        }
                     }
                     else
                     {
                        addr009d:
                        §§pop().styleName = §§pop();
                        if(_loc3_)
                        {
                           §§goto(addr00a4);
                        }
                     }
                     return;
                  }
                  addr009a:
                  §§push("normal");
                  §§goto(addr009d);
               }
               §§goto(addr00a4);
            }
            else
            {
               §§push(this.materialImage);
               if(!_loc2_)
               {
                  §§goto(addr009a);
               }
            }
            §§goto(addr00a8);
         }
         §§goto(addr00a4);
      }
      
      private function _ConstructionMiniLayer_Array1_c() : Array
      {
         return [this._ConstructionMiniLayer_VGroup1_i()];
      }
      
      private function _ConstructionMiniLayer_VGroup1_i() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               addr0029:
               _loc1_.paddingTop = 10;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.paddingBottom = 45;
                  if(!_loc3_)
                  {
                     _loc1_.horizontalAlign = "center";
                     if(_loc2_ || _loc3_)
                     {
                        _loc1_.gap = -20;
                        if(_loc2_ || _loc3_)
                        {
                           addr0078:
                           _loc1_.mxmlContent = [this._ConstructionMiniLayer_LocaLabel1_i(),this._ConstructionMiniLayer_HGroup1_i(),this._ConstructionMiniLayer_Group2_c(),this._ConstructionMiniLayer_HGroup3_c()];
                           if(_loc2_)
                           {
                              addr009a:
                              _loc1_.id = "mainGroup";
                              if(_loc2_)
                              {
                                 if(!_loc1_.document)
                                 {
                                    if(!_loc3_)
                                    {
                                       _loc1_.document = this;
                                       if(!(_loc3_ && Boolean(this)))
                                       {
                                          addr00cf:
                                          this.mainGroup = _loc1_;
                                          if(_loc2_ || _loc2_)
                                          {
                                             addr00e1:
                                             BindingManager.executeBindings(this,"mainGroup",this.mainGroup);
                                          }
                                       }
                                       §§goto(addr00ee);
                                    }
                                 }
                                 §§goto(addr00cf);
                              }
                              §§goto(addr00e1);
                           }
                           §§goto(addr00cf);
                        }
                        addr00ee:
                        return _loc1_;
                     }
                  }
                  §§goto(addr00e1);
               }
               §§goto(addr0078);
            }
            §§goto(addr009a);
         }
         §§goto(addr0029);
      }
      
      private function _ConstructionMiniLayer_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.height = 45;
            if(_loc3_)
            {
               _loc1_.percentWidth = 85;
               if(!_loc2_)
               {
                  _loc1_.styleName = "miniLayerFlavourText";
                  if(_loc3_)
                  {
                     §§goto(addr0056);
                  }
                  §§goto(addr0069);
               }
               §§goto(addr007d);
            }
            §§goto(addr009b);
         }
         addr0056:
         _loc1_.id = "flavourText";
         if(_loc3_ || Boolean(this))
         {
            addr0069:
            if(!_loc1_.document)
            {
               if(_loc3_ || _loc2_)
               {
                  addr007d:
                  _loc1_.document = this;
                  if(_loc3_ || _loc2_)
                  {
                     addr009b:
                     this.flavourText = _loc1_;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        BindingManager.executeBindings(this,"flavourText",this.flavourText);
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
      
      private function _ConstructionMiniLayer_HGroup1_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.gap = -40;
            if(_loc3_ || _loc2_)
            {
               addr0032:
               _loc1_.top = -36;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.height = 170;
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.mxmlContent = [this._ConstructionMiniLayer_Group1_i(),this._ConstructionMiniLayer_StickyNoteComponent1_i()];
                        if(!(_loc2_ && _loc3_))
                        {
                           _loc1_.id = "postIts";
                           if(!_loc2_)
                           {
                              addr009f:
                              if(!_loc1_.document)
                              {
                                 if(!_loc2_)
                                 {
                                    _loc1_.document = this;
                                    if(_loc3_ || _loc3_)
                                    {
                                       addr00c7:
                                       this.postIts = _loc1_;
                                       if(_loc3_)
                                       {
                                          addr00d1:
                                          BindingManager.executeBindings(this,"postIts",this.postIts);
                                       }
                                    }
                                    §§goto(addr00de);
                                 }
                              }
                              §§goto(addr00c7);
                           }
                           §§goto(addr00de);
                        }
                        §§goto(addr00c7);
                     }
                     addr00de:
                     return _loc1_;
                  }
               }
               §§goto(addr00d1);
            }
            §§goto(addr009f);
         }
         §§goto(addr0032);
      }
      
      private function _ConstructionMiniLayer_Group1_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.mxmlContent = [this._ConstructionMiniLayer_BriskImageDynaLib1_c(),this._ConstructionMiniLayer_BriskMCDynaLib1_c(),this._ConstructionMiniLayer_VGroup2_c()];
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.id = "materialComponent";
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(this)))
                     {
                        _loc1_.document = this;
                        if(_loc3_ || Boolean(this))
                        {
                           addr008c:
                           this.materialComponent = _loc1_;
                           if(!_loc2_)
                           {
                              BindingManager.executeBindings(this,"materialComponent",this.materialComponent);
                           }
                        }
                        return _loc1_;
                     }
                  }
               }
            }
         }
         §§goto(addr008c);
      }
      
      private function _ConstructionMiniLayer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_miniLayer";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "paper_quadrille_small";
               if(!(_loc2_ && _loc3_))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr0057:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr005b);
               }
            }
            §§goto(addr0057);
         }
         addr005b:
         return _loc1_;
      }
      
      private function _ConstructionMiniLayer_BriskMCDynaLib1_c() : BriskMCDynaLib
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
               addr0032:
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.top = -6;
                  if(_loc2_)
                  {
                     _loc1_.horizontalCenter = 0;
                     §§goto(addr005d);
                  }
                  §§goto(addr008f);
               }
               addr005d:
               if(!(_loc3_ && _loc3_))
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr008f:
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr0093);
            }
            addr0093:
            return _loc1_;
         }
         §§goto(addr0032);
      }
      
      private function _ConstructionMiniLayer_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!_loc2_)
         {
            _loc1_.horizontalCenter = 0;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.top = 25;
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._ConstructionMiniLayer_PostitHeaderComponentMultiline1_i(),this._ConstructionMiniLayer_HGroup2_c()];
                  if(!_loc2_)
                  {
                     addr006e:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr0086);
               }
               §§goto(addr006e);
            }
            addr0086:
            return _loc1_;
         }
         §§goto(addr006e);
      }
      
      private function _ConstructionMiniLayer_PostitHeaderComponentMultiline1_i() : PostitHeaderComponentMultiline
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:PostitHeaderComponentMultiline = new PostitHeaderComponentMultiline();
         if(_loc2_)
         {
            _loc1_.id = "materialHeader";
            if(!(_loc3_ && _loc2_))
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     _loc1_.document = this;
                     if(!_loc3_)
                     {
                        §§goto(addr0064);
                     }
                     §§goto(addr006e);
                  }
               }
               addr0064:
               this.materialHeader = _loc1_;
               if(!_loc3_)
               {
                  addr006e:
                  BindingManager.executeBindings(this,"materialHeader",this.materialHeader);
               }
               §§goto(addr007b);
            }
            addr007b:
            return _loc1_;
         }
         §§goto(addr006e);
      }
      
      private function _ConstructionMiniLayer_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.gap = 20;
            if(_loc3_)
            {
               _loc1_.paddingRight = 55;
               if(!_loc2_)
               {
                  §§goto(addr004d);
               }
            }
            §§goto(addr0077);
         }
         addr004d:
         _loc1_.mxmlContent = [this._ConstructionMiniLayer_LocaLabel2_i(),this._ConstructionMiniLayer_NeedItemComponent1_i()];
         if(!(_loc2_ && Boolean(this)))
         {
            if(!_loc1_.document)
            {
               if(!_loc2_)
               {
                  addr0077:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _ConstructionMiniLayer_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.styleName = "amountLabel";
            if(_loc2_)
            {
               _loc1_.maxWidth = 66;
               if(_loc2_ || _loc3_)
               {
                  addr003c:
                  _loc1_.setStyle("paddingTop",25);
                  if(_loc2_ || _loc2_)
                  {
                     §§goto(addr0061);
                  }
                  §§goto(addr00a7);
               }
            }
            addr0061:
            _loc1_.id = "amountLabel";
            if(_loc2_ || _loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     §§goto(addr008c);
                  }
               }
               §§goto(addr0095);
            }
            addr008c:
            _loc1_.document = this;
            if(!_loc3_)
            {
               addr0095:
               this.amountLabel = _loc1_;
               if(!(_loc3_ && _loc3_))
               {
                  addr00a7:
                  BindingManager.executeBindings(this,"amountLabel",this.amountLabel);
               }
            }
            return _loc1_;
         }
         §§goto(addr003c);
      }
      
      private function _ConstructionMiniLayer_NeedItemComponent1_i() : NeedItemComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:NeedItemComponent = new NeedItemComponent();
         if(!_loc3_)
         {
            _loc1_.id = "materialImage";
            if(_loc2_ || Boolean(this))
            {
               if(!_loc1_.document)
               {
                  if(_loc2_ || Boolean(this))
                  {
                     §§goto(addr0061);
                  }
                  §§goto(addr007c);
               }
               §§goto(addr006a);
            }
         }
         addr0061:
         _loc1_.document = this;
         if(_loc2_)
         {
            addr006a:
            this.materialImage = _loc1_;
            if(_loc2_ || _loc3_)
            {
               addr007c:
               BindingManager.executeBindings(this,"materialImage",this.materialImage);
            }
         }
         return _loc1_;
      }
      
      private function _ConstructionMiniLayer_StickyNoteComponent1_i() : StickyNoteComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.width = 240;
            if(!_loc2_)
            {
               _loc1_.height = 125;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.tapeRight = true;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.tapeLeft = true;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ConstructionMiniLayer_Array7_c);
                        if(_loc3_ || _loc2_)
                        {
                           §§goto(addr0090);
                        }
                     }
                     §§goto(addr009b);
                  }
                  §§goto(addr0090);
               }
               §§goto(addr00bb);
            }
            addr0090:
            _loc1_.id = "timerComponent";
            if(!_loc2_)
            {
               addr009b:
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     addr00bb:
                     _loc1_.document = this;
                     if(_loc3_)
                     {
                        §§goto(addr00c4);
                     }
                     §§goto(addr00d6);
                  }
               }
            }
            addr00c4:
            this.timerComponent = _loc1_;
            if(_loc3_ || _loc3_)
            {
               addr00d6:
               BindingManager.executeBindings(this,"timerComponent",this.timerComponent);
            }
            return _loc1_;
         }
         §§goto(addr00d6);
      }
      
      private function _ConstructionMiniLayer_Array7_c() : Array
      {
         return [this._ConstructionMiniLayer_VGroup3_c()];
      }
      
      private function _ConstructionMiniLayer_VGroup3_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.horizontalCenter = 0;
            if(_loc2_)
            {
               _loc1_.top = -5;
               if(_loc2_ || _loc2_)
               {
                  addr005f:
                  _loc1_.mxmlContent = [this._ConstructionMiniLayer_PostitHeaderComponentMultiline2_i(),this._ConstructionMiniLayer_TimerBarComponent1_i()];
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr007d);
                  }
                  §§goto(addr0089);
               }
               addr007d:
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr0089:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr008d);
            }
            §§goto(addr005f);
         }
         addr008d:
         return _loc1_;
      }
      
      private function _ConstructionMiniLayer_PostitHeaderComponentMultiline2_i() : PostitHeaderComponentMultiline
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:PostitHeaderComponentMultiline = new PostitHeaderComponentMultiline();
         if(_loc3_)
         {
            _loc1_.id = "timerHeader";
            if(!_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr005a:
                     _loc1_.document = this;
                     if(!(_loc2_ && _loc2_))
                     {
                        addr006b:
                        this.timerHeader = _loc1_;
                        if(!_loc2_)
                        {
                           addr0075:
                           BindingManager.executeBindings(this,"timerHeader",this.timerHeader);
                        }
                        §§goto(addr0082);
                     }
                     §§goto(addr0075);
                  }
                  addr0082:
                  return _loc1_;
               }
               §§goto(addr006b);
            }
            §§goto(addr005a);
         }
         §§goto(addr006b);
      }
      
      private function _ConstructionMiniLayer_TimerBarComponent1_i() : TimerBarComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:TimerBarComponent = new TimerBarComponent();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.showBoostButton = true;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               addr0048:
               _loc1_.id = "timer";
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr005f:
                        _loc1_.document = this;
                        if(_loc2_ || Boolean(this))
                        {
                           addr007c:
                           this.timer = _loc1_;
                           if(!(_loc3_ && Boolean(this)))
                           {
                              BindingManager.executeBindings(this,"timer",this.timer);
                           }
                        }
                     }
                     §§goto(addr009b);
                  }
                  §§goto(addr007c);
               }
               §§goto(addr005f);
            }
            addr009b:
            return _loc1_;
         }
         §§goto(addr0048);
      }
      
      private function _ConstructionMiniLayer_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.height = 25;
            if(!_loc3_)
            {
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
      
      private function _ConstructionMiniLayer_HGroup3_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.gap = 6;
            if(_loc2_ || _loc3_)
            {
               _loc1_.mxmlContent = [this._ConstructionMiniLayer_Group3_c(),this._ConstructionMiniLayer_DynamicPlusButton1_i()];
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
                  return _loc1_;
               }
            }
         }
         §§goto(addr0074);
      }
      
      private function _ConstructionMiniLayer_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.mxmlContent = [this._ConstructionMiniLayer_LocaLabel3_i(),this._ConstructionMiniLayer_MultistateButton1_i()];
            if(_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr0057:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0057);
      }
      
      private function _ConstructionMiniLayer_LocaLabel3_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.width = 185;
            if(_loc3_)
            {
               _loc1_.height = 26;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.styleName = "blueMiniLayerText";
                  if(!_loc2_)
                  {
                     addr0051:
                     _loc1_.verticalCenter = "middle";
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr0073:
                        _loc1_.visible = false;
                        if(_loc3_ || Boolean(this))
                        {
                           addr0084:
                           _loc1_.bottom = 0;
                           if(!_loc2_)
                           {
                              _loc1_.id = "instantDDText";
                              if(!_loc2_)
                              {
                                 addr009a:
                                 if(!_loc1_.document)
                                 {
                                    if(!(_loc2_ && Boolean(_loc1_)))
                                    {
                                       _loc1_.document = this;
                                       if(_loc3_)
                                       {
                                          addr00c4:
                                          this.instantDDText = _loc1_;
                                          if(!_loc2_)
                                          {
                                             addr00ce:
                                             BindingManager.executeBindings(this,"instantDDText",this.instantDDText);
                                          }
                                       }
                                       return _loc1_;
                                    }
                                 }
                              }
                           }
                           §§goto(addr00c4);
                        }
                        §§goto(addr00ce);
                     }
                     §§goto(addr009a);
                  }
                  §§goto(addr0073);
               }
               §§goto(addr0051);
            }
            §§goto(addr0084);
         }
         §§goto(addr009a);
      }
      
      private function _ConstructionMiniLayer_MultistateButton1_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.width = 204;
            if(_loc2_)
            {
               _loc1_.imageNameLeft = "icon_build";
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.libNameLeft = "gui_popups_miniLayer";
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.id = "startConstruction";
                     if(!_loc3_)
                     {
                        addr0070:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              §§goto(addr008f);
                           }
                        }
                     }
                     §§goto(addr00a0);
                  }
                  §§goto(addr0070);
               }
               §§goto(addr00a0);
            }
            §§goto(addr00aa);
         }
         addr008f:
         _loc1_.document = this;
         if(_loc2_ || _loc2_)
         {
            addr00a0:
            this.startConstruction = _loc1_;
            if(!_loc3_)
            {
               addr00aa:
               BindingManager.executeBindings(this,"startConstruction",this.startConstruction);
            }
         }
         return _loc1_;
      }
      
      private function _ConstructionMiniLayer_DynamicPlusButton1_i() : DynamicPlusButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicPlusButton = new DynamicPlusButton();
         if(_loc3_)
         {
            _loc1_.width = 40;
            if(_loc3_ || _loc2_)
            {
               _loc1_.useConfirmation = true;
               if(_loc3_)
               {
                  _loc1_.iconImageName = "dd_button_icon";
                  if(!_loc2_)
                  {
                     _loc1_.iconLibName = "gui_resources_icons";
                     if(!_loc2_)
                     {
                        _loc1_.setStyle("skinClass",DynamicPlusButtonSkin);
                        if(!_loc2_)
                        {
                           §§goto(addr0072);
                        }
                        §§goto(addr00ae);
                     }
                     addr0072:
                     _loc1_.id = "ddButton";
                     if(_loc3_ || Boolean(this))
                     {
                        addr0085:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr00a5:
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 addr00ae:
                                 this.ddButton = _loc1_;
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    addr00c0:
                                    BindingManager.executeBindings(this,"ddButton",this.ddButton);
                                 }
                                 §§goto(addr00cd);
                              }
                              §§goto(addr00c0);
                           }
                           §§goto(addr00cd);
                        }
                        §§goto(addr00ae);
                     }
                     §§goto(addr00cd);
                  }
                  §§goto(addr0085);
               }
               addr00cd:
               return _loc1_;
            }
            §§goto(addr00a5);
         }
         §§goto(addr0085);
      }
      
      public function ___ConstructionMiniLayer_MiniLayerWindow1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.handleCreationComplete();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get amountLabel() : LocaLabel
      {
         return this._1229015684amountLabel;
      }
      
      public function set amountLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1229015684amountLabel;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._1229015684amountLabel = param1;
                  if(!_loc4_)
                  {
                     addr005f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"amountLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr005f);
            }
            addr0085:
            return;
         }
         §§goto(addr0076);
      }
      
      [Bindable(event="propertyChange")]
      public function get ddButton() : DynamicPlusButton
      {
         return this._1255424046ddButton;
      }
      
      public function set ddButton(param1:DynamicPlusButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1255424046ddButton;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._1255424046ddButton = param1;
                  if(!_loc4_)
                  {
                     addr005a:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ddButton",_loc2_,param1));
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
         §§goto(addr005a);
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourText() : LocaLabel
      {
         return this._800887486flavourText;
      }
      
      public function set flavourText(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._800887486flavourText;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._800887486flavourText = param1;
                  addr003d:
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourText",_loc2_,param1));
                        }
                     }
                     §§goto(addr0078);
                  }
                  §§goto(addr0069);
               }
            }
            addr0078:
            return;
         }
         §§goto(addr003d);
      }
      
      [Bindable(event="propertyChange")]
      public function get instantDDText() : LocaLabel
      {
         return this._150471954instantDDText;
      }
      
      public function set instantDDText(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._150471954instantDDText;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._150471954instantDDText = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"instantDDText",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr005e);
            }
            addr0085:
            return;
         }
         §§goto(addr005e);
      }
      
      [Bindable(event="propertyChange")]
      public function get mainGroup() : VGroup
      {
         return this._273241018mainGroup;
      }
      
      public function set mainGroup(param1:VGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._273241018mainGroup;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._273241018mainGroup = param1;
                  if(!_loc4_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainGroup",_loc2_,param1));
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
      public function get materialComponent() : Group
      {
         return this._1604340842materialComponent;
      }
      
      public function set materialComponent(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1604340842materialComponent;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  addr004c:
                  this._1604340842materialComponent = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"materialComponent",_loc2_,param1));
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
      public function get materialHeader() : PostitHeaderComponentMultiline
      {
         return this._1935639916materialHeader;
      }
      
      public function set materialHeader(param1:PostitHeaderComponentMultiline) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1935639916materialHeader;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1935639916materialHeader = param1;
                  if(_loc3_)
                  {
                     addr0040:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0050:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"materialHeader",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr005f);
               }
               §§goto(addr0050);
            }
            addr005f:
            return;
         }
         §§goto(addr0040);
      }
      
      [Bindable(event="propertyChange")]
      public function get materialImage() : NeedItemComponent
      {
         return this._1169656716materialImage;
      }
      
      public function set materialImage(param1:NeedItemComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1169656716materialImage;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._1169656716materialImage = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     §§goto(addr005e);
                  }
                  §§goto(addr006e);
               }
               addr005e:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr006e:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"materialImage",_loc2_,param1));
                  }
               }
               §§goto(addr007d);
            }
         }
         addr007d:
      }
      
      [Bindable(event="propertyChange")]
      public function get postIts() : HGroup
      {
         return this._391232536postIts;
      }
      
      public function set postIts(param1:HGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._391232536postIts;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._391232536postIts = param1;
                  if(!_loc4_)
                  {
                     §§goto(addr0059);
                  }
                  §§goto(addr0071);
               }
               addr0059:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr0071:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"postIts",_loc2_,param1));
                  }
               }
               §§goto(addr0080);
            }
         }
         addr0080:
      }
      
      [Bindable(event="propertyChange")]
      public function get startConstruction() : MultistateButton
      {
         return this._1182751149startConstruction;
      }
      
      public function set startConstruction(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1182751149startConstruction;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._1182751149startConstruction = param1;
                  if(_loc4_)
                  {
                     addr0056:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"startConstruction",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0056);
            }
         }
         addr0075:
      }
      
      [Bindable(event="propertyChange")]
      public function get timer() : TimerBarComponent
      {
         return this._110364485timer;
      }
      
      public function set timer(param1:TimerBarComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._110364485timer;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._110364485timer = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"timer",_loc2_,param1));
                        }
                     }
                     §§goto(addr0084);
                  }
                  §§goto(addr0075);
               }
            }
         }
         addr0084:
      }
      
      [Bindable(event="propertyChange")]
      public function get timerComponent() : StickyNoteComponent
      {
         return this._500208440timerComponent;
      }
      
      public function set timerComponent(param1:StickyNoteComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._500208440timerComponent;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  addr0051:
                  this._500208440timerComponent = param1;
                  if(_loc3_)
                  {
                     §§goto(addr005b);
                  }
                  §§goto(addr006b);
               }
               addr005b:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr006b:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"timerComponent",_loc2_,param1));
                  }
               }
               §§goto(addr007a);
            }
            addr007a:
            return;
         }
         §§goto(addr0051);
      }
      
      [Bindable(event="propertyChange")]
      public function get timerHeader() : PostitHeaderComponentMultiline
      {
         return this._707097038timerHeader;
      }
      
      public function set timerHeader(param1:PostitHeaderComponentMultiline) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._707097038timerHeader;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._707097038timerHeader = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"timerHeader",_loc2_,param1));
                        }
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr0076);
               }
            }
         }
         addr0085:
      }
   }
}

