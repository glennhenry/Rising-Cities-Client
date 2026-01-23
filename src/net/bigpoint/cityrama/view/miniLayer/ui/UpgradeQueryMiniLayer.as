package net.bigpoint.cityrama.view.miniLayer.ui
{
   import flashx.textLayout.conversion.TextConverter;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.UIComponent;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.model.miniLayer.vo.UpgradeMiniLayerVo;
   import net.bigpoint.cityrama.view.architectBook.ui.components.ArchitectNeedItemRenderer;
   import net.bigpoint.cityrama.view.architectBook.ui.skins.ArchitectNeedsSkin;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.PostitHeaderComponent;
   import net.bigpoint.cityrama.view.common.components.PostitHeaderComponentMultiline;
   import net.bigpoint.cityrama.view.common.components.PriceComponent;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   
   public class UpgradeQueryMiniLayer extends MiniLayerWindow
   {
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || _loc1_)
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
      
      private var _770913084confirmUpgrade:MultistateButton;
      
      private var _1253508016costComponent:StickyNoteComponent;
      
      private var _450449222costHeader:PostitHeaderComponent;
      
      private var _94849606costs:PriceComponent;
      
      private var _1365864848denyUpgrade:MultistateButton;
      
      private var _800887486flavourText:LocaLabel;
      
      private var _273241018mainGroup:VGroup;
      
      private var _1604340842materialComponent:StickyNoteComponent;
      
      private var _1935639916materialHeader:PostitHeaderComponentMultiline;
      
      private var _2115854747materialList:List;
      
      private var _391232536postIts:HGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _upgradeData:UpgradeMiniLayerVo;
      
      private var _isDirty:Boolean;
      
      public function UpgradeQueryMiniLayer()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(!(_loc1_ && _loc1_))
            {
               mx_internal::_document = this;
               if(_loc2_ || _loc2_)
               {
                  addr004a:
                  this.width = 540;
                  if(!(_loc1_ && Boolean(this)))
                  {
                     this.height = 313;
                     if(_loc2_ || _loc1_)
                     {
                        §§goto(addr007a);
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr007a);
            }
            §§goto(addr004a);
         }
         addr007a:
         this.showAttentionSign = true;
         if(!_loc1_)
         {
            addr0084:
            this.mxmlContentFactory = new DeferredInstanceFromFunction(this._UpgradeQueryMiniLayer_Array1_c);
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super.moduleFactory = param1;
            if(_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     §§goto(addr003c);
                  }
               }
               §§goto(addr004a);
            }
            addr003c:
            return;
         }
         addr004a:
         this.__moduleFactoryInitialized = true;
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
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super.commitProperties();
            if(_loc1_ || Boolean(this))
            {
               §§push(this._upgradeData);
               if(_loc1_)
               {
                  if(§§pop())
                  {
                     if(_loc1_ || _loc1_)
                     {
                        this.invertDepth();
                        if(_loc1_)
                        {
                           this.title = ResourceManager.getInstance().getString(String("rcl.miniLayer.upgrade"),String("rcl.miniLayer.upgrade.title"));
                           if(_loc1_ || Boolean(this))
                           {
                              §§push(this._upgradeData);
                              if(_loc1_)
                              {
                                 §§push(§§pop().typeOfBuilding);
                                 if(_loc1_)
                                 {
                                    §§push(UpgradeMiniLayerVo.BUILDING_NORMAL);
                                    if(_loc1_ || _loc2_)
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          if(_loc1_ || _loc1_)
                                          {
                                             §§push(this.flavourText);
                                             if(_loc1_)
                                             {
                                                §§pop().textFlow = TextConverter.importToFlow(ResourceManager.getInstance().getString(String("rcl.miniLayer.upgrade"),String("rcl.miniLayer.upgrade.flavour")),TextConverter.TEXT_FIELD_HTML_FORMAT);
                                                if(!_loc2_)
                                                {
                                                   addr0156:
                                                   §§push(this.confirmUpgrade);
                                                   if(_loc1_ || _loc2_)
                                                   {
                                                      §§pop().label = ResourceManager.getInstance().getString(String("rcl.miniLayer.upgrade"),String("rcl.miniLayer.upgrade.buttonOk"));
                                                      if(_loc1_)
                                                      {
                                                         addr018a:
                                                         this.denyUpgrade.label = ResourceManager.getInstance().getString(String("rcl.miniLayer.upgrade"),String("rcl.miniLayer.upgrade.buttonAbort"));
                                                         if(_loc1_ || _loc1_)
                                                         {
                                                            this.costHeader.text = ResourceManager.getInstance().getString(String("rcl.miniLayer.upgrade"),String("rcl.miniLayer.upgrade.costs"));
                                                            if(_loc1_ || _loc1_)
                                                            {
                                                               this.materialHeader.text = ResourceManager.getInstance().getString(String("rcl.miniLayer.upgrade"),String("rcl.miniLayer.upgrade.resources"));
                                                               if(_loc1_ || _loc2_)
                                                               {
                                                                  addr0215:
                                                                  §§push(this.costs);
                                                                  if(_loc1_)
                                                                  {
                                                                     §§pop().affordable = this._upgradeData.affordable;
                                                                     if(!_loc2_)
                                                                     {
                                                                        §§goto(addr0231);
                                                                     }
                                                                     §§goto(addr026b);
                                                                  }
                                                                  addr0231:
                                                                  this.costs.priceLabel = LocaUtils.getThousendSeperatedNumber(this._upgradeData.costs);
                                                                  addr022d:
                                                                  if(!_loc2_)
                                                                  {
                                                                     this.materialList.dataProvider = this._upgradeData.materialList;
                                                                     if(!(_loc2_ && Boolean(this)))
                                                                     {
                                                                        addr026f:
                                                                        this.confirmUpgrade.enabled = this._upgradeData.affordable;
                                                                        addr026b:
                                                                        if(_loc1_)
                                                                        {
                                                                           §§goto(addr027e);
                                                                        }
                                                                     }
                                                                     §§goto(addr0289);
                                                                  }
                                                                  §§goto(addr027e);
                                                               }
                                                               §§goto(addr026b);
                                                            }
                                                            §§goto(addr027e);
                                                         }
                                                         §§goto(addr026b);
                                                      }
                                                      addr027e:
                                                      this.setTooltips();
                                                      if(!_loc2_)
                                                      {
                                                         addr0289:
                                                         this._isDirty = false;
                                                      }
                                                      §§goto(addr028f);
                                                   }
                                                   §§goto(addr026f);
                                                }
                                             }
                                             else
                                             {
                                                §§pop().textFlow = TextConverter.importToFlow(ResourceManager.getInstance().getString(String("rcl.miniLayer.upgrade"),String("rcl.miniLayer.upgrade.flavourCommercial")),TextConverter.TEXT_FIELD_HTML_FORMAT);
                                                addr0114:
                                                if(!(_loc2_ && Boolean(this)))
                                                {
                                                   §§goto(addr0156);
                                                }
                                             }
                                             §§goto(addr028f);
                                          }
                                          §§goto(addr0289);
                                       }
                                       else
                                       {
                                          addr00ff:
                                          addr00f9:
                                          addr00f6:
                                          if(this._upgradeData.typeOfBuilding == UpgradeMiniLayerVo.BUILDING_COMMERCIAL)
                                          {
                                             if(!(_loc2_ && Boolean(this)))
                                             {
                                                §§goto(addr0114);
                                                §§push(this.flavourText);
                                             }
                                             §§goto(addr028f);
                                          }
                                       }
                                       §§goto(addr0156);
                                    }
                                    §§goto(addr00ff);
                                 }
                                 §§goto(addr00f9);
                              }
                              §§goto(addr00f6);
                           }
                           §§goto(addr0215);
                        }
                     }
                     §§goto(addr0156);
                  }
                  addr028f:
                  return;
               }
               §§goto(addr00f6);
            }
            §§goto(addr018a);
         }
         §§goto(addr022d);
      }
      
      private function setTooltips() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            this.confirmUpgrade.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.miniLayer"),String("rcl.tooltips.miniLayer.upgrade.upgradeButton"));
         }
         §§push(ResourceManager.getInstance().getString(String("rcl.tooltips.miniLayer"),String("rcl.tooltips.miniLayer.upgrade.products.left")));
         if(_loc3_ || _loc2_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(ResourceManager.getInstance().getString(String("rcl.tooltips.miniLayer"),String("rcl.tooltips.miniLayer.upgrade.products.right")));
         if(!(_loc4_ && Boolean(this)))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            this.materialList.setStyle("tooltipLeft",_loc1_);
            if(!(_loc4_ && _loc1_))
            {
               addr00d0:
               this.materialList.setStyle("tooltipRight",_loc2_);
            }
            return;
         }
         §§goto(addr00d0);
      }
      
      public function setData(param1:UpgradeMiniLayerVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(!RandomUtilities.isEqual(param1,this._upgradeData))
            {
               if(_loc2_)
               {
                  this._isDirty = true;
                  if(_loc2_)
                  {
                     §§goto(addr0043);
                  }
                  §§goto(addr0055);
               }
               addr0043:
               this._upgradeData = param1;
               if(_loc2_ || _loc2_)
               {
                  addr0055:
                  this.invalidateProperties();
               }
               §§goto(addr0059);
            }
         }
         addr0059:
      }
      
      private function invertDepth() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= 2)
            {
               if(!_loc3_)
               {
                  §§push(this.costComponent);
                  if(!_loc3_)
                  {
                     §§pop().rightTape.setStyle("top",-5);
                     if(!(_loc3_ && _loc3_))
                     {
                        break;
                     }
                     addr0096:
                     §§push(this.costComponent);
                     if(!_loc3_)
                     {
                        §§pop().rightTape.minHeight = 125;
                        if(!_loc3_)
                        {
                           addr00ac:
                           §§push(this.costComponent);
                           if(!(_loc3_ && _loc3_))
                           {
                              addr00bd:
                              §§pop().leftTape.setStyle("top",5);
                              if(_loc2_ || Boolean(this))
                              {
                                 §§goto(addr00d8);
                              }
                              §§goto(addr00f0);
                           }
                           §§goto(addr00d8);
                        }
                        §§goto(addr0123);
                     }
                     addr00d8:
                     this.costComponent.leftTape.setStyle("bottom",5);
                     if(!(_loc3_ && _loc3_))
                     {
                        addr00f0:
                        §§push(this.materialComponent);
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           §§pop().rightTape.setStyle("top",24);
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr0127:
                              this.materialComponent.rightTape.setStyle("bottom",24);
                              addr0123:
                           }
                           §§goto(addr0132);
                        }
                        §§goto(addr0127);
                     }
                     §§goto(addr0132);
                  }
                  §§goto(addr00bd);
               }
               addr0132:
               return;
            }
            UIComponent(this.postIts.getChildAt(_loc1_)).depth = 1 - _loc1_;
            if(_loc3_)
            {
               break;
            }
            _loc1_++;
            if(_loc2_)
            {
               continue;
            }
            §§goto(addr0096);
         }
         §§push(this.costComponent);
         if(!(_loc3_ && _loc2_))
         {
            §§pop().rightTape.setStyle("bottom",-5);
            if(!_loc3_)
            {
               §§goto(addr0096);
            }
            §§goto(addr00ac);
         }
         §§goto(addr00d8);
      }
      
      private function _UpgradeQueryMiniLayer_Array1_c() : Array
      {
         return [this._UpgradeQueryMiniLayer_VGroup1_i()];
      }
      
      private function _UpgradeQueryMiniLayer_VGroup1_i() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.paddingTop = 10;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.paddingBottom = 45;
                  if(_loc2_)
                  {
                     addr0046:
                     _loc1_.horizontalAlign = "center";
                     if(!(_loc3_ && _loc3_))
                     {
                        addr0063:
                        _loc1_.gap = -20;
                        if(!_loc3_)
                        {
                           _loc1_.mxmlContent = [this._UpgradeQueryMiniLayer_LocaLabel1_i(),this._UpgradeQueryMiniLayer_HGroup1_i(),this._UpgradeQueryMiniLayer_Group2_c(),this._UpgradeQueryMiniLayer_HGroup3_c()];
                           if(!_loc3_)
                           {
                              addr008f:
                              _loc1_.id = "mainGroup";
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 addr00a2:
                                 if(!_loc1_.document)
                                 {
                                    if(!_loc3_)
                                    {
                                       addr00bb:
                                       _loc1_.document = this;
                                       if(!_loc3_)
                                       {
                                          §§goto(addr00c4);
                                       }
                                    }
                                    §§goto(addr00d6);
                                 }
                                 addr00c4:
                                 this.mainGroup = _loc1_;
                                 if(!(_loc3_ && Boolean(_loc1_)))
                                 {
                                    addr00d6:
                                    BindingManager.executeBindings(this,"mainGroup",this.mainGroup);
                                 }
                                 §§goto(addr00e3);
                              }
                              §§goto(addr00bb);
                           }
                           addr00e3:
                           return _loc1_;
                        }
                        §§goto(addr008f);
                     }
                     §§goto(addr00bb);
                  }
                  §§goto(addr00a2);
               }
               §§goto(addr008f);
            }
            §§goto(addr0046);
         }
         §§goto(addr0063);
      }
      
      private function _UpgradeQueryMiniLayer_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.height = 45;
            if(_loc3_ || _loc3_)
            {
               _loc1_.percentWidth = 85;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.styleName = "miniLayerFlavourText";
                  if(!(_loc2_ && _loc3_))
                  {
                     addr006c:
                     _loc1_.id = "flavourText";
                     if(!(_loc2_ && _loc2_))
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr0096:
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 addr009f:
                                 this.flavourText = _loc1_;
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    addr00b1:
                                    BindingManager.executeBindings(this,"flavourText",this.flavourText);
                                 }
                              }
                           }
                           §§goto(addr00be);
                        }
                        §§goto(addr009f);
                     }
                     §§goto(addr00b1);
                  }
                  §§goto(addr0096);
               }
               §§goto(addr006c);
            }
         }
         addr00be:
         return _loc1_;
      }
      
      private function _UpgradeQueryMiniLayer_HGroup1_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.gap = -23;
            if(!_loc3_)
            {
               _loc1_.top = -45;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.verticalAlign = "middle";
                  if(!_loc3_)
                  {
                     _loc1_.height = 170;
                     if(!_loc3_)
                     {
                        _loc1_.mxmlContent = [this._UpgradeQueryMiniLayer_StickyNoteComponent1_i(),this._UpgradeQueryMiniLayer_StickyNoteComponent2_i()];
                        if(_loc2_)
                        {
                           _loc1_.id = "postIts";
                           if(_loc2_ || _loc2_)
                           {
                              addr0085:
                              if(!_loc1_.document)
                              {
                                 if(_loc2_)
                                 {
                                    addr009f:
                                    _loc1_.document = this;
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       addr00b0:
                                       this.postIts = _loc1_;
                                       if(!_loc3_)
                                       {
                                          addr00ba:
                                          BindingManager.executeBindings(this,"postIts",this.postIts);
                                       }
                                       §§goto(addr00c7);
                                    }
                                    §§goto(addr00ba);
                                 }
                                 addr00c7:
                                 return _loc1_;
                              }
                              §§goto(addr00b0);
                           }
                        }
                        §§goto(addr00ba);
                     }
                     §§goto(addr009f);
                  }
                  §§goto(addr0085);
               }
            }
            §§goto(addr009f);
         }
         §§goto(addr0085);
      }
      
      private function _UpgradeQueryMiniLayer_StickyNoteComponent1_i() : StickyNoteComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(_loc3_ || _loc3_)
         {
            _loc1_.width = 220;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.height = 115;
               if(!_loc2_)
               {
                  _loc1_.tapeLeft = true;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§goto(addr0058);
                  }
                  §§goto(addr00ce);
               }
            }
            addr0058:
            _loc1_.tapeRight = true;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._UpgradeQueryMiniLayer_Array4_c);
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.id = "costComponent";
                  if(_loc3_ || _loc3_)
                  {
                     addr00a5:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           §§goto(addr00c5);
                        }
                        §§goto(addr00e0);
                     }
                     §§goto(addr00ce);
                  }
                  §§goto(addr00e0);
               }
               addr00c5:
               _loc1_.document = this;
               if(!_loc2_)
               {
                  addr00ce:
                  this.costComponent = _loc1_;
                  if(_loc3_ || _loc2_)
                  {
                     addr00e0:
                     BindingManager.executeBindings(this,"costComponent",this.costComponent);
                  }
               }
               §§goto(addr00ed);
            }
            addr00ed:
            return _loc1_;
         }
         §§goto(addr00a5);
      }
      
      private function _UpgradeQueryMiniLayer_Array4_c() : Array
      {
         return [this._UpgradeQueryMiniLayer_VGroup2_c()];
      }
      
      private function _UpgradeQueryMiniLayer_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.horizontalCenter = 0;
            if(_loc2_)
            {
               _loc1_.mxmlContent = [this._UpgradeQueryMiniLayer_PostitHeaderComponent1_i(),this._UpgradeQueryMiniLayer_HGroup2_c()];
               if(!(_loc3_ && _loc3_))
               {
                  §§goto(addr0068);
               }
               §§goto(addr007c);
            }
            addr0068:
            if(!_loc1_.document)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  addr007c:
                  _loc1_.document = this;
               }
            }
            §§goto(addr0080);
         }
         addr0080:
         return _loc1_;
      }
      
      private function _UpgradeQueryMiniLayer_PostitHeaderComponent1_i() : PostitHeaderComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:PostitHeaderComponent = new PostitHeaderComponent();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.id = "costHeader";
            if(_loc3_ || Boolean(this))
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     §§goto(addr0067);
                  }
                  §§goto(addr007a);
               }
               §§goto(addr0070);
            }
            addr0067:
            _loc1_.document = this;
            if(!_loc2_)
            {
               addr0070:
               this.costHeader = _loc1_;
               if(_loc3_)
               {
                  addr007a:
                  BindingManager.executeBindings(this,"costHeader",this.costHeader);
               }
            }
            return _loc1_;
         }
         §§goto(addr0070);
      }
      
      private function _UpgradeQueryMiniLayer_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.mxmlContent = [this._UpgradeQueryMiniLayer_Group1_c(),this._UpgradeQueryMiniLayer_PriceComponent1_i()];
               if(_loc2_)
               {
                  addr0061:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0061);
      }
      
      private function _UpgradeQueryMiniLayer_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.width = 22;
            if(_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr0042:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0042);
      }
      
      private function _UpgradeQueryMiniLayer_PriceComponent1_i() : PriceComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:PriceComponent = new PriceComponent();
         if(!_loc3_)
         {
            _loc1_.id = "costs";
            if(!(_loc3_ && _loc2_))
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     _loc1_.document = this;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr006b:
                        this.costs = _loc1_;
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr007d:
                           BindingManager.executeBindings(this,"costs",this.costs);
                        }
                        §§goto(addr008a);
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr008a);
               }
               §§goto(addr006b);
            }
            §§goto(addr007d);
         }
         addr008a:
         return _loc1_;
      }
      
      private function _UpgradeQueryMiniLayer_StickyNoteComponent2_i() : StickyNoteComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(!_loc2_)
         {
            _loc1_.width = 240;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.height = 135;
               if(!_loc2_)
               {
                  addr003f:
                  _loc1_.tapeRight = true;
                  if(_loc3_)
                  {
                     _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._UpgradeQueryMiniLayer_Array7_c);
                     if(!_loc2_)
                     {
                        _loc1_.id = "materialComponent";
                        if(_loc3_ || _loc2_)
                        {
                           addr007e:
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§goto(addr009e);
                              }
                              §§goto(addr00b9);
                           }
                           §§goto(addr00af);
                        }
                        §§goto(addr009e);
                     }
                  }
                  §§goto(addr007e);
               }
               §§goto(addr00b9);
            }
            addr009e:
            _loc1_.document = this;
            if(_loc3_ || _loc3_)
            {
               addr00af:
               this.materialComponent = _loc1_;
               if(_loc3_)
               {
                  addr00b9:
                  BindingManager.executeBindings(this,"materialComponent",this.materialComponent);
               }
            }
            return _loc1_;
         }
         §§goto(addr003f);
      }
      
      private function _UpgradeQueryMiniLayer_Array7_c() : Array
      {
         return [this._UpgradeQueryMiniLayer_VGroup3_c()];
      }
      
      private function _UpgradeQueryMiniLayer_VGroup3_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.horizontalCenter = 0;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.mxmlContent = [this._UpgradeQueryMiniLayer_PostitHeaderComponentMultiline1_i(),this._UpgradeQueryMiniLayer_List1_i()];
               addr0044:
               if(!(_loc3_ && Boolean(this)))
               {
                  §§goto(addr0071);
               }
               §§goto(addr0085);
            }
            addr0071:
            if(!_loc1_.document)
            {
               if(_loc2_ || Boolean(this))
               {
                  addr0085:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0044);
      }
      
      private function _UpgradeQueryMiniLayer_PostitHeaderComponentMultiline1_i() : PostitHeaderComponentMultiline
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:PostitHeaderComponentMultiline = new PostitHeaderComponentMultiline();
         if(_loc3_)
         {
            _loc1_.id = "materialHeader";
            if(_loc3_ || Boolean(_loc1_))
            {
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.document = this;
                     if(!_loc2_)
                     {
                        addr0068:
                        this.materialHeader = _loc1_;
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr007a:
                           BindingManager.executeBindings(this,"materialHeader",this.materialHeader);
                        }
                     }
                     §§goto(addr0087);
                  }
               }
               §§goto(addr0068);
            }
            addr0087:
            return _loc1_;
         }
         §§goto(addr007a);
      }
      
      private function _UpgradeQueryMiniLayer_List1_i() : List
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:List = new List();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.itemRenderer = this._UpgradeQueryMiniLayer_ClassFactory1_c();
            if(!_loc2_)
            {
               _loc1_.setStyle("skinClass",ArchitectNeedsSkin);
               if(!_loc2_)
               {
                  _loc1_.id = "materialList";
                  if(!(_loc2_ && _loc2_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           _loc1_.document = this;
                           if(_loc3_ || Boolean(this))
                           {
                              §§goto(addr0099);
                           }
                        }
                        §§goto(addr00ab);
                     }
                     addr0099:
                     this.materialList = _loc1_;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr00ab:
                        BindingManager.executeBindings(this,"materialList",this.materialList);
                     }
                     §§goto(addr00b8);
                  }
               }
               §§goto(addr00ab);
            }
         }
         addr00b8:
         return _loc1_;
      }
      
      private function _UpgradeQueryMiniLayer_ClassFactory1_c() : ClassFactory
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ClassFactory = new ClassFactory();
         if(!_loc3_)
         {
            _loc1_.generator = ArchitectNeedItemRenderer;
         }
         return _loc1_;
      }
      
      private function _UpgradeQueryMiniLayer_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.height = 25;
            if(_loc2_ || _loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr004f:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0053);
            }
            §§goto(addr004f);
         }
         addr0053:
         return _loc1_;
      }
      
      private function _UpgradeQueryMiniLayer_HGroup3_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.gap = 24;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.top = -30;
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._UpgradeQueryMiniLayer_MultistateButton1_i(),this._UpgradeQueryMiniLayer_MultistateButton2_i()];
                  if(_loc2_)
                  {
                     addr006c:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               §§goto(addr0084);
            }
            §§goto(addr006c);
         }
         addr0084:
         return _loc1_;
      }
      
      private function _UpgradeQueryMiniLayer_MultistateButton1_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.width = 204;
            if(_loc2_)
            {
               _loc1_.imageNameLeft = "icon_check";
               if(!_loc3_)
               {
                  _loc1_.libNameLeft = "gui_popups_miniLayer";
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.styleName = "confirm";
                     if(_loc2_)
                     {
                        addr0066:
                        _loc1_.id = "confirmUpgrade";
                        if(!_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || _loc3_)
                              {
                                 addr0091:
                                 _loc1_.document = this;
                                 if(_loc2_)
                                 {
                                    addr009a:
                                    this.confirmUpgrade = _loc1_;
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       addr00ac:
                                       BindingManager.executeBindings(this,"confirmUpgrade",this.confirmUpgrade);
                                    }
                                    §§goto(addr00b9);
                                 }
                                 §§goto(addr00ac);
                              }
                              §§goto(addr00b9);
                           }
                           §§goto(addr009a);
                        }
                        §§goto(addr00ac);
                     }
                     addr00b9:
                     return _loc1_;
                  }
                  §§goto(addr00ac);
               }
               §§goto(addr0066);
            }
         }
         §§goto(addr0091);
      }
      
      private function _UpgradeQueryMiniLayer_MultistateButton2_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc3_ || _loc2_)
         {
            _loc1_.width = 204;
            if(_loc3_ || _loc2_)
            {
               _loc1_.imageNameLeft = "icon_cancel";
               if(_loc3_ || _loc3_)
               {
                  _loc1_.styleName = "abort";
                  if(!(_loc2_ && _loc2_))
                  {
                     addr006f:
                     _loc1_.libNameLeft = "gui_popups_miniLayer";
                     if(_loc3_)
                     {
                        _loc1_.id = "denyUpgrade";
                        if(!(_loc2_ && _loc2_))
                        {
                           addr008e:
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 §§goto(addr00a7);
                              }
                              §§goto(addr00c2);
                           }
                           §§goto(addr00b8);
                        }
                        addr00a7:
                        _loc1_.document = this;
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr00b8:
                           this.denyUpgrade = _loc1_;
                           if(!_loc2_)
                           {
                              addr00c2:
                              BindingManager.executeBindings(this,"denyUpgrade",this.denyUpgrade);
                           }
                        }
                        §§goto(addr00cf);
                     }
                     §§goto(addr00b8);
                  }
                  §§goto(addr008e);
               }
               §§goto(addr006f);
            }
            §§goto(addr008e);
         }
         addr00cf:
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get confirmUpgrade() : MultistateButton
      {
         return this._770913084confirmUpgrade;
      }
      
      public function set confirmUpgrade(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._770913084confirmUpgrade;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._770913084confirmUpgrade = param1;
                  if(!_loc4_)
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"confirmUpgrade",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr0055);
            }
            addr007b:
            return;
         }
         §§goto(addr006c);
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
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._1253508016costComponent = param1;
                  if(_loc3_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr0057);
            }
            addr007d:
            return;
         }
         §§goto(addr0057);
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
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._450449222costHeader = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costHeader",_loc2_,param1));
                        }
                     }
                     §§goto(addr007e);
                  }
               }
               §§goto(addr006f);
            }
            addr007e:
            return;
         }
         §§goto(addr006f);
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
               if(_loc3_)
               {
                  this._94849606costs = param1;
                  addr0039:
                  if(_loc3_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costs",_loc2_,param1));
                        }
                     }
                     §§goto(addr0076);
                  }
               }
               §§goto(addr0067);
            }
            addr0076:
            return;
         }
         §§goto(addr0039);
      }
      
      [Bindable(event="propertyChange")]
      public function get denyUpgrade() : MultistateButton
      {
         return this._1365864848denyUpgrade;
      }
      
      public function set denyUpgrade(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1365864848denyUpgrade;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1365864848denyUpgrade = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0052:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"denyUpgrade",_loc2_,param1));
                        }
                     }
                     §§goto(addr0061);
                  }
               }
               §§goto(addr0052);
            }
         }
         addr0061:
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
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._800887486flavourText = param1;
                  if(_loc3_)
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
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourText",_loc2_,param1));
                  }
               }
               §§goto(addr0074);
            }
            addr0074:
            return;
         }
         §§goto(addr0056);
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
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._273241018mainGroup = param1;
                  addr0049:
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0086);
                  }
                  §§goto(addr0077);
               }
            }
            addr0086:
            return;
         }
         §§goto(addr0049);
      }
      
      [Bindable(event="propertyChange")]
      public function get materialComponent() : StickyNoteComponent
      {
         return this._1604340842materialComponent;
      }
      
      public function set materialComponent(param1:StickyNoteComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1604340842materialComponent;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1604340842materialComponent = param1;
                  addr0040:
                  if(_loc4_)
                  {
                     addr0058:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"materialComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007e);
               }
               §§goto(addr0058);
            }
            addr007e:
            return;
         }
         §§goto(addr0040);
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
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._1935639916materialHeader = param1;
                  if(!_loc4_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"materialHeader",_loc2_,param1));
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
      public function get materialList() : List
      {
         return this._2115854747materialList;
      }
      
      public function set materialList(param1:List) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2115854747materialList;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._2115854747materialList = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"materialList",_loc2_,param1));
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
         §§goto(addr0057);
      }
      
      [Bindable(event="propertyChange")]
      public function get postIts() : HGroup
      {
         return this._391232536postIts;
      }
      
      public function set postIts(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._391232536postIts;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._391232536postIts = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr0073:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"postIts",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0082);
               }
               §§goto(addr0073);
            }
         }
         addr0082:
      }
   }
}

