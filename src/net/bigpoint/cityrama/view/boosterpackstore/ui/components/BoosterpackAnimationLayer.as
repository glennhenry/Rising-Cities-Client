package net.bigpoint.cityrama.view.boosterpackstore.ui.components
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
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.as3toolbox.bitmapclip.BitmapClip;
   import net.bigpoint.cityrama.model.boosterpack.vo.BoosterpackAnimationLayerVo;
   import net.bigpoint.cityrama.model.common.vo.RewardItemComponentVo;
   import net.bigpoint.cityrama.view.boosterpackstore.ui.skins.BoosterpackRewardListSkin;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.events.BriskMCDynaLibEvent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.core.SpriteVisualElement;
   
   use namespace mx_internal;
   
   public class BoosterpackAnimationLayer extends Group implements IBindingClient
   {
      
      public static const START_PACK_SPARKLE:String = "START_PACK_SPARKLE";
      
      public static const SKIP:String = "SKIP";
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         START_PACK_SPARKLE = "START_PACK_SPARKLE";
         if(!(_loc2_ && _loc2_))
         {
            SKIP = "SKIP";
         }
      }
      
      private var _1411267059bonusfactorContainer:SpriteVisualElement;
      
      private var _1082992474boosterpackAnim:BriskMCDynaLib;
      
      private var _779621070boosterpackImage:BriskImageDynaLib;
      
      private var _179476490boosterpackImagePartAnim:BriskMCDynaLib;
      
      private var _783569714boosterpackImageParts:BriskImageDynaLib;
      
      private var _777207093boosterpackLabel:LocaLabel;
      
      private var _1177280081itemList:List;
      
      private var _2091119771particleContainer:SpriteVisualElement;
      
      private var _2121281877pricingBg:BriskImageDynaLib;
      
      private var _2104932052rewardParticleContainer:SpriteVisualElement;
      
      private var _319513199skipButton:MultistateButton;
      
      private var _1218573432uiInfolayerAlignmentLine:UiInfolayerAlignmentLine;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _isDirty:Boolean = false;
      
      private var _autoStartAnim:Boolean = false;
      
      private var _autoStartPartAnim:Boolean = false;
      
      private var _data:BoosterpackAnimationLayerVo;
      
      private var _laser:BitmapClip;
      
      private var _partAnim:BitmapClip;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function BoosterpackAnimationLayer()
      {
         var bindings:Array;
         var watchers:Array;
         var target:Object;
         var i:uint;
         var watcherSetupUtilClass:Object;
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §§push(§§newactivation());
         if(_loc3_)
         {
            §§push(null);
            if(_loc3_ || _loc2_)
            {
               §§pop().§§slot[3] = §§pop();
               if(!(_loc4_ && _loc2_))
               {
                  §§push(§§newactivation());
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr004f:
                     §§pop().§§slot[5] = null;
                     if(!(_loc4_ && Boolean(this)))
                     {
                        this.mx_internal::_bindings = [];
                        if(!(_loc4_ && _loc3_))
                        {
                           this.mx_internal::_watchers = [];
                           if(_loc3_ || Boolean(this))
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(_loc3_)
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(_loc3_)
                                 {
                                    super();
                                    if(_loc3_ || _loc2_)
                                    {
                                       addr00ae:
                                       mx_internal::_document = this;
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          §§push(§§newactivation());
                                          if(_loc3_)
                                          {
                                             §§pop().§§slot[1] = this._BoosterpackAnimationLayer_bindingsSetup();
                                             if(!_loc4_)
                                             {
                                                addr00e0:
                                                §§push(§§newactivation());
                                                if(!_loc4_)
                                                {
                                                   addr00e8:
                                                   §§pop().§§slot[2] = [];
                                                   if(!_loc4_)
                                                   {
                                                      addr00f4:
                                                      §§push(§§newactivation());
                                                      if(_loc3_ || _loc1_)
                                                      {
                                                         addr0103:
                                                         §§pop().§§slot[3] = this;
                                                         if(!(_loc4_ && Boolean(this)))
                                                         {
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_boosterpackstore_ui_components_BoosterpackAnimationLayerWatcherSetupUtil");
                                                                     if(_loc3_)
                                                                     {
                                                                        addr014a:
                                                                        §§push(§§newactivation());
                                                                        if(_loc3_ || Boolean(this))
                                                                        {
                                                                           addr0159:
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(!(_loc4_ && _loc1_))
                                                                           {
                                                                              addr0178:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return BoosterpackAnimationLayer[param1];
                                                                              },bindings,watchers);
                                                                              if(!(_loc4_ && Boolean(this)))
                                                                              {
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(_loc3_ || _loc1_)
                                                                                 {
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(!(_loc4_ && Boolean(this)))
                                                                                    {
                                                                                       addr01fb:
                                                                                       this.mxmlContent = [this._BoosterpackAnimationLayer_HGroup1_c(),this._BoosterpackAnimationLayer_BriskMCDynaLib3_i(),this._BoosterpackAnimationLayer_UiInfolayerAlignmentLine1_i()];
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          addr0218:
                                                                                          this.addEventListener("creationComplete",this.___BoosterpackAnimationLayer_Group1_creationComplete);
                                                                                          if(_loc3_ || _loc3_)
                                                                                          {
                                                                                             addr0233:
                                                                                             i = 0;
                                                                                             addr0231:
                                                                                          }
                                                                                          loop0:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§newactivation());
                                                                                             loop1:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().§§slot[4]);
                                                                                                loop2:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§newactivation());
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop() >= §§pop().§§slot[1].length)
                                                                                                      {
                                                                                                         break loop2;
                                                                                                      }
                                                                                                      Binding(bindings[i]).execute();
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§push(§§newactivation());
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         §§push(§§pop().§§slot[4]);
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            §§push(uint(§§pop() + 1));
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               continue loop2;
                                                                                                            }
                                                                                                         }
                                                                                                         §§push(§§newactivation());
                                                                                                         if(!(_loc4_ && Boolean(this)))
                                                                                                         {
                                                                                                            var _temp_22:* = §§pop();
                                                                                                            §§pop().§§slot[4] = _temp_22;
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            break loop2;
                                                                                                         }
                                                                                                         continue;
                                                                                                      }
                                                                                                      continue loop1;
                                                                                                   }
                                                                                                   break loop1;
                                                                                                }
                                                                                                break loop0;
                                                                                             }
                                                                                          }
                                                                                          return;
                                                                                          addr0292:
                                                                                       }
                                                                                       §§goto(addr0231);
                                                                                    }
                                                                                    §§goto(addr0218);
                                                                                 }
                                                                                 §§goto(addr01fb);
                                                                              }
                                                                              §§goto(addr0231);
                                                                           }
                                                                           §§goto(addr0292);
                                                                        }
                                                                        §§goto(addr0233);
                                                                     }
                                                                     §§goto(addr0231);
                                                                  }
                                                                  §§goto(addr0159);
                                                               }
                                                               §§goto(addr0218);
                                                            }
                                                            §§goto(addr0178);
                                                         }
                                                         §§goto(addr01fb);
                                                      }
                                                      §§goto(addr0233);
                                                   }
                                                   §§goto(addr0292);
                                                }
                                                §§goto(addr0159);
                                             }
                                             §§goto(addr0231);
                                          }
                                          §§goto(addr0103);
                                       }
                                       §§goto(addr014a);
                                    }
                                    §§goto(addr01fb);
                                 }
                                 §§goto(addr00f4);
                              }
                              §§goto(addr00ae);
                           }
                           §§goto(addr00e0);
                        }
                        §§goto(addr00f4);
                     }
                     §§goto(addr0292);
                  }
                  §§goto(addr0233);
               }
               §§goto(addr0218);
            }
            §§goto(addr004f);
         }
         §§goto(addr00e8);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            BoosterpackAnimationLayer._watcherSetupUtil = param1;
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
            if(!_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || _loc2_)
                  {
                     §§goto(addr0040);
                  }
               }
               this.__moduleFactoryInitialized = true;
               return;
            }
         }
         addr0040:
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
      
      public function set data(param1:BoosterpackAnimationLayerVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(!_loc3_)
               {
                  this._data = param1;
                  if(_loc2_ || _loc2_)
                  {
                     this._isDirty = true;
                     if(!_loc3_)
                     {
                        addr005a:
                        invalidateProperties();
                     }
                     §§goto(addr005f);
                  }
               }
               §§goto(addr005a);
            }
         }
         addr005f:
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            super.commitProperties();
            if(!(_loc2_ && _loc1_))
            {
               if(this._isDirty)
               {
                  if(_loc3_ || _loc1_)
                  {
                     this._isDirty = false;
                     if(!_loc2_)
                     {
                        §§push(this.boosterpackImagePartAnim);
                        if(!(_loc2_ && _loc1_))
                        {
                           var _loc1_:Boolean;
                           this.boosterpackImagePartAnim.includeInLayout = _loc1_ = false;
                           §§pop().visible = _loc1_;
                           if(!_loc2_)
                           {
                              addr0074:
                              §§push(this.boosterpackImagePartAnim);
                              if(_loc3_ || _loc1_)
                              {
                                 addr0085:
                                 §§pop().addEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.onImagePartAnimLoaded);
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    §§goto(addr00b0);
                                 }
                                 §§goto(addr0121);
                              }
                              addr00b0:
                              §§goto(addr00ac);
                           }
                           §§goto(addr015b);
                        }
                        §§goto(addr0085);
                     }
                     addr00ac:
                     §§push(this.boosterpackImagePartAnim);
                     §§push("boosterPartAnim_");
                     if(_loc3_)
                     {
                        §§push(§§pop() + this._data.boosterpackVo.gfxId);
                     }
                     §§pop().dynaMCSourceName = §§pop();
                     if(!_loc2_)
                     {
                        addr00cc:
                        §§push(this.boosterpackImageParts);
                        §§push("boosterPartImage_");
                        if(!(_loc2_ && _loc2_))
                        {
                           §§push(§§pop() + this._data.boosterpackVo.gfxId);
                        }
                        §§pop().dynaBmpSourceName = §§pop();
                        if(!(_loc2_ && _loc1_))
                        {
                           §§push(this.boosterpackImage);
                           §§push("large_");
                           if(_loc3_)
                           {
                              §§push(§§pop() + this._data.boosterpackVo.gfxId);
                           }
                           §§pop().dynaBmpSourceName = §§pop();
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr0121:
                              §§push(this.boosterpackLabel);
                              §§push(LocaUtils);
                              §§push("rcl.goods.goodname");
                              §§push("rcl.goods.goodname.");
                              if(_loc3_ || _loc1_)
                              {
                                 §§push(§§pop() + this._data.boosterpackVo.locaId);
                              }
                              §§pop().text = §§pop().getString(§§pop(),§§pop());
                              if(_loc3_)
                              {
                                 addr015b:
                                 this.skipButton.label = LocaUtils.getString("rcl.booklayer.boosterpackStore","rcl.booklayer.boosterpackStore.button.skip");
                              }
                              §§goto(addr016e);
                           }
                        }
                        §§goto(addr015b);
                     }
                     §§goto(addr016e);
                  }
                  §§goto(addr00cc);
               }
               §§goto(addr016e);
            }
            §§goto(addr0074);
         }
         addr016e:
      }
      
      public function showFinishState() : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc3_:RewardItemComponentVo = null;
         var _loc4_:BoosterpackBonusLabel = null;
         var _loc1_:ArrayCollection = new ArrayCollection();
         var _loc2_:int = 0;
         for each(_loc3_ in this._data.rewards)
         {
            if(!_loc7_)
            {
               continue;
            }
            _loc3_.showCreationAnimation = false;
            if(!_loc7_)
            {
               continue;
            }
            _loc3_.orderId = _loc2_;
            if(!(_loc8_ && Boolean(this)))
            {
               _loc1_.addItem(_loc3_);
               if(_loc7_)
               {
                  if(_loc3_.bonusFactor > 1)
                  {
                     if(_loc8_ && Boolean(this))
                     {
                        continue;
                     }
                     addr009a:
                     _loc4_ = new BoosterpackBonusLabel();
                     _loc4_.bonusFactor = _loc3_.bonusFactor;
                     if(!(_loc8_ && Boolean(_loc1_)))
                     {
                        _loc4_.index = _loc2_;
                        if(_loc7_ || Boolean(_loc2_))
                        {
                           addr00d0:
                           this.bonusfactorContainer.addChild(_loc4_);
                        }
                        addr00da:
                        _loc2_++;
                        continue;
                     }
                     §§goto(addr00d0);
                  }
                  §§goto(addr00da);
               }
            }
            §§goto(addr009a);
         }
         if(!(_loc8_ && Boolean(_loc1_)))
         {
            this.itemList.dataProvider = _loc1_;
            if(!(_loc8_ && Boolean(_loc1_)))
            {
               addr011a:
               this.skipButton.label = LocaUtils.getString("rcl.booklayer.boosterpackStore","rcl.booklayer.boosterpackStore.button.back");
            }
            return;
         }
         §§goto(addr011a);
      }
      
      public function addRewardData(param1:RewardItemComponentVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            if(this.itemList.dataProvider == null)
            {
               if(!_loc2_)
               {
                  this.itemList.dataProvider = new ArrayCollection();
                  if(!_loc2_)
                  {
                     addr005a:
                     param1.showCreationAnimation = true;
                     if(!(_loc2_ && _loc3_))
                     {
                        param1.orderId = this.itemList.dataProvider.length;
                        if(!_loc2_)
                        {
                           addr007f:
                           this.itemList.dataProvider.addItem(param1);
                        }
                        §§goto(addr008b);
                     }
                     §§goto(addr007f);
                  }
                  §§goto(addr008b);
               }
            }
            §§goto(addr005a);
         }
         addr008b:
      }
      
      public function stopBoosterPackAnim() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this._autoStartAnim = false;
            if(!_loc2_)
            {
               §§push(this.boosterpackAnim);
               if(!(_loc2_ && _loc3_))
               {
                  §§push(Boolean(§§pop().bitmapClip));
                  if(_loc3_ || _loc1_)
                  {
                     var _temp_5:* = §§pop();
                     §§push(_temp_5);
                     if(_temp_5)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr0068:
                           §§pop();
                           if(_loc3_)
                           {
                              §§push(this._laser);
                              if(!_loc2_)
                              {
                                 §§goto(addr0078);
                              }
                              §§goto(addr009a);
                           }
                           §§goto(addr00ab);
                        }
                     }
                     addr0078:
                     if(§§pop())
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           addr009a:
                           this._laser.stop();
                           addr0096:
                           if(_loc3_ || _loc2_)
                           {
                              addr00af:
                              this.boosterpackAnim.visible = this.boosterpackAnim.includeInLayout = false;
                              addr00ab:
                           }
                           §§goto(addr00bd);
                        }
                        §§goto(addr00ab);
                     }
                     addr00bd:
                     return;
                  }
                  §§goto(addr0068);
               }
               §§goto(addr00af);
            }
            §§goto(addr00ab);
         }
         §§goto(addr0096);
      }
      
      public function startBoosterPackAnim() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._autoStartAnim = true;
            if(!_loc3_)
            {
               §§goto(addr0021);
            }
            §§goto(addr0042);
         }
         addr0021:
         if(this._laser)
         {
            while(true)
            {
               §§push(this.boosterpackAnim);
               if(!_loc2_)
               {
                  break;
               }
               if(§§pop().numChildren <= 0)
               {
                  if(_loc2_ || _loc3_)
                  {
                     addr0061:
                     §§push(this.boosterpackAnim);
                     if(_loc2_ || _loc3_)
                     {
                        break;
                     }
                     addr008e:
                     var _loc1_:Boolean;
                     this.boosterpackAnim.includeInLayout = _loc1_ = true;
                     §§pop().visible = _loc1_;
                     if(!_loc3_)
                     {
                        §§push(this._laser);
                        if(!(_loc3_ && Boolean(this)))
                        {
                           §§pop().removeAfterPlay = true;
                           if(_loc2_ || _loc2_)
                           {
                              §§push(this._laser);
                              if(!(_loc3_ && _loc1_))
                              {
                                 addr00df:
                                 §§pop().addEventListener(Event.REMOVED,this.onRemoveLaser);
                                 if(!_loc3_)
                                 {
                                    addr00f5:
                                    this._laser.playOnce();
                                    addr00f1:
                                 }
                                 §§goto(addr00f9);
                              }
                              §§goto(addr00f5);
                           }
                           §§goto(addr00f9);
                        }
                        §§goto(addr00df);
                     }
                  }
                  §§goto(addr00f1);
               }
               else
               {
                  §§push(this.boosterpackAnim);
                  if(_loc3_)
                  {
                     break;
                  }
                  §§pop().removeChildAt(0);
                  if(!_loc3_)
                  {
                     continue;
                  }
               }
               §§goto(addr0061);
            }
            §§pop().addChild(this._laser);
            if(!_loc3_)
            {
               §§goto(addr008e);
               §§push(this.boosterpackAnim);
            }
            addr0042:
         }
         addr00f9:
      }
      
      private function onRemoveLaser(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.onFinishCutPart1Anim();
            if(_loc2_ || Boolean(this))
            {
               addr002a:
               this.startPartAnim();
            }
            return;
         }
         §§goto(addr002a);
      }
      
      private function startPartAnim() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._autoStartPartAnim = true;
            if(_loc3_)
            {
               addr0022:
               §§push(this._partAnim);
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        this.boosterpackImage.visible = false;
                        if(!_loc2_)
                        {
                           §§push(this.boosterpackImagePartAnim);
                           if(!_loc2_)
                           {
                              §§pop().removeChildren();
                              if(!_loc2_)
                              {
                                 §§push(this.boosterpackImagePartAnim);
                                 if(_loc3_)
                                 {
                                    §§pop().addChild(this._partAnim);
                                    addr005c:
                                    if(!_loc2_)
                                    {
                                       addr007a:
                                       this.boosterpackImagePartAnim.visible = this.boosterpackImagePartAnim.includeInLayout = true;
                                       addr0076:
                                       if(!_loc2_)
                                       {
                                          addr008d:
                                          §§push(this._partAnim);
                                          if(!(_loc2_ && Boolean(this)))
                                          {
                                             addr009e:
                                             §§pop().removeAfterPlay = true;
                                             if(!_loc2_)
                                             {
                                                addr00a7:
                                                §§push(this._partAnim);
                                                if(!(_loc2_ && _loc3_))
                                                {
                                                   §§goto(addr00c5);
                                                }
                                                §§goto(addr00e3);
                                             }
                                             §§goto(addr00df);
                                          }
                                          addr00c5:
                                          §§pop().addEventListener(Event.REMOVED,this.onRemovePartAnim);
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             addr00e3:
                                             this._partAnim.playOnce();
                                             addr00df:
                                          }
                                          §§goto(addr00e7);
                                       }
                                       §§goto(addr00df);
                                    }
                                    §§goto(addr00a7);
                                 }
                                 §§goto(addr007a);
                              }
                              §§goto(addr0076);
                           }
                           §§goto(addr005c);
                        }
                        §§goto(addr00df);
                     }
                  }
                  addr00e7:
                  return;
               }
               §§goto(addr009e);
            }
            §§goto(addr008d);
         }
         §§goto(addr0022);
      }
      
      private function onRemovePartAnim(param1:Event) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(param1))
         {
            this.boosterpackImageParts.visible = true;
            if(_loc3_ || _loc2_)
            {
               addr0040:
               this.boosterpackImagePartAnim.visible = this.boosterpackImagePartAnim.includeInLayout = false;
            }
            return;
         }
         §§goto(addr0040);
      }
      
      private function onFinishCutPart1Anim() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            dispatchEvent(new Event(START_PACK_SPARKLE));
         }
      }
      
      private function onCreationComplete() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            §§push(this.boosterpackAnim);
            if(_loc3_)
            {
               §§pop().visible = this.boosterpackAnim.includeInLayout = false;
               if(!_loc2_)
               {
                  addr0053:
                  §§push(this.boosterpackAnim);
                  if(_loc3_)
                  {
                     §§pop().addEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.onAlarmLoaded);
                     if(_loc3_)
                     {
                        addr0072:
                        this.boosterpackAnim.dynaMCSourceName = "testboosterpackAnim";
                        addr006e:
                     }
                     return;
                  }
                  §§goto(addr0072);
               }
               §§goto(addr006e);
            }
            §§goto(addr0072);
         }
         §§goto(addr0053);
      }
      
      private function onAlarmLoaded(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.boosterpackAnim.removeEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.onAlarmLoaded);
            if(!(_loc3_ && _loc3_))
            {
               this._laser = new BitmapClip(this.boosterpackAnim.movieClip.getChildByName("laser") as MovieClip,"laser",24);
               if(_loc2_ || Boolean(this))
               {
                  if(this._autoStartAnim)
                  {
                     if(_loc2_ || Boolean(this))
                     {
                        this.startBoosterPackAnim();
                        if(_loc3_ && Boolean(this))
                        {
                        }
                     }
                  }
                  else
                  {
                     this.stopBoosterPackAnim();
                  }
               }
            }
         }
      }
      
      private function onImagePartAnimLoaded(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.boosterpackImagePartAnim.removeEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.onImagePartAnimLoaded);
            if(!_loc2_)
            {
               this._partAnim = new BitmapClip(this.boosterpackImagePartAnim.movieClip.getChildByName("booster") as MovieClip,"boosterPartAnim_" + this._data.boosterpackVo.gfxId,12);
               if(_loc3_ || _loc2_)
               {
                  §§goto(addr007e);
               }
               §§goto(addr008c);
            }
            addr007e:
            if(this._autoStartPartAnim)
            {
               if(!_loc2_)
               {
                  addr008c:
                  this.startPartAnim();
               }
            }
            §§goto(addr0092);
         }
         addr0092:
      }
      
      private function handleSkip() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            dispatchEvent(new Event(SKIP));
         }
      }
      
      private function _BoosterpackAnimationLayer_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc2_)
               {
                  _loc1_.top = -20;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.mxmlContent = [this._BoosterpackAnimationLayer_Group2_c(),this._BoosterpackAnimationLayer_Group4_c(),this._BoosterpackAnimationLayer_Group5_c()];
                     if(!_loc2_)
                     {
                        §§goto(addr007b);
                     }
                     §§goto(addr0087);
                  }
                  §§goto(addr007b);
               }
               §§goto(addr0087);
            }
            addr007b:
            if(!_loc1_.document)
            {
               if(!_loc2_)
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
      
      private function _BoosterpackAnimationLayer_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.width = 290;
            if(_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.mxmlContent = [this._BoosterpackAnimationLayer_BriskImageDynaLib1_i(),this._BoosterpackAnimationLayer_BriskImageDynaLib2_c(),this._BoosterpackAnimationLayer_BriskImageDynaLib3_i(),this._BoosterpackAnimationLayer_BriskMCDynaLib1_c(),this._BoosterpackAnimationLayer_SpriteVisualElement1_i(),this._BoosterpackAnimationLayer_BriskImageDynaLib4_i(),this._BoosterpackAnimationLayer_BriskMCDynaLib2_i(),this._BoosterpackAnimationLayer_BriskImageDynaLib5_c(),this._BoosterpackAnimationLayer_VGroup1_c()];
                  if(!_loc3_)
                  {
                     §§goto(addr0092);
                  }
               }
               §§goto(addr00a6);
            }
            addr0092:
            if(!_loc1_.document)
            {
               if(_loc2_ || Boolean(this))
               {
                  addr00a6:
                  _loc1_.document = this;
               }
            }
            §§goto(addr00aa);
         }
         addr00aa:
         return _loc1_;
      }
      
      private function _BoosterpackAnimationLayer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.horizontalCenter = 0;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.top = 200;
               if(!_loc3_)
               {
                  _loc1_.dynaLibName = "gui_popups_paperPopup";
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.dynaBmpSourceName = "rewardcomponentPriceBg_big";
                     if(!_loc3_)
                     {
                        addr0063:
                        _loc1_.id = "pricingBg";
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0076:
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr0096:
                                 _loc1_.document = this;
                                 if(_loc2_)
                                 {
                                    §§goto(addr009f);
                                 }
                                 §§goto(addr00a9);
                              }
                           }
                           §§goto(addr009f);
                        }
                        §§goto(addr0096);
                     }
                     addr009f:
                     this.pricingBg = _loc1_;
                     if(_loc2_)
                     {
                        addr00a9:
                        BindingManager.executeBindings(this,"pricingBg",this.pricingBg);
                     }
                     return _loc1_;
                  }
                  §§goto(addr0096);
               }
               §§goto(addr0076);
            }
            §§goto(addr0063);
         }
         §§goto(addr0076);
      }
      
      private function _BoosterpackAnimationLayer_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.horizontalCenter = 0;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.top = 20;
                  if(!_loc3_)
                  {
                     _loc1_.dynaBmpSourceName = "special_cardboard_big";
                     if(!_loc3_)
                     {
                        §§goto(addr0078);
                     }
                     §§goto(addr008c);
                  }
                  §§goto(addr0078);
               }
               §§goto(addr008c);
            }
            addr0078:
            if(!_loc1_.document)
            {
               if(!(_loc3_ && _loc2_))
               {
                  addr008c:
                  _loc1_.document = this;
               }
            }
            §§goto(addr0090);
         }
         addr0090:
         return _loc1_;
      }
      
      private function _BoosterpackAnimationLayer_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.top = 54;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.horizontalCenter = 0;
               if(!_loc2_)
               {
                  _loc1_.dynaLibName = "gui_popups_largeGoodIcons";
                  if(!_loc2_)
                  {
                     _loc1_.visible = true;
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.id = "boosterpackImage";
                        if(_loc3_ || Boolean(this))
                        {
                           addr007f:
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 _loc1_.document = this;
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    §§goto(addr00a8);
                                 }
                              }
                              §§goto(addr00ba);
                           }
                        }
                        addr00a8:
                        this.boosterpackImage = _loc1_;
                        if(_loc3_ || _loc2_)
                        {
                           addr00ba:
                           BindingManager.executeBindings(this,"boosterpackImage",this.boosterpackImage);
                        }
                        §§goto(addr00c7);
                     }
                     §§goto(addr00ba);
                  }
                  addr00c7:
                  return _loc1_;
               }
               §§goto(addr007f);
            }
            §§goto(addr00a8);
         }
         §§goto(addr007f);
      }
      
      private function _BoosterpackAnimationLayer_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_)
            {
               _loc1_.dynaMCSourceName = "stickytape_top";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr0051:
                  _loc1_.width = 110;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.horizontalCenter = 0;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.top = 13;
                        if(_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || _loc3_)
                              {
                                 addr009e:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr00a2);
                        }
                        §§goto(addr009e);
                     }
                  }
               }
            }
            addr00a2:
            return _loc1_;
         }
         §§goto(addr0051);
      }
      
      private function _BoosterpackAnimationLayer_SpriteVisualElement1_i() : SpriteVisualElement
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SpriteVisualElement = new SpriteVisualElement();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.mouseEnabled = false;
            if(_loc2_)
            {
               _loc1_.mouseChildren = false;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.includeInLayout = false;
                  if(_loc2_)
                  {
                     _loc1_.initialized(this,"particleContainer");
                     if(!_loc3_)
                     {
                        addr0077:
                        this.particleContainer = _loc1_;
                        if(!_loc3_)
                        {
                           addr0081:
                           BindingManager.executeBindings(this,"particleContainer",this.particleContainer);
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr0077);
               }
               §§goto(addr0081);
            }
            §§goto(addr0077);
         }
         §§goto(addr0081);
      }
      
      private function _BoosterpackAnimationLayer_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.top = 48;
            if(_loc2_ || _loc2_)
            {
               _loc1_.horizontalCenter = 0;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.dynaLibName = "gui_popups_boosterpackBook";
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.visible = false;
                     if(_loc2_ || Boolean(this))
                     {
                        addr0075:
                        _loc1_.id = "boosterpackImageParts";
                        if(_loc2_ || Boolean(this))
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§goto(addr00a8);
                              }
                              §§goto(addr00bb);
                           }
                           §§goto(addr00b1);
                        }
                        §§goto(addr00bb);
                     }
                     §§goto(addr00a8);
                  }
               }
               §§goto(addr0075);
            }
            §§goto(addr00bb);
         }
         addr00a8:
         _loc1_.document = this;
         if(_loc2_)
         {
            addr00b1:
            this.boosterpackImageParts = _loc1_;
            if(!_loc3_)
            {
               addr00bb:
               BindingManager.executeBindings(this,"boosterpackImageParts",this.boosterpackImageParts);
            }
         }
         return _loc1_;
      }
      
      private function _BoosterpackAnimationLayer_BriskMCDynaLib2_i() : BriskMCDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_boosterpackBook";
            if(!_loc3_)
            {
               _loc1_.id = "boosterpackImagePartAnim";
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        §§goto(addr005e);
                     }
                  }
                  §§goto(addr0067);
               }
               addr005e:
               _loc1_.document = this;
               if(_loc2_)
               {
                  addr0067:
                  this.boosterpackImagePartAnim = _loc1_;
                  if(!_loc3_)
                  {
                     BindingManager.executeBindings(this,"boosterpackImagePartAnim",this.boosterpackImagePartAnim);
                  }
               }
               §§goto(addr007e);
            }
         }
         addr007e:
         return _loc1_;
      }
      
      private function _BoosterpackAnimationLayer_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_boosterpackBook";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.horizontalCenter = 0;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.top = 40;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr0070:
                     _loc1_.dynaBmpSourceName = "sparkles_shadow";
                     if(!_loc3_)
                     {
                        §§goto(addr007c);
                     }
                     §§goto(addr0088);
                  }
                  addr007c:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr0088:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr008c);
               }
               §§goto(addr0070);
            }
            addr008c:
            return _loc1_;
         }
         §§goto(addr0088);
      }
      
      private function _BoosterpackAnimationLayer_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  _loc1_.paddingTop = 212;
                  if(!_loc3_)
                  {
                     _loc1_.horizontalAlign = "center";
                     if(_loc2_)
                     {
                        _loc1_.gap = 0;
                        if(_loc2_)
                        {
                           _loc1_.mxmlContent = [this._BoosterpackAnimationLayer_HGroup2_c(),this._BoosterpackAnimationLayer_Group3_c(),this._BoosterpackAnimationLayer_MultistateButton1_i()];
                           addr0072:
                           if(_loc2_ || _loc2_)
                           {
                              addr00a2:
                              if(!_loc1_.document)
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr00b6:
                                    _loc1_.document = this;
                                 }
                              }
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr0072);
                  }
                  §§goto(addr00a2);
               }
               §§goto(addr00b6);
            }
         }
         §§goto(addr00a2);
      }
      
      private function _BoosterpackAnimationLayer_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.verticalAlign = "middle";
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.horizontalAlign = "center";
               if(_loc3_ || _loc3_)
               {
                  _loc1_.width = 170;
                  if(!_loc2_)
                  {
                     _loc1_.height = 38;
                     if(_loc3_ || _loc2_)
                     {
                        addr0085:
                        _loc1_.mxmlContent = [this._BoosterpackAnimationLayer_LocaLabel1_i()];
                        if(!(_loc2_ && _loc3_))
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr00a9:
                                 _loc1_.document = this;
                              }
                           }
                        }
                     }
                     §§goto(addr00ad);
                  }
                  §§goto(addr0085);
               }
            }
            §§goto(addr00a9);
         }
         addr00ad:
         return _loc1_;
      }
      
      private function _BoosterpackAnimationLayer_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.maxDisplayedLines = 2;
            if(!_loc3_)
            {
               _loc1_.percentWidth = 90;
               if(!(_loc3_ && _loc2_))
               {
                  addr0052:
                  _loc1_.styleName = "boosterpackLabel";
                  if(_loc2_)
                  {
                     addr005d:
                     _loc1_.id = "boosterpackLabel";
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              _loc1_.document = this;
                              if(_loc2_)
                              {
                                 addr0088:
                                 this.boosterpackLabel = _loc1_;
                                 if(!_loc3_)
                                 {
                                    addr0092:
                                    BindingManager.executeBindings(this,"boosterpackLabel",this.boosterpackLabel);
                                 }
                                 §§goto(addr009f);
                              }
                              §§goto(addr0092);
                           }
                           addr009f:
                           return _loc1_;
                        }
                        §§goto(addr0088);
                     }
                  }
                  §§goto(addr0092);
               }
               §§goto(addr005d);
            }
            §§goto(addr0052);
         }
         §§goto(addr0092);
      }
      
      private function _BoosterpackAnimationLayer_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.height = 10;
            if(!_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr0042:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0046);
            }
            §§goto(addr0042);
         }
         addr0046:
         return _loc1_;
      }
      
      private function _BoosterpackAnimationLayer_MultistateButton1_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(!_loc3_)
         {
            _loc1_.bottom = 0;
            if(!_loc3_)
            {
               _loc1_.width = 205;
               if(!_loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr0047:
                     _loc1_.imageNameLeft = "button_icon_arrow_right";
                     if(_loc2_ || Boolean(this))
                     {
                        _loc1_.libNameLeft = "gui_popups_emergencyBook";
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr007c:
                           _loc1_.addEventListener("click",this.__skipButton_click);
                           if(_loc2_)
                           {
                              addr008c:
                              _loc1_.id = "skipButton";
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 addr009f:
                                 if(!_loc1_.document)
                                 {
                                    if(_loc2_ || Boolean(this))
                                    {
                                       addr00be:
                                       _loc1_.document = this;
                                       if(!_loc3_)
                                       {
                                          addr00c7:
                                          this.skipButton = _loc1_;
                                          if(_loc2_ || Boolean(_loc1_))
                                          {
                                             BindingManager.executeBindings(this,"skipButton",this.skipButton);
                                          }
                                       }
                                    }
                                    return _loc1_;
                                 }
                                 §§goto(addr00c7);
                              }
                              §§goto(addr00be);
                           }
                           §§goto(addr009f);
                        }
                        §§goto(addr008c);
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr009f);
               }
               §§goto(addr007c);
            }
            §§goto(addr0047);
         }
         §§goto(addr008c);
      }
      
      public function __skipButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.handleSkip();
         }
      }
      
      private function _BoosterpackAnimationLayer_Group4_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.top = 10;
            if(_loc3_ || _loc2_)
            {
               _loc1_.mxmlContent = [this._BoosterpackAnimationLayer_BriskImageDynaLib6_c()];
               if(_loc3_ || _loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr0076:
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr007a);
            }
            §§goto(addr0076);
         }
         addr007a:
         return _loc1_;
      }
      
      private function _BoosterpackAnimationLayer_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_boosterpackBook";
            if(!_loc2_)
            {
               _loc1_.horizontalCenter = 0;
               if(_loc3_ || _loc3_)
               {
                  §§goto(addr0057);
               }
               §§goto(addr0076);
            }
            addr0057:
            _loc1_.dynaBmpSourceName = "blue_line_long";
            if(_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     addr0076:
                     _loc1_.document = this;
                  }
               }
            }
            §§goto(addr007a);
         }
         addr007a:
         return _loc1_;
      }
      
      private function _BoosterpackAnimationLayer_Group5_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  _loc1_.mxmlContent = [this._BoosterpackAnimationLayer_SpriteVisualElement2_i(),this._BoosterpackAnimationLayer_List1_i(),this._BoosterpackAnimationLayer_SpriteVisualElement3_i()];
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     §§goto(addr0073);
                  }
                  §§goto(addr007f);
               }
            }
            addr0073:
            if(!_loc1_.document)
            {
               if(_loc2_)
               {
                  addr007f:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr007f);
      }
      
      private function _BoosterpackAnimationLayer_SpriteVisualElement2_i() : SpriteVisualElement
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SpriteVisualElement = new SpriteVisualElement();
         if(!_loc2_)
         {
            _loc1_.mouseEnabled = false;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.mouseChildren = false;
               §§goto(addr0036);
            }
            §§goto(addr008d);
         }
         addr0036:
         if(!_loc2_)
         {
            _loc1_.includeInLayout = false;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.initialized(this,"rewardParticleContainer");
               if(_loc3_)
               {
                  §§goto(addr007b);
               }
            }
            §§goto(addr008d);
         }
         addr007b:
         this.rewardParticleContainer = _loc1_;
         if(_loc3_ || _loc2_)
         {
            addr008d:
            BindingManager.executeBindings(this,"rewardParticleContainer",this.rewardParticleContainer);
         }
         return _loc1_;
      }
      
      private function _BoosterpackAnimationLayer_List1_i() : List
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:List = new List();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.itemRenderer = this._BoosterpackAnimationLayer_ClassFactory1_c();
            if(_loc3_ || _loc2_)
            {
               addr003e:
               _loc1_.top = 60;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.horizontalCenter = 0;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.verticalCenter = 0;
                     if(_loc3_)
                     {
                        _loc1_.percentWidth = 100;
                        if(!_loc2_)
                        {
                           _loc1_.percentHeight = 100;
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr0095:
                              _loc1_.setStyle("skinClass",BoosterpackRewardListSkin);
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 §§goto(addr00ac);
                              }
                           }
                           §§goto(addr00e2);
                        }
                        §§goto(addr00cf);
                     }
                     §§goto(addr0095);
                  }
                  §§goto(addr00d8);
               }
               addr00ac:
               _loc1_.id = "itemList";
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr00cf:
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           §§goto(addr00d8);
                        }
                     }
                     §§goto(addr00e2);
                  }
                  addr00d8:
                  this.itemList = _loc1_;
                  if(_loc3_)
                  {
                     addr00e2:
                     BindingManager.executeBindings(this,"itemList",this.itemList);
                  }
               }
               §§goto(addr00ef);
            }
            addr00ef:
            return _loc1_;
         }
         §§goto(addr003e);
      }
      
      private function _BoosterpackAnimationLayer_ClassFactory1_c() : ClassFactory
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ClassFactory = new ClassFactory();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.generator = BoosterpackRewardItemRenderer;
         }
         return _loc1_;
      }
      
      private function _BoosterpackAnimationLayer_SpriteVisualElement3_i() : SpriteVisualElement
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SpriteVisualElement = new SpriteVisualElement();
         if(_loc2_)
         {
            _loc1_.mouseEnabled = false;
            if(!_loc3_)
            {
               §§goto(addr002d);
            }
            §§goto(addr004a);
         }
         addr002d:
         _loc1_.mouseChildren = false;
         if(!(_loc3_ && Boolean(this)))
         {
            addr004a:
            _loc1_.includeInLayout = false;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.initialized(this,"bonusfactorContainer");
               if(_loc2_)
               {
                  §§goto(addr0075);
               }
               §§goto(addr0087);
            }
         }
         addr0075:
         this.bonusfactorContainer = _loc1_;
         if(_loc2_ || Boolean(_loc1_))
         {
            addr0087:
            BindingManager.executeBindings(this,"bonusfactorContainer",this.bonusfactorContainer);
         }
         return _loc1_;
      }
      
      private function _BoosterpackAnimationLayer_BriskMCDynaLib3_i() : BriskMCDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_boosterpackBook";
            if(!_loc3_)
            {
               _loc1_.id = "boosterpackAnim";
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc3_)
                     {
                        addr006a:
                        _loc1_.document = this;
                        if(!_loc3_)
                        {
                           addr0073:
                           this.boosterpackAnim = _loc1_;
                           if(_loc2_ || Boolean(this))
                           {
                              BindingManager.executeBindings(this,"boosterpackAnim",this.boosterpackAnim);
                           }
                        }
                     }
                     §§goto(addr0092);
                  }
                  §§goto(addr0073);
               }
            }
            §§goto(addr006a);
         }
         addr0092:
         return _loc1_;
      }
      
      private function _BoosterpackAnimationLayer_UiInfolayerAlignmentLine1_i() : UiInfolayerAlignmentLine
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         if(_loc3_)
         {
            _loc1_.left = 312;
            if(!(_loc2_ && Boolean(this)))
            {
               addr0037:
               _loc1_.top = 100;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.right = 60;
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.lineId = 7;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        _loc1_.id = "uiInfolayerAlignmentLine";
                        if(_loc3_)
                        {
                           addr0086:
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || Boolean(_loc1_))
                              {
                                 addr00a8:
                                 _loc1_.document = this;
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    addr00b9:
                                    this.uiInfolayerAlignmentLine = _loc1_;
                                    if(!_loc2_)
                                    {
                                       addr00c3:
                                       BindingManager.executeBindings(this,"uiInfolayerAlignmentLine",this.uiInfolayerAlignmentLine);
                                    }
                                    §§goto(addr00d0);
                                 }
                                 §§goto(addr00c3);
                              }
                              addr00d0:
                              return _loc1_;
                           }
                           §§goto(addr00b9);
                        }
                        §§goto(addr00a8);
                     }
                     §§goto(addr0086);
                  }
                  §§goto(addr00b9);
               }
               §§goto(addr0086);
            }
            §§goto(addr00b9);
         }
         §§goto(addr0037);
      }
      
      public function ___BoosterpackAnimationLayer_Group1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this.onCreationComplete();
         }
      }
      
      private function _BoosterpackAnimationLayer_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(!(_loc2_ && _loc3_))
         {
            §§pop().§§slot[1] = [];
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§newactivation());
               if(_loc3_ || Boolean(this))
               {
                  §§push(§§pop().§§slot[1]);
                  if(_loc3_)
                  {
                     §§push(0);
                     if(!(_loc2_ && _loc1_))
                     {
                        §§pop()[§§pop()] = new Binding(this,function():Number
                        {
                           return boosterpackImage.x;
                        },null,"boosterpackAnim.x");
                        if(!_loc2_)
                        {
                           §§push(§§newactivation());
                           if(_loc3_)
                           {
                              §§push(§§pop().§§slot[1]);
                              if(_loc3_ || _loc1_)
                              {
                                 §§push(1);
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    §§pop()[§§pop()] = new Binding(this,function():Number
                                    {
                                       return boosterpackImage.y;
                                    },null,"boosterpackAnim.y");
                                    if(!_loc2_)
                                    {
                                       addr00c9:
                                       §§push(§§newactivation());
                                       if(_loc3_)
                                       {
                                          §§goto(addr00ee);
                                       }
                                       §§goto(addr00ec);
                                    }
                                    §§goto(addr00ea);
                                 }
                                 §§goto(addr00d9);
                              }
                              addr00ee:
                           }
                           §§goto(addr00d0);
                        }
                        §§goto(addr00ea);
                     }
                     §§goto(addr00d9);
                  }
                  §§goto(addr00ee);
               }
               §§goto(addr00ec);
            }
            §§goto(addr00c9);
         }
         addr00d0:
         §§push(§§pop().§§slot[1]);
         if(!_loc2_)
         {
            addr00d9:
            §§pop()[2] = new Binding(this,function():uint
            {
               return UserInterfaceInfoLayerAlignLineVo.ALIGN_TOP;
            },null,"uiInfolayerAlignmentLine.alignment");
            addr00ec:
            addr00ea:
            return result;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bonusfactorContainer() : SpriteVisualElement
      {
         return this._1411267059bonusfactorContainer;
      }
      
      public function set bonusfactorContainer(param1:SpriteVisualElement) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1411267059bonusfactorContainer;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  addr004a:
                  this._1411267059bonusfactorContainer = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bonusfactorContainer",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr004a);
      }
      
      [Bindable(event="propertyChange")]
      public function get boosterpackAnim() : BriskMCDynaLib
      {
         return this._1082992474boosterpackAnim;
      }
      
      public function set boosterpackAnim(param1:BriskMCDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1082992474boosterpackAnim;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._1082992474boosterpackAnim = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"boosterpackAnim",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get boosterpackImage() : BriskImageDynaLib
      {
         return this._779621070boosterpackImage;
      }
      
      public function set boosterpackImage(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._779621070boosterpackImage;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._779621070boosterpackImage = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"boosterpackImage",_loc2_,param1));
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
         §§goto(addr0069);
      }
      
      [Bindable(event="propertyChange")]
      public function get boosterpackImagePartAnim() : BriskMCDynaLib
      {
         return this._179476490boosterpackImagePartAnim;
      }
      
      public function set boosterpackImagePartAnim(param1:BriskMCDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._179476490boosterpackImagePartAnim;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._179476490boosterpackImagePartAnim = param1;
                  if(_loc3_)
                  {
                     addr005a:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr006a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"boosterpackImagePartAnim",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0079);
               }
               §§goto(addr006a);
            }
            addr0079:
            return;
         }
         §§goto(addr005a);
      }
      
      [Bindable(event="propertyChange")]
      public function get boosterpackImageParts() : BriskImageDynaLib
      {
         return this._783569714boosterpackImageParts;
      }
      
      public function set boosterpackImageParts(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._783569714boosterpackImageParts;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._783569714boosterpackImageParts = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     §§goto(addr005b);
                  }
                  §§goto(addr0072);
               }
               addr005b:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     addr0072:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"boosterpackImageParts",_loc2_,param1));
                  }
               }
               §§goto(addr0081);
            }
            addr0081:
            return;
         }
         §§goto(addr005b);
      }
      
      [Bindable(event="propertyChange")]
      public function get boosterpackLabel() : LocaLabel
      {
         return this._777207093boosterpackLabel;
      }
      
      public function set boosterpackLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._777207093boosterpackLabel;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._777207093boosterpackLabel = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"boosterpackLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0078);
                  }
                  §§goto(addr0069);
               }
            }
         }
         addr0078:
      }
      
      [Bindable(event="propertyChange")]
      public function get itemList() : List
      {
         return this._1177280081itemList;
      }
      
      public function set itemList(param1:List) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1177280081itemList;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1177280081itemList = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemList",_loc2_,param1));
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
      public function get particleContainer() : SpriteVisualElement
      {
         return this._2091119771particleContainer;
      }
      
      public function set particleContainer(param1:SpriteVisualElement) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2091119771particleContainer;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._2091119771particleContainer = param1;
                  if(!_loc3_)
                  {
                     addr0050:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"particleContainer",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0050);
      }
      
      [Bindable(event="propertyChange")]
      public function get pricingBg() : BriskImageDynaLib
      {
         return this._2121281877pricingBg;
      }
      
      public function set pricingBg(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2121281877pricingBg;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._2121281877pricingBg = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0052:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pricingBg",_loc2_,param1));
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
      public function get rewardParticleContainer() : SpriteVisualElement
      {
         return this._2104932052rewardParticleContainer;
      }
      
      public function set rewardParticleContainer(param1:SpriteVisualElement) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2104932052rewardParticleContainer;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._2104932052rewardParticleContainer = param1;
                  if(!_loc3_)
                  {
                     addr0056:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardParticleContainer",_loc2_,param1));
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
         §§goto(addr0056);
      }
      
      [Bindable(event="propertyChange")]
      public function get skipButton() : MultistateButton
      {
         return this._319513199skipButton;
      }
      
      public function set skipButton(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._319513199skipButton;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._319513199skipButton = param1;
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr007a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skipButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr0089);
                  }
                  §§goto(addr007a);
               }
            }
            addr0089:
            return;
         }
         §§goto(addr007a);
      }
      
      [Bindable(event="propertyChange")]
      public function get uiInfolayerAlignmentLine() : UiInfolayerAlignmentLine
      {
         return this._1218573432uiInfolayerAlignmentLine;
      }
      
      public function set uiInfolayerAlignmentLine(param1:UiInfolayerAlignmentLine) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1218573432uiInfolayerAlignmentLine;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1218573432uiInfolayerAlignmentLine = param1;
                  if(_loc3_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uiInfolayerAlignmentLine",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0057);
            }
            addr0075:
            return;
         }
         §§goto(addr0066);
      }
   }
}

