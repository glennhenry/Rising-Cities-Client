package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import com.greensock.TweenMax;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import net.bigpoint.as3toolbox.bitmapclip.BitmapClip;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.field.vo.ProductionFieldObjectVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PreloadableDisplayObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.SmartObjectContainer;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IProductionSlotManager;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeLoadServiceDynamic;
   import net.bigpoint.util.MathUtils;
   import net.bigpoint.util.RenderHelper;
   
   public class ProductionSlotManager implements IProductionSlotManager
   {
      
      private var _productionObjectVo:ProductionFieldObjectVo;
      
      private var _billboardContainer:SmartObjectContainer;
      
      private var _asset:*;
      
      private var _currentPresentation:DisplayObjectContainer;
      
      private var _dimensionRect:Rectangle;
      
      private var _slot1:DisplayObjectContainer;
      
      private var _slot2:DisplayObjectContainer;
      
      private var _slot3:DisplayObjectContainer;
      
      private var _goodImg:Bitmap;
      
      private var _currentGoodGFXIDStep:String;
      
      private var _isDirty:Boolean;
      
      private var _iconsLoaded:Boolean;
      
      private var _assetLoaded:Boolean;
      
      private var _loaderInstance:FileRuntimeLoadServiceDynamic;
      
      private var _currentStep:uint;
      
      private var _goodClip:BitmapClip;
      
      public function ProductionSlotManager()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super();
            if(!(_loc2_ && _loc2_))
            {
               addr0037:
               this._loaderInstance = FileRuntimeLoadServiceDynamic.getInstance();
            }
            return;
         }
         §§goto(addr0037);
      }
      
      public function prepareProductionSlotManager(param1:ProductionFieldObjectVo, param2:SmartObjectContainer, param3:*) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!_loc4_)
         {
            this._productionObjectVo = param1;
            if(_loc5_ || Boolean(this))
            {
               this._billboardContainer = param2;
               if(!_loc4_)
               {
                  this._asset = param3;
                  addr0039:
                  if(!_loc4_)
                  {
                     this._billboardContainer.addEventListener(SmartObjectContainer.INVALIDATED,this.onAssetChanged);
                     if(_loc5_ || Boolean(this))
                     {
                        addr007d:
                        this._productionObjectVo.addEventListener(ProductionFieldObjectVo.EVENT_PRODUCTION_TERM_CHANGED,this.onTermChanged);
                        if(_loc5_ || Boolean(this))
                        {
                           §§goto(addr009d);
                        }
                        §§goto(addr00a9);
                     }
                     addr009d:
                     this.prepareSlots();
                     if(!_loc4_)
                     {
                        addr00a9:
                        this.loadIconAssets();
                     }
                     return;
                  }
                  §§goto(addr00a9);
               }
            }
            §§goto(addr007d);
         }
         §§goto(addr0039);
      }
      
      public function invalidateProductionSlotManager() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this.nullcheck("ProductionSlotManager: prepare before invalidation!");
            if(_loc1_)
            {
               if(!this._productionObjectVo.useConstructionAsset)
               {
                  if(!_loc2_)
                  {
                     §§push(this._slot1 == null);
                     if(!(_loc2_ && _loc2_))
                     {
                        var _temp_2:* = §§pop();
                        §§push(_temp_2);
                        §§push(_temp_2);
                        if(!_loc2_)
                        {
                           if(§§pop())
                           {
                              if(_loc1_)
                              {
                                 §§pop();
                                 if(_loc1_ || Boolean(this))
                                 {
                                    addr006e:
                                    §§push(this._slot2 == null);
                                    if(_loc1_)
                                    {
                                       addr0079:
                                       var _temp_4:* = §§pop();
                                       addr007a:
                                       §§push(_temp_4);
                                       if(_temp_4)
                                       {
                                          if(!_loc2_)
                                          {
                                             §§goto(addr008d);
                                          }
                                       }
                                       §§goto(addr0099);
                                    }
                                    §§goto(addr008d);
                                 }
                                 §§goto(addr00a2);
                              }
                              addr008d:
                              §§pop();
                              if(_loc1_)
                              {
                                 addr0099:
                                 if(this._slot3 == null)
                                 {
                                    if(!_loc2_)
                                    {
                                       addr00a2:
                                       this.prepareSlots();
                                       if(!(_loc2_ && Boolean(this)))
                                       {
                                          addr00b5:
                                          this.fillSlots();
                                       }
                                    }
                                    §§goto(addr00ba);
                                 }
                                 §§goto(addr00b5);
                              }
                              §§goto(addr00ba);
                           }
                           §§goto(addr0079);
                        }
                        §§goto(addr007a);
                     }
                     §§goto(addr0079);
                  }
                  §§goto(addr00b5);
               }
               addr00ba:
               return;
            }
            §§goto(addr006e);
         }
         §§goto(addr00a2);
      }
      
      private function loadIconAssets() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:Array = null;
         if(_loc3_)
         {
            if(this._productionObjectVo.currentRunningEventGFXId != 0)
            {
               addr0029:
               §§push("infield_goods");
               if(_loc3_)
               {
                  §§push(null);
                  if(_loc3_)
                  {
                     _loc1_ = §§pop();
                  }
                  else
                  {
                     addr004b:
                     _loc1_ = §§pop();
                  }
                  var _loc2_:String = "preloadDoneNotification_InfieldGoods";
                  if(!_loc4_)
                  {
                     §§push(this._loaderInstance);
                     if(_loc3_)
                     {
                        if(!§§pop().libAllReadyLoaded("infield_goods"))
                        {
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              §§push(this._loaderInstance);
                              if(!_loc4_)
                              {
                                 addr0090:
                                 §§push(_loc2_);
                                 if(!(_loc4_ && Boolean(this)))
                                 {
                                    §§pop().addEventListener(§§pop(),this.iconsLoaded);
                                    if(_loc3_)
                                    {
                                       §§push(this._loaderInstance);
                                       if(!_loc4_)
                                       {
                                          §§pop().checkSWFArrayLoaded(_loc1_,_loc2_);
                                          if(_loc4_ && _loc3_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          addr00e1:
                                          §§pop().removeEventListener(_loc2_,this.iconsLoaded);
                                          addr00d2:
                                          if(_loc3_ || Boolean(_loc2_))
                                          {
                                             this._iconsLoaded = true;
                                             if(!(_loc4_ && Boolean(_loc2_)))
                                             {
                                                addr0109:
                                                this.fillSlots(true);
                                             }
                                             §§goto(addr010f);
                                          }
                                          §§goto(addr0109);
                                       }
                                    }
                                    §§goto(addr010f);
                                 }
                                 §§goto(addr00e1);
                              }
                              §§goto(addr00d2);
                           }
                           §§goto(addr010f);
                        }
                        else
                        {
                           §§push(this._loaderInstance);
                        }
                        §§goto(addr00d2);
                     }
                     §§goto(addr0090);
                  }
                  addr010f:
                  return;
               }
               addr0049:
               §§push(null);
               §§goto(addr004b);
            }
            else
            {
               §§push("infield_goods");
            }
            §§goto(addr0049);
         }
         §§goto(addr0029);
      }
      
      private function iconsLoaded(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._iconsLoaded = true;
            if(_loc3_)
            {
               this.loadIconAssets();
            }
         }
      }
      
      private function prepareSlots() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this._isDirty = true;
            if(!_loc2_)
            {
               if(this._asset != null)
               {
                  if(_loc1_)
                  {
                     §§push(this._asset is PreloadableDisplayObject);
                     if(_loc1_)
                     {
                        var _temp_1:* = §§pop();
                        §§push(_temp_1);
                        if(_temp_1)
                        {
                           if(!_loc2_)
                           {
                              §§pop();
                              if(!_loc2_)
                              {
                                 addr004a:
                                 §§push((this._asset as PreloadableDisplayObject).loadComplete);
                                 if(_loc1_)
                                 {
                                    §§push(!§§pop());
                                    if(_loc1_)
                                    {
                                       addr0060:
                                       if(§§pop())
                                       {
                                          if(_loc1_)
                                          {
                                             (this._asset as PreloadableDisplayObject).addEventListener(PreloadableDisplayObject.PRELOADING_COMPLETE,this.handlePreloadComplete);
                                             if(!(_loc1_ || _loc1_))
                                             {
                                                §§goto(addr01a1);
                                             }
                                          }
                                          return;
                                       }
                                       addr00a4:
                                       if((this._asset as PreloadableDisplayObject).loadComplete)
                                       {
                                          if(_loc1_ || Boolean(this))
                                          {
                                             (this._asset.presentation as MovieClip).gotoAndStop(this._productionObjectVo.currentLevel);
                                             if(_loc1_)
                                             {
                                                this._currentPresentation = this._asset.presentation.getChildAt(1);
                                                if(_loc1_ || _loc2_)
                                                {
                                                   addr00f8:
                                                   this._dimensionRect = this._asset.presentation.getChildAt(1).getBounds(this._asset.presentation);
                                                   if(!(_loc2_ && Boolean(this)))
                                                   {
                                                      addr0122:
                                                      this._slot1 = this._asset.presentation.getChildAt(1).getChildByName("slot1") as DisplayObjectContainer;
                                                      if(!_loc2_)
                                                      {
                                                         this._slot2 = this._asset.presentation.getChildAt(1).getChildByName("slot2") as DisplayObjectContainer;
                                                         if(!_loc2_)
                                                         {
                                                            this._slot3 = this._asset.presentation.getChildAt(1).getChildByName("slot3") as DisplayObjectContainer;
                                                            addr0164:
                                                            if(!_loc2_)
                                                            {
                                                               addr018f:
                                                               this._assetLoaded = true;
                                                               if(!(_loc2_ && Boolean(this)))
                                                               {
                                                                  addr01a1:
                                                                  this._currentGoodGFXIDStep = "0_0";
                                                               }
                                                               §§goto(addr01a8);
                                                            }
                                                            §§goto(addr01a1);
                                                         }
                                                      }
                                                      §§goto(addr01a8);
                                                   }
                                                   §§goto(addr018f);
                                                }
                                                §§goto(addr01a8);
                                             }
                                             §§goto(addr0164);
                                          }
                                          §§goto(addr00f8);
                                       }
                                       §§goto(addr01a1);
                                    }
                                 }
                                 §§goto(addr00a4);
                              }
                              §§goto(addr0164);
                           }
                           §§goto(addr00a4);
                        }
                     }
                     §§goto(addr0060);
                  }
                  §§goto(addr004a);
               }
               addr01a8:
               return;
            }
            §§goto(addr01a1);
         }
         §§goto(addr0122);
      }
      
      private function handlePreloadComplete(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            (this._asset as PreloadableDisplayObject).removeEventListener(PreloadableDisplayObject.PRELOADING_COMPLETE,this.handlePreloadComplete);
            if(_loc2_)
            {
               this.invalidateProductionSlotManager();
            }
         }
      }
      
      private function onAssetChanged(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            if(!this._productionObjectVo.isInBaseMode)
            {
               if(_loc3_ || _loc3_)
               {
                  if(this._currentPresentation != this._billboardContainer.currentImage)
                  {
                     if(_loc3_ || Boolean(this))
                     {
                        addr006f:
                        this._slot1 = null;
                        if(!_loc2_)
                        {
                           addr0079:
                           this._slot2 = null;
                           if(!(_loc2_ && Boolean(param1)))
                           {
                              this._slot3 = null;
                              if(!_loc2_)
                              {
                                 addr0095:
                                 this.invalidateProductionSlotManager();
                              }
                              §§goto(addr009a);
                           }
                           §§goto(addr0095);
                        }
                        §§goto(addr009a);
                     }
                     §§goto(addr0079);
                  }
                  §§goto(addr009a);
               }
               §§goto(addr006f);
            }
            addr009a:
            return;
         }
         §§goto(addr0079);
      }
      
      private function onTermChanged(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            param1.stopPropagation();
            if(!(_loc3_ && _loc2_))
            {
               §§goto(addr003c);
            }
            §§goto(addr0054);
         }
         addr003c:
         if(!this._productionObjectVo.isInBaseMode)
         {
            if(!(_loc3_ && Boolean(this)))
            {
               addr0054:
               this.invalidateProductionSlotManager();
            }
         }
      }
      
      private function checkVo() : void
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc1_:PhaseDTO = null;
         var _loc2_:ConfigOutputDTO = null;
         var _loc3_:String = null;
         var _loc4_:MovieClip = null;
         if(_loc9_ || Boolean(_loc3_))
         {
            §§push(this._iconsLoaded);
            if(_loc9_ || Boolean(_loc2_))
            {
               if(§§pop())
               {
                  if(!(_loc10_ && Boolean(_loc2_)))
                  {
                     addr0061:
                     if(!this._productionObjectVo.isIdle)
                     {
                        if(_loc9_)
                        {
                           addr006b:
                           this._currentStep = this._productionObjectVo.productionTerm;
                        }
                        addr0077:
                        for each(_loc1_ in this._productionObjectVo.activePhases)
                        {
                           if(!_loc10_)
                           {
                              if(_loc1_.config.phaseType != ServerPhaseTypes.PRODUCTION)
                              {
                                 continue;
                              }
                              if(!_loc9_)
                              {
                                 continue;
                              }
                           }
                           var _loc7_:int = 0;
                           if(_loc9_)
                           {
                              for each(_loc2_ in _loc1_.config.listEntryOutputs)
                              {
                                 if(_loc9_ || Boolean(_loc2_))
                                 {
                                    §§push(_loc2_.goodConfig);
                                    if(_loc9_ || Boolean(_loc1_))
                                    {
                                       if(!§§pop())
                                       {
                                          continue;
                                       }
                                       if(_loc9_)
                                       {
                                          addr00f9:
                                          §§push(this._currentGoodGFXIDStep);
                                          if(_loc9_ || Boolean(_loc1_))
                                          {
                                             §§push(_loc2_.goodConfig.gfxId + "_");
                                             if(!_loc10_)
                                             {
                                                §§push(§§pop() + this._currentStep);
                                             }
                                             if(§§pop() == §§pop())
                                             {
                                                continue;
                                             }
                                             if(!(_loc10_ && Boolean(_loc3_)))
                                             {
                                                this._isDirty = true;
                                                if(_loc9_ || Boolean(this))
                                                {
                                                   addr0194:
                                                   addr0146:
                                                   §§push("infieldgood_");
                                                   if(!(_loc10_ && Boolean(this)))
                                                   {
                                                      §§push(§§pop() + _loc2_.goodConfig.gfxId);
                                                      if(_loc9_ || Boolean(_loc3_))
                                                      {
                                                         §§push(§§pop() + "_");
                                                         if(!(_loc10_ && Boolean(_loc1_)))
                                                         {
                                                            §§push(§§pop() + this._currentStep);
                                                         }
                                                      }
                                                   }
                                                   _loc3_ = §§pop();
                                                   if(_loc9_ || Boolean(_loc3_))
                                                   {
                                                      addr01a7:
                                                      if(_loc2_.goodConfig.gfxId >= 61000)
                                                      {
                                                         addr01b1:
                                                         §§push(this._loaderInstance);
                                                         if(_loc9_)
                                                         {
                                                            §§push(this._productionObjectVo.currentRunningEventGFXId + "_Infield_Production_Slot_Goods");
                                                            if(!(_loc10_ && Boolean(_loc3_)))
                                                            {
                                                               _loc4_ = §§pop().getFileAsMovieClip(§§pop());
                                                               if(_loc9_)
                                                               {
                                                                  addr01f8:
                                                                  _loc4_.gotoAndStop(_loc3_);
                                                                  if(!(_loc10_ && Boolean(_loc1_)))
                                                                  {
                                                                     addr020d:
                                                                     if(_loc4_.getChildAt(0) is MovieClip)
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        this._goodClip = new BitmapClip(_loc4_.getChildAt(0) as MovieClip,_loc3_,8);
                                                                        if(!(_loc9_ || Boolean(_loc3_)))
                                                                        {
                                                                           continue;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        this._goodImg = RenderHelper.getRendered(_loc4_,_loc4_.getChildAt(0).getBounds(_loc4_));
                                                                        if(!(_loc9_ || Boolean(this)))
                                                                        {
                                                                           continue;
                                                                        }
                                                                     }
                                                                  }
                                                                  §§push(this);
                                                                  §§push(_loc2_.goodConfig.gfxId + "_");
                                                                  if(_loc9_ || Boolean(_loc1_))
                                                                  {
                                                                     §§push(§§pop() + this._currentStep);
                                                                  }
                                                                  §§pop()._currentGoodGFXIDStep = §§pop();
                                                                  continue;
                                                               }
                                                               §§goto(addr020d);
                                                            }
                                                            else
                                                            {
                                                               addr01ef:
                                                               _loc4_ = §§pop().getFileAsMovieClip(§§pop());
                                                            }
                                                            §§goto(addr01f8);
                                                         }
                                                         else
                                                         {
                                                            addr01ec:
                                                            §§push("infield_goods");
                                                         }
                                                         §§goto(addr01ef);
                                                      }
                                                      else
                                                      {
                                                         §§push(this._loaderInstance);
                                                      }
                                                      §§goto(addr01ec);
                                                   }
                                                }
                                             }
                                             §§goto(addr01b1);
                                          }
                                          §§goto(addr0194);
                                       }
                                       §§goto(addr0146);
                                    }
                                    §§goto(addr01a7);
                                 }
                                 §§goto(addr00f9);
                              }
                           }
                        }
                        if(_loc10_ && Boolean(_loc2_))
                        {
                           addr02e9:
                           this._currentGoodGFXIDStep = "0_0";
                           if(_loc9_ || Boolean(this))
                           {
                              addr02fe:
                              this._goodImg = null;
                              if(_loc9_)
                              {
                                 addr0309:
                                 this._goodClip = null;
                              }
                           }
                        }
                     }
                     else if(this._currentGoodGFXIDStep != "0_0")
                     {
                        if(_loc9_)
                        {
                           this._isDirty = true;
                           if(_loc9_)
                           {
                              §§goto(addr02e9);
                           }
                           §§goto(addr02fe);
                        }
                        §§goto(addr0309);
                     }
                     §§goto(addr030e);
                  }
                  §§goto(addr006b);
               }
               addr030e:
               return;
            }
            §§goto(addr0061);
         }
         §§goto(addr0077);
      }
      
      private function fillSlots(param1:Boolean = false) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            §§push(param1);
            if(_loc2_ || Boolean(this))
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     §§push(this._productionObjectVo);
                     if(_loc2_ || _loc3_)
                     {
                        if(§§pop().currentProductionPhase != null)
                        {
                           if(_loc2_)
                           {
                              addr0063:
                              this._productionObjectVo.startProductionTime();
                              if(!_loc3_)
                              {
                                 addr007a:
                                 addr007e:
                                 if(this._assetLoaded)
                                 {
                                    if(_loc2_ || _loc2_)
                                    {
                                       addr008f:
                                       this.checkVo();
                                       if(!(_loc3_ && param1))
                                       {
                                          addr00a2:
                                          this.redraw();
                                       }
                                       §§goto(addr00a8);
                                    }
                                    §§goto(addr00a2);
                                 }
                                 §§goto(addr00a8);
                              }
                              §§goto(addr008f);
                              addr005f:
                           }
                           addr00a8:
                           return;
                        }
                        §§goto(addr007a);
                     }
                     §§goto(addr0063);
                  }
                  §§goto(addr005f);
               }
               §§goto(addr007a);
            }
            §§goto(addr007e);
         }
         §§goto(addr005f);
      }
      
      private function redraw() : void
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc1_:DisplayObjectContainer = null;
         var _loc2_:Vector.<DisplayObjectContainer> = null;
         var _loc3_:DisplayObjectContainer = null;
         var _loc4_:Sprite = null;
         var _loc5_:DisplayObject = null;
         var _loc6_:Bitmap = null;
         var _loc7_:BitmapClip = null;
         if(_loc11_ || Boolean(this))
         {
            if(this._isDirty)
            {
               loop0:
               do
               {
                  §§push(this._billboardContainer);
                  while(§§pop().numChildren > 0)
                  {
                     §§push(this._billboardContainer);
                     if(_loc11_ || Boolean(_loc2_))
                     {
                        continue loop0;
                     }
                  }
                  break;
               }
               while(§§pop().removeChildAt(0), _loc11_ || Boolean(_loc1_));
               
               _loc2_ = new <DisplayObjectContainer>[this._slot1,this._slot2,this._slot3];
               if(!_loc10_)
               {
                  §§push(0);
                  if(!_loc10_)
                  {
                     var _loc8_:* = §§pop();
                     if(!(_loc10_ && Boolean(_loc3_)))
                     {
                        var _loc9_:* = _loc2_;
                        loop2:
                        while(true)
                        {
                           §§push(§§hasnext(_loc9_,_loc8_));
                           if(_loc10_)
                           {
                              break;
                           }
                           if(§§pop())
                           {
                              _loc1_ = §§nextvalue(_loc8_,_loc9_);
                              if(_loc11_)
                              {
                                 if(_loc1_ == null)
                                 {
                                    continue;
                                 }
                                 if(_loc11_)
                                 {
                                    _loc1_.getChildAt(0).visible = false;
                                    if(_loc11_)
                                    {
                                    }
                                 }
                              }
                              while(_loc1_.numChildren > 1)
                              {
                                 _loc1_.removeChildAt(1);
                                 if(!_loc11_)
                                 {
                                    break;
                                 }
                              }
                              continue;
                           }
                           if(_loc11_ || Boolean(_loc2_))
                           {
                              if(_loc11_ || Boolean(_loc3_))
                              {
                                 if(!_loc10_)
                                 {
                                    §§push(this._goodClip);
                                    if(_loc11_ || Boolean(_loc1_))
                                    {
                                       §§push(null);
                                       if(_loc11_ || Boolean(_loc3_))
                                       {
                                          if(§§pop() != §§pop())
                                          {
                                             if(_loc11_)
                                             {
                                                _loc4_ = new Sprite();
                                                _loc4_.addChild(RenderHelper.getRendered(this._currentPresentation,this._dimensionRect));
                                                if(!_loc10_)
                                                {
                                                   this._billboardContainer.addChild(_loc4_);
                                                }
                                                addr01b5:
                                                _loc8_ = 0;
                                                §§goto(addr01b3);
                                             }
                                             §§goto(addr0389);
                                          }
                                          addr01b3:
                                          if(!(_loc10_ && Boolean(_loc1_)))
                                          {
                                             _loc9_ = _loc2_;
                                             while(true)
                                             {
                                                §§push(§§hasnext(_loc9_,_loc8_));
                                                break loop2;
                                             }
                                          }
                                          §§goto(addr0381);
                                       }
                                       §§goto(addr038e);
                                    }
                                    §§goto(addr038d);
                                 }
                                 §§goto(addr03ad);
                              }
                              §§goto(addr0381);
                           }
                        }
                        for(; §§pop(); §§push(§§hasnext(_loc9_,_loc8_)))
                        {
                           _loc3_ = §§nextvalue(_loc8_,_loc9_);
                           if(_loc11_ || Boolean(_loc3_))
                           {
                              if(_loc3_ == null)
                              {
                                 continue;
                              }
                              if(_loc11_ || Boolean(_loc3_))
                              {
                                 if(this._currentGoodGFXIDStep == "0_0")
                                 {
                                    _loc3_.visible = false;
                                    continue;
                                 }
                                 if(!_loc11_)
                                 {
                                    continue;
                                 }
                              }
                           }
                           _loc5_ = _loc3_.getChildAt(0);
                           if(_loc11_)
                           {
                              if(this._goodImg != null)
                              {
                                 if(!_loc10_)
                                 {
                                    addr0235:
                                    _loc6_ = new Bitmap(this._goodImg.bitmapData);
                                    if(_loc11_ || Boolean(_loc1_))
                                    {
                                       _loc3_.addChild(_loc6_);
                                       if(_loc10_)
                                       {
                                          continue;
                                       }
                                       _loc6_.x = 0.5 * (_loc5_.width - _loc6_.width);
                                       if(!_loc11_)
                                       {
                                          continue;
                                       }
                                       _loc6_.y = _loc5_.height - _loc6_.height;
                                       if(_loc10_)
                                       {
                                          continue;
                                       }
                                       _loc5_.visible = false;
                                       if(!(_loc11_ || Boolean(_loc2_)))
                                       {
                                          continue;
                                       }
                                    }
                                    _loc3_.visible = true;
                                    continue;
                                 }
                              }
                              else if(this._goodClip == null)
                              {
                                 continue;
                              }
                              _loc7_ = BitmapClip(this._goodClip.clone());
                              _loc7_.x = _loc5_.parent.x + _loc5_.width / 2 - this._goodClip.width / 2;
                              if(!(_loc10_ && Boolean(_loc2_)))
                              {
                                 _loc7_.y = _loc5_.parent.y + _loc5_.height - this._goodClip.height;
                                 if(_loc11_)
                                 {
                                    _loc5_.visible = false;
                                    if(!(_loc10_ && Boolean(_loc2_)))
                                    {
                                       addr031e:
                                       _loc7_.playbackMode = BitmapClip.PLAYBACK_FORWARD;
                                       if(_loc11_ || Boolean(_loc1_))
                                       {
                                          addr0337:
                                          TweenMax.delayedCall(MathUtils.randomInt(1,2),this.playDelayed,[_loc7_]);
                                          if(_loc10_ && Boolean(_loc1_))
                                          {
                                             continue;
                                          }
                                          _loc4_.addChild(_loc7_);
                                          if(_loc10_)
                                          {
                                             continue;
                                          }
                                       }
                                       addr036c:
                                       _loc3_.visible = false;
                                       continue;
                                    }
                                    §§goto(addr0337);
                                 }
                                 §§goto(addr036c);
                              }
                              §§goto(addr031e);
                           }
                           §§goto(addr0235);
                        }
                        §§goto(addr037f);
                     }
                     addr0381:
                     if(!_loc10_)
                     {
                        addr0389:
                        addr038e:
                        addr038d:
                        if(this._goodClip == null)
                        {
                           if(!(_loc10_ && Boolean(_loc2_)))
                           {
                              addr03ad:
                              this._billboardContainer.addChild(RenderHelper.getRendered(this._currentPresentation,this._dimensionRect));
                              if(_loc11_ || Boolean(_loc1_))
                              {
                                 addr03d2:
                                 this._isDirty = false;
                              }
                              §§goto(addr03d7);
                           }
                        }
                        §§goto(addr03d2);
                     }
                     §§goto(addr03d7);
                  }
                  §§goto(addr01b5);
               }
               addr007c:
            }
            addr03d7:
            return;
         }
         §§goto(addr007c);
      }
      
      private function stopDelayed(param1:BitmapClip) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            param1.stop();
            if(!(_loc3_ && Boolean(param1)))
            {
               addr0036:
               TweenMax.delayedCall(MathUtils.randomInt(5,10),this.playDelayed,[param1]);
            }
            return;
         }
         §§goto(addr0036);
      }
      
      private function playDelayed(param1:BitmapClip) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            param1.play();
            if(!(_loc2_ && Boolean(this)))
            {
               TweenMax.delayedCall(MathUtils.randomInt(5,10),this.stopDelayed,[param1]);
            }
         }
      }
      
      private function nullcheck(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            §§push(this._billboardContainer == null);
            if(!_loc2_)
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               if(!_temp_2)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     §§goto(addr004f);
                  }
               }
               §§goto(addr0063);
            }
            addr004f:
            §§pop();
            if(_loc3_ || _loc2_)
            {
               addr0063:
               if(this._productionObjectVo == null)
               {
                  if(!_loc2_)
                  {
                     throw new RamaCityError(param1);
                  }
               }
            }
            §§goto(addr0075);
         }
         addr0075:
      }
   }
}

