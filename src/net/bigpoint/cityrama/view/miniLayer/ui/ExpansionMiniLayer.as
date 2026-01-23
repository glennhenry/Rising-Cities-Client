package net.bigpoint.cityrama.view.miniLayer.ui
{
   import flash.events.Event;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.miniLayer.vo.ExpansionMiniLayerVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicPlusButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.PostitHeaderComponent;
   import net.bigpoint.cityrama.view.common.components.PriceComponent;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.cityrama.view.common.skins.DynamicPlusButtonSkin;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class ExpansionMiniLayer extends MiniLayerWindow
   {
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc2_)
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
      
      private var _306158375buyExpansion:MultistateButton;
      
      private var _1253508016costComponent:StickyNoteComponent;
      
      private var _450449222costHeader:PostitHeaderComponent;
      
      private var _94849606costs:PriceComponent;
      
      private var _1255424046ddButton:DynamicPlusButton;
      
      private var _800887486flavourText:LocaLabel;
      
      private var _150471954instantDDText:LocaLabel;
      
      private var _273241018mainGroup:VGroup;
      
      private var _1935734112saleIcon:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _expansionData:ExpansionMiniLayerVo;
      
      private var _isDirty:Boolean;
      
      public function ExpansionMiniLayer()
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
               if(_loc2_)
               {
                  this.width = 540;
                  if(!(_loc1_ && _loc2_))
                  {
                     addr005d:
                     this.height = 313;
                     if(!(_loc1_ && _loc1_))
                     {
                        this.showAttentionSign = true;
                        if(_loc2_ || _loc1_)
                        {
                           addr008c:
                           this.mxmlContentFactory = new DeferredInstanceFromFunction(this._ExpansionMiniLayer_Array1_c);
                           if(_loc2_)
                           {
                              addr00a1:
                              this.addEventListener("creationComplete",this.___ExpansionMiniLayer_MiniLayerWindow1_creationComplete);
                           }
                        }
                        return;
                     }
                     §§goto(addr00a1);
                  }
                  §§goto(addr008c);
               }
               §§goto(addr00a1);
            }
         }
         §§goto(addr005d);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc3_ || Boolean(param1))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     §§goto(addr0043);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
         }
         addr0043:
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super.initialize();
         }
      }
      
      private function handleCreationComplete(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this.title = LocaUtils.getString("rcl.miniLayer.expansion","rcl.miniLayer.expansion.title");
            if(_loc2_)
            {
               addr0034:
               this.flavourText.text = LocaUtils.getString("rcl.miniLayer.expansion","rcl.miniLayer.expansion.flavour");
               if(!_loc3_)
               {
                  §§push(this.buyExpansion);
                  if(_loc2_ || _loc3_)
                  {
                     §§push(LocaUtils.getString("rcl.miniLayer.expansion","rcl.miniLayer.expansion.button"));
                     if(_loc2_ || Boolean(param1))
                     {
                        §§pop().label = §§pop();
                        if(!_loc3_)
                        {
                           addr0095:
                           this.costHeader.text = LocaUtils.getString("rcl.miniLayer.expansion","rcl.miniLayer.expansion.costs").toUpperCase();
                           if(_loc2_)
                           {
                              addr00ca:
                              this.buyExpansion.toolTip = LocaUtils.getString(String("rcl.tooltips.miniLayer"),String("rcl.tooltips.miniLayer.expansion.button"));
                              addr00b4:
                              addr00b0:
                           }
                        }
                        return;
                     }
                     §§goto(addr00ca);
                  }
                  §§goto(addr00b4);
               }
               §§goto(addr00b0);
            }
            §§goto(addr0095);
         }
         §§goto(addr0034);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.commitProperties();
            if(_loc3_ || _loc2_)
            {
               §§push(Boolean(this._expansionData));
               if(!(_loc2_ && _loc2_))
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  if(_temp_4)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        §§pop();
                        if(_loc3_)
                        {
                           addr0066:
                           addr0054:
                           §§push(this._isDirty);
                           if(_loc3_ || Boolean(this))
                           {
                              addr0065:
                              §§push(§§pop());
                           }
                           if(§§pop())
                           {
                              if(!_loc2_)
                              {
                                 this._isDirty = false;
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§push(this.ddButton);
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§push(this._expansionData);
                                       if(_loc3_)
                                       {
                                          §§push(§§pop().realCurrencyCosts);
                                          if(!_loc2_)
                                          {
                                             §§push(this._expansionData);
                                             if(_loc3_ || Boolean(this))
                                             {
                                                §§push(§§pop().currentRealCurrency);
                                                if(!_loc2_)
                                                {
                                                   §§push(§§pop() <= §§pop());
                                                   if(_loc3_)
                                                   {
                                                      §§pop().showSparkle = §§pop();
                                                      if(!_loc2_)
                                                      {
                                                         §§push(this.ddButton);
                                                         if(!_loc2_)
                                                         {
                                                            addr00de:
                                                            §§push(this._expansionData);
                                                            if(!(_loc2_ && _loc2_))
                                                            {
                                                               addr00ef:
                                                               §§push(§§pop().realCurrencyCosts);
                                                               if(!_loc2_)
                                                               {
                                                                  §§goto(addr00ff);
                                                               }
                                                               §§goto(addr011a);
                                                            }
                                                            §§goto(addr0117);
                                                         }
                                                         §§goto(addr0113);
                                                      }
                                                      §§goto(addr016a);
                                                   }
                                                   addr00ff:
                                                   §§pop().showPlus = §§pop() > this._expansionData.currentRealCurrency;
                                                   §§goto(addr00fe);
                                                }
                                                addr00fe:
                                                §§goto(addr00fb);
                                             }
                                             addr00fb:
                                             §§goto(addr00f7);
                                          }
                                          addr00f7:
                                          if(_loc3_ || _loc2_)
                                          {
                                             addr011a:
                                             this.ddButton.priceToConfirm = this._expansionData.realCurrencyCosts;
                                             addr0117:
                                             addr0113:
                                             if(!_loc2_)
                                             {
                                                this.instantDDText.text = LocaUtils.getString("rcl.miniLayer.expansion","rcl.miniLayer.expansion.instant",[this._expansionData.realCurrencyCosts]);
                                                if(_loc3_ || Boolean(this))
                                                {
                                                   §§push(this.costs);
                                                   if(_loc3_)
                                                   {
                                                      §§pop().affordable = this._expansionData.affordable;
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         addr016e:
                                                         this.costs.priceLabel = LocaUtils.getThousendSeperatedNumber(this._expansionData.costs);
                                                         addr016a:
                                                         if(_loc3_)
                                                         {
                                                            §§goto(addr0183);
                                                         }
                                                         §§goto(addr01d1);
                                                      }
                                                      §§goto(addr0183);
                                                   }
                                                   §§goto(addr016e);
                                                }
                                             }
                                             §§goto(addr01d1);
                                          }
                                          §§goto(addr0183);
                                       }
                                       §§goto(addr00ef);
                                    }
                                    §§goto(addr00de);
                                 }
                                 addr0183:
                                 this.saleIcon.visible = this.saleIcon.includeInLayout = this._expansionData.onSale;
                                 if(!_loc2_)
                                 {
                                    attentionSign.visible = attentionSign.includeInLayout = !this._expansionData.onSale;
                                    addr01a0:
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       addr01d1:
                                       this.buyExpansion.enabled = this._expansionData.affordable;
                                    }
                                 }
                                 §§goto(addr01df);
                              }
                              §§goto(addr016a);
                           }
                        }
                        addr01df:
                        return;
                     }
                  }
                  §§goto(addr0066);
               }
               §§goto(addr0065);
            }
            §§goto(addr01a0);
         }
         §§goto(addr0054);
      }
      
      public function setData(param1:ExpansionMiniLayerVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            if(!RandomUtilities.isEqual(param1,this._expansionData))
            {
               if(_loc2_)
               {
                  this._isDirty = true;
                  if(_loc2_ || Boolean(this))
                  {
                     addr005f:
                     this._expansionData = param1;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr0071:
                        this.invalidateProperties();
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr005f);
            }
            addr0075:
            return;
         }
         §§goto(addr0071);
      }
      
      private function _ExpansionMiniLayer_Array1_c() : Array
      {
         return [this._ExpansionMiniLayer_BriskImageDynaLib1_i(),this._ExpansionMiniLayer_VGroup1_i()];
      }
      
      private function _ExpansionMiniLayer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.top = -60;
            if(!_loc3_)
            {
               _loc1_.left = -30;
               if(_loc2_)
               {
                  addr0037:
                  _loc1_.dynaLibName = "gui_popups_miniLayer";
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.dynaBmpSourceName = "minilayer_sale_icon";
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.width = 77;
                        if(_loc2_ || Boolean(this))
                        {
                           _loc1_.height = 72;
                           if(_loc2_ || _loc3_)
                           {
                              addr008d:
                              _loc1_.id = "saleIcon";
                              if(_loc2_ || _loc3_)
                              {
                                 addr00a0:
                                 if(!_loc1_.document)
                                 {
                                    if(!(_loc3_ && Boolean(_loc1_)))
                                    {
                                       §§goto(addr00bf);
                                    }
                                    §§goto(addr00d2);
                                 }
                                 §§goto(addr00c8);
                              }
                           }
                           addr00bf:
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              addr00c8:
                              this.saleIcon = _loc1_;
                              if(!_loc3_)
                              {
                                 addr00d2:
                                 BindingManager.executeBindings(this,"saleIcon",this.saleIcon);
                              }
                           }
                           §§goto(addr00df);
                        }
                        §§goto(addr00c8);
                     }
                     addr00df:
                     return _loc1_;
                  }
                  §§goto(addr00c8);
               }
               §§goto(addr008d);
            }
            §§goto(addr00a0);
         }
         §§goto(addr0037);
      }
      
      private function _ExpansionMiniLayer_VGroup1_i() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc2_))
            {
               addr003a:
               _loc1_.paddingTop = 10;
               if(!_loc2_)
               {
                  _loc1_.paddingBottom = 45;
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.horizontalAlign = "center";
                     if(!_loc2_)
                     {
                        _loc1_.gap = 10;
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr007f:
                           _loc1_.mxmlContent = [this._ExpansionMiniLayer_LocaLabel1_i(),this._ExpansionMiniLayer_StickyNoteComponent1_i(),this._ExpansionMiniLayer_HGroup1_c()];
                           if(_loc3_ || Boolean(this))
                           {
                              §§goto(addr00a3);
                           }
                           §§goto(addr00b6);
                        }
                        addr00a3:
                        _loc1_.id = "mainGroup";
                        if(!(_loc2_ && _loc2_))
                        {
                           addr00b6:
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || Boolean(_loc1_))
                              {
                                 addr00d9:
                                 _loc1_.document = this;
                                 if(_loc3_)
                                 {
                                    addr00e2:
                                    this.mainGroup = _loc1_;
                                    if(_loc3_ || Boolean(this))
                                    {
                                       BindingManager.executeBindings(this,"mainGroup",this.mainGroup);
                                    }
                                 }
                                 §§goto(addr0101);
                              }
                           }
                           §§goto(addr00e2);
                        }
                        addr0101:
                        return _loc1_;
                     }
                  }
                  §§goto(addr007f);
               }
               §§goto(addr00e2);
            }
            §§goto(addr00d9);
         }
         §§goto(addr003a);
      }
      
      private function _ExpansionMiniLayer_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.height = 45;
            if(_loc3_)
            {
               _loc1_.percentWidth = 85;
               if(!_loc2_)
               {
                  §§goto(addr0035);
               }
               §§goto(addr0056);
            }
            addr0035:
            _loc1_.styleName = "miniLayerFlavourText";
            if(!(_loc2_ && _loc2_))
            {
               addr0056:
               _loc1_.id = "flavourText";
               if(_loc3_)
               {
                  §§goto(addr0061);
               }
               §§goto(addr0095);
            }
            addr0061:
            if(!_loc1_.document)
            {
               if(!_loc2_)
               {
                  _loc1_.document = this;
                  if(_loc3_)
                  {
                     §§goto(addr0083);
                  }
               }
               §§goto(addr0095);
            }
            addr0083:
            this.flavourText = _loc1_;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               addr0095:
               BindingManager.executeBindings(this,"flavourText",this.flavourText);
            }
            §§goto(addr00a2);
         }
         addr00a2:
         return _loc1_;
      }
      
      private function _ExpansionMiniLayer_StickyNoteComponent1_i() : StickyNoteComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(!_loc3_)
         {
            _loc1_.width = 215;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.height = 110;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.tapeTop = true;
                  if(_loc2_)
                  {
                     _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ExpansionMiniLayer_Array3_c);
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr0078:
                        _loc1_.id = "costComponent";
                        if(!(_loc3_ && Boolean(this)))
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 §§goto(addr009f);
                              }
                              §§goto(addr00cd);
                           }
                        }
                        §§goto(addr00bb);
                     }
                     §§goto(addr00cd);
                  }
               }
               addr009f:
               _loc1_.document = this;
               if(!(_loc3_ && _loc3_))
               {
                  addr00bb:
                  this.costComponent = _loc1_;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr00cd:
                     BindingManager.executeBindings(this,"costComponent",this.costComponent);
                  }
               }
               return _loc1_;
            }
            §§goto(addr0078);
         }
         §§goto(addr00bb);
      }
      
      private function _ExpansionMiniLayer_Array3_c() : Array
      {
         return [this._ExpansionMiniLayer_VGroup2_c()];
      }
      
      private function _ExpansionMiniLayer_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || _loc2_)
         {
            _loc1_.horizontalCenter = 0;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               addr0054:
               _loc1_.mxmlContent = [this._ExpansionMiniLayer_PostitHeaderComponent1_i(),this._ExpansionMiniLayer_PriceComponent1_i()];
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr0076:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr007a);
               }
               §§goto(addr0076);
            }
            addr007a:
            return _loc1_;
         }
         §§goto(addr0054);
      }
      
      private function _ExpansionMiniLayer_PostitHeaderComponent1_i() : PostitHeaderComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:PostitHeaderComponent = new PostitHeaderComponent();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.id = "costHeader";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr006b:
                     _loc1_.document = this;
                     if(_loc3_ || _loc2_)
                     {
                        addr007c:
                        this.costHeader = _loc1_;
                        if(_loc3_)
                        {
                           addr0086:
                           BindingManager.executeBindings(this,"costHeader",this.costHeader);
                        }
                     }
                     §§goto(addr0093);
                  }
                  §§goto(addr0086);
               }
               §§goto(addr007c);
            }
            addr0093:
            return _loc1_;
         }
         §§goto(addr006b);
      }
      
      private function _ExpansionMiniLayer_PriceComponent1_i() : PriceComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:PriceComponent = new PriceComponent();
         if(!_loc3_)
         {
            _loc1_.id = "costs";
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr0048:
                     _loc1_.document = this;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        §§goto(addr0066);
                     }
                     §§goto(addr0078);
                  }
               }
               addr0066:
               this.costs = _loc1_;
               if(_loc2_ || Boolean(this))
               {
                  addr0078:
                  BindingManager.executeBindings(this,"costs",this.costs);
               }
               return _loc1_;
            }
            §§goto(addr0048);
         }
         §§goto(addr0078);
      }
      
      private function _ExpansionMiniLayer_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || _loc3_)
         {
            _loc1_.gap = 6;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.mxmlContent = [this._ExpansionMiniLayer_Group1_c(),this._ExpansionMiniLayer_DynamicPlusButton1_i()];
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr0074:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0074);
      }
      
      private function _ExpansionMiniLayer_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.mxmlContent = [this._ExpansionMiniLayer_LocaLabel2_i(),this._ExpansionMiniLayer_MultistateButton1_i()];
            if(_loc2_)
            {
               addr0057:
               if(!_loc1_.document)
               {
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0057);
      }
      
      private function _ExpansionMiniLayer_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.width = 185;
            if(_loc2_)
            {
               _loc1_.height = 26;
               if(_loc2_)
               {
                  _loc1_.styleName = "blueMiniLayerText";
                  if(_loc2_)
                  {
                     addr0046:
                     _loc1_.bottom = 0;
                     if(_loc2_)
                     {
                        _loc1_.horizontalCenter = 0;
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr006e:
                           _loc1_.id = "instantDDText";
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr0081:
                              if(!_loc1_.document)
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§goto(addr00a2);
                                 }
                              }
                           }
                           §§goto(addr00ab);
                        }
                        §§goto(addr0081);
                     }
                     §§goto(addr006e);
                  }
                  addr00a2:
                  _loc1_.document = this;
                  if(_loc2_)
                  {
                     addr00ab:
                     this.instantDDText = _loc1_;
                     if(!(_loc3_ && _loc2_))
                     {
                        BindingManager.executeBindings(this,"instantDDText",this.instantDDText);
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0046);
            }
            §§goto(addr0081);
         }
         §§goto(addr006e);
      }
      
      private function _ExpansionMiniLayer_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc3_ || _loc3_)
         {
            _loc1_.width = 204;
            if(_loc3_)
            {
               _loc1_.imageNameLeft = "icon_expansion";
               if(!_loc2_)
               {
                  _loc1_.libNameLeft = "gui_popups_miniLayer";
                  if(!_loc2_)
                  {
                     §§goto(addr0059);
                  }
                  §§goto(addr0064);
               }
               addr0059:
               _loc1_.id = "buyExpansion";
               if(!_loc2_)
               {
                  addr0064:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(this))
                     {
                        addr0085:
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           addr008e:
                           this.buyExpansion = _loc1_;
                           if(_loc3_)
                           {
                              addr0098:
                              BindingManager.executeBindings(this,"buyExpansion",this.buyExpansion);
                           }
                        }
                     }
                     §§goto(addr00a5);
                  }
                  §§goto(addr008e);
               }
               addr00a5:
               return _loc1_;
            }
            §§goto(addr0085);
         }
         §§goto(addr0098);
      }
      
      private function _ExpansionMiniLayer_DynamicPlusButton1_i() : DynamicPlusButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicPlusButton = new DynamicPlusButton();
         if(_loc3_ || _loc3_)
         {
            _loc1_.width = 40;
            if(_loc3_)
            {
               _loc1_.useConfirmation = true;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.iconImageName = "dd_button_icon";
                  if(!_loc2_)
                  {
                     _loc1_.iconLibName = "gui_resources_icons";
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        _loc1_.setStyle("skinClass",DynamicPlusButtonSkin);
                        if(!_loc2_)
                        {
                           addr0080:
                           _loc1_.id = "ddButton";
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              if(!_loc1_.document)
                              {
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    §§goto(addr00b3);
                                 }
                                 §§goto(addr00c6);
                              }
                              §§goto(addr00bc);
                           }
                           §§goto(addr00c6);
                        }
                        §§goto(addr00bc);
                     }
                     §§goto(addr0080);
                  }
                  §§goto(addr00bc);
               }
               addr00b3:
               _loc1_.document = this;
               if(!_loc2_)
               {
                  addr00bc:
                  this.ddButton = _loc1_;
                  if(!_loc2_)
                  {
                     addr00c6:
                     BindingManager.executeBindings(this,"ddButton",this.ddButton);
                  }
               }
               §§goto(addr00d3);
            }
            §§goto(addr0080);
         }
         addr00d3:
         return _loc1_;
      }
      
      public function ___ExpansionMiniLayer_MiniLayerWindow1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.handleCreationComplete(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get buyExpansion() : MultistateButton
      {
         return this._306158375buyExpansion;
      }
      
      public function set buyExpansion(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._306158375buyExpansion;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._306158375buyExpansion = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buyExpansion",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr0075);
            }
            addr0084:
            return;
         }
         §§goto(addr005e);
      }
      
      [Bindable(event="propertyChange")]
      public function get costComponent() : StickyNoteComponent
      {
         return this._1253508016costComponent;
      }
      
      public function set costComponent(param1:StickyNoteComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1253508016costComponent;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1253508016costComponent = param1;
                  if(_loc3_)
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0064:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costComponent",_loc2_,param1));
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
         §§goto(addr0055);
      }
      
      [Bindable(event="propertyChange")]
      public function get costHeader() : PostitHeaderComponent
      {
         return this._450449222costHeader;
      }
      
      public function set costHeader(param1:PostitHeaderComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._450449222costHeader;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._450449222costHeader = param1;
                  if(_loc3_)
                  {
                     addr0058:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costHeader",_loc2_,param1));
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
         §§goto(addr0058);
      }
      
      [Bindable(event="propertyChange")]
      public function get costs() : PriceComponent
      {
         return this._94849606costs;
      }
      
      public function set costs(param1:PriceComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._94849606costs;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._94849606costs = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     addr0056:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costs",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0056);
            }
            addr0075:
            return;
         }
         §§goto(addr0056);
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
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._1255424046ddButton = param1;
                  addr003f:
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ddButton",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr003f);
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._800887486flavourText = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourText",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr006d);
            }
         }
         addr007c:
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
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  addr0042:
                  this._150471954instantDDText = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     addr0061:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"instantDDText",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0088);
               }
               §§goto(addr0061);
            }
            addr0088:
            return;
         }
         §§goto(addr0042);
      }
      
      [Bindable(event="propertyChange")]
      public function get mainGroup() : VGroup
      {
         return this._273241018mainGroup;
      }
      
      public function set mainGroup(param1:VGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._273241018mainGroup;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._273241018mainGroup = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainGroup",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get saleIcon() : BriskImageDynaLib
      {
         return this._1935734112saleIcon;
      }
      
      public function set saleIcon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1935734112saleIcon;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1935734112saleIcon = param1;
                  if(_loc3_)
                  {
                     addr004c:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"saleIcon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0073);
               }
               §§goto(addr004c);
            }
         }
         addr0073:
      }
   }
}

