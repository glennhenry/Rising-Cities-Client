package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import flash.display.DisplayObject;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import net.bigpoint.cityrama.constants.ServerRestrictionConstants;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardAssetsReferenceHolder;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PreloadableDisplayObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.SmartObjectContainer;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IBasementViewManager;
   import net.bigpoint.util.RandomUtilities;
   import net.bigpoint.util.RenderHelper;
   
   public class BasementViewManager implements IBasementViewManager
   {
      
      protected var _billboardObjVo:BillboardObjectVo;
      
      private var _billboardContainer:SmartObjectContainer;
      
      protected var _basementAsset:*;
      
      private var _currentNormalAsset:DisplayObject;
      
      private var _currentBasememtAsset:DisplayObject;
      
      private var _assetReferences:BillboardAssetsReferenceHolder;
      
      private var _mainAssetSource:*;
      
      private var _isDirty:Boolean;
      
      private var _inBasementView:Boolean;
      
      protected var _basementAssetAvailable:Boolean;
      
      protected var _dimensionRect:Rectangle;
      
      private var _mainAssetChanged:Boolean;
      
      public function BasementViewManager()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      private static function checkLabel(param1:MovieClip, param2:String) : Boolean
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc3_:FrameLabel = null;
         var _loc4_:int = 0;
         while(_loc4_ < param1.currentLabels.length)
         {
            _loc3_ = param1.currentLabels[_loc4_];
            if(_loc5_ || Boolean(param1))
            {
               if(_loc3_.name == param2)
               {
                  if(!_loc6_)
                  {
                     return true;
                  }
                  continue;
               }
            }
            _loc4_++;
         }
         return false;
      }
      
      public function prepareBasementViewManager(param1:BillboardObjectVo, param2:SmartObjectContainer, param3:BillboardAssetsReferenceHolder) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!_loc4_)
         {
            this._billboardObjVo = param1;
            if(!_loc4_)
            {
               this._billboardContainer = param2;
               if(_loc5_ || Boolean(param2))
               {
                  this._assetReferences = param3;
                  if(_loc5_ || Boolean(param2))
                  {
                     addr0064:
                     this._mainAssetSource = this._assetReferences.mainAsset;
                     if(!(_loc4_ && Boolean(this)))
                     {
                        this.determineBasementAsset();
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr0064);
      }
      
      public function invalidateBasementViewManager(param1:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.nullCheck("BasementViewManager, prepare before invalidate!");
            if(!_loc2_)
            {
               §§push(this._basementAssetAvailable);
               if(_loc3_ || _loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc3_ || _loc3_)
                     {
                        this._isDirty = true;
                        if(_loc3_ || _loc3_)
                        {
                           §§push(param1);
                           if(_loc3_ || param1)
                           {
                              if(§§pop())
                              {
                                 if(!_loc2_)
                                 {
                                    §§push(this.mainAssetChanged);
                                    if(!_loc2_)
                                    {
                                       addr0089:
                                       if(§§pop())
                                       {
                                          if(!(_loc2_ && Boolean(this)))
                                          {
                                             addr009a:
                                             this._mainAssetChanged = true;
                                             if(_loc3_)
                                             {
                                                this.determineBasementAsset();
                                                if(!(_loc3_ || Boolean(this)))
                                                {
                                                   addr00e2:
                                                   this.changeBackToNormalView();
                                                   if(_loc2_ && Boolean(this))
                                                   {
                                                   }
                                                }
                                             }
                                             §§goto(addr00ff);
                                          }
                                          §§goto(addr00e2);
                                       }
                                    }
                                    else
                                    {
                                       addr00d1:
                                       if(§§pop())
                                       {
                                          if(_loc3_ || Boolean(this))
                                          {
                                             §§goto(addr00e2);
                                          }
                                       }
                                       else
                                       {
                                          this.changeToBasementView();
                                       }
                                    }
                                 }
                                 §§goto(addr00ff);
                              }
                              else
                              {
                                 §§push(this._billboardObjVo.isInBaseMode);
                              }
                           }
                           §§goto(addr00d1);
                        }
                        §§goto(addr00ff);
                     }
                     §§goto(addr00e2);
                  }
                  §§goto(addr00ff);
               }
               §§goto(addr0089);
            }
            §§goto(addr009a);
         }
         addr00ff:
      }
      
      private function determineBasementAsset() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this._mainAssetSource is PreloadableDisplayObject);
            if(_loc1_ || _loc1_)
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               if(_temp_2)
               {
                  if(_loc1_)
                  {
                     §§pop();
                     if(!_loc2_)
                     {
                        §§push((this._mainAssetSource as PreloadableDisplayObject).loadComplete);
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr0052:
                           §§push(!§§pop());
                           if(_loc1_)
                           {
                              §§goto(addr0058);
                           }
                        }
                        §§goto(addr00b1);
                     }
                     §§goto(addr0092);
                  }
                  §§goto(addr0052);
               }
               addr0058:
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     (this._mainAssetSource as PreloadableDisplayObject).addEventListener(PreloadableDisplayObject.PRELOADING_COMPLETE,this.handleSourcePreloadComplete);
                     if(!(_loc2_ && Boolean(this)))
                     {
                        return;
                     }
                  }
                  else
                  {
                     addr016b:
                     this.checkCurrentModeAfterChange();
                     if(_loc2_ && Boolean(this))
                     {
                        addr019b:
                        this.checkStandardBasementAsset();
                        if(_loc2_)
                        {
                           addr01b9:
                           this.checkStandardBasementAsset();
                        }
                     }
                  }
               }
               else
               {
                  addr00b1:
                  addr0092:
                  if(checkLabel(this._mainAssetSource.presentation as MovieClip,"base_" + this._billboardObjVo.currentLevel))
                  {
                     if(_loc1_ || _loc2_)
                     {
                        (this._mainAssetSource.presentation as MovieClip).gotoAndStop("base_" + this._billboardObjVo.currentLevel);
                        if(_loc1_ || _loc1_)
                        {
                           addr00f3:
                           if(this._mainAssetSource.presentation.numChildren > 0)
                           {
                              if(_loc1_ || Boolean(this))
                              {
                                 this._dimensionRect = this._mainAssetSource.presentation.getChildAt(1).getBounds(this._mainAssetSource.presentation);
                                 if(_loc1_ || _loc2_)
                                 {
                                    addr013b:
                                    this._basementAsset = this._mainAssetSource.presentation.getChildAt(1);
                                    if(_loc1_ || _loc1_)
                                    {
                                       this._basementAssetAvailable = true;
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          §§goto(addr016b);
                                       }
                                       §§goto(addr01b9);
                                    }
                                    §§goto(addr016b);
                                 }
                                 §§goto(addr01b9);
                              }
                              §§goto(addr013b);
                           }
                           else
                           {
                              this._basementAsset = this._assetReferences.basementAsset;
                              if(!_loc2_)
                              {
                                 §§goto(addr019b);
                              }
                           }
                           §§goto(addr01be);
                        }
                        §§goto(addr013b);
                     }
                  }
                  else
                  {
                     this._basementAsset = this._assetReferences.basementAsset;
                     if(!_loc2_)
                     {
                        §§goto(addr01b9);
                     }
                  }
               }
               addr01be:
               return;
            }
            §§goto(addr00b1);
         }
         §§goto(addr00f3);
      }
      
      private function checkCurrentModeAfterChange() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            §§push(this._mainAssetChanged);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr004c:
                     this._mainAssetChanged = false;
                     if(!(_loc1_ && _loc1_))
                     {
                        §§goto(addr005e);
                     }
                     §§goto(addr0076);
                  }
                  addr005e:
                  addr0065:
                  if(this._billboardObjVo.isInBaseMode)
                  {
                     if(!(_loc1_ && Boolean(this)))
                     {
                        addr0076:
                        this.changeToBasementView();
                     }
                  }
                  §§goto(addr007c);
               }
               addr007c:
               return;
            }
            §§goto(addr0065);
         }
         §§goto(addr004c);
      }
      
      private function get mainAssetChanged() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            if(this._currentNormalAsset != null)
            {
               if(_loc1_ || _loc1_)
               {
                  addr0033:
                  §§push(RandomUtilities.isEqual(this._billboardContainer.currentImage,this._currentNormalAsset));
                  if(_loc1_)
                  {
                     §§push(!§§pop());
                     if(_loc1_ || Boolean(this))
                     {
                        var _temp_4:* = §§pop();
                        §§push(_temp_4);
                        if(_temp_4)
                        {
                           if(_loc1_ || _loc2_)
                           {
                              addr006a:
                              §§pop();
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 §§push(RandomUtilities.isEqual(this._billboardContainer.currentImage,this._currentBasememtAsset));
                                 if(_loc1_ || _loc1_)
                                 {
                                    §§push(!§§pop());
                                    if(_loc1_ || _loc2_)
                                    {
                                       addr00af:
                                       if(§§pop())
                                       {
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             §§push(true);
                                             if(!_loc2_)
                                             {
                                                return §§pop();
                                             }
                                          }
                                          else
                                          {
                                             addr00fa:
                                             this._currentNormalAsset = this._billboardContainer.currentImage;
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                addr0112:
                                                §§push(true);
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   §§goto(addr0120);
                                                }
                                             }
                                             else
                                             {
                                                addr0121:
                                                §§push(false);
                                             }
                                             §§goto(addr0122);
                                          }
                                          §§goto(addr0120);
                                       }
                                       §§goto(addr0121);
                                    }
                                 }
                                 addr0120:
                                 return §§pop();
                              }
                              §§goto(addr0121);
                           }
                           addr0122:
                           return §§pop();
                        }
                     }
                     §§goto(addr00af);
                  }
                  §§goto(addr006a);
               }
               §§goto(addr0112);
            }
            else if(this._billboardContainer.currentImage)
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  §§goto(addr00fa);
               }
            }
            §§goto(addr0121);
         }
         §§goto(addr0033);
      }
      
      protected function checkStandardBasementAsset() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this._basementAsset is PreloadableDisplayObject);
            if(!(_loc2_ && _loc2_))
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               if(_temp_2)
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     §§pop();
                     if(_loc1_)
                     {
                        addr005b:
                        §§push((this._basementAsset as PreloadableDisplayObject).loadComplete);
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr005a:
                           §§push(!§§pop());
                        }
                        if(§§pop())
                        {
                           if(!_loc2_)
                           {
                              this._basementAsset.addEventListener(PreloadableDisplayObject.PRELOADING_COMPLETE,this.onLoadComplete);
                              if(_loc1_)
                              {
                                 addr0087:
                                 this._basementAssetAvailable = false;
                                 if(!(_loc1_ || _loc2_))
                                 {
                                    addr0105:
                                    this._basementAssetAvailable = true;
                                    if(_loc1_)
                                    {
                                       addr010f:
                                       this.checkCurrentModeAfterChange();
                                    }
                                 }
                                 §§goto(addr0114);
                              }
                              else
                              {
                                 addr00b3:
                                 this._dimensionRect = this._basementAsset.presentation.getChildAt(1).getBounds(this._basementAsset.presentation);
                                 if(_loc1_ || _loc2_)
                                 {
                                    this._basementAsset = this._basementAsset.presentation.getChildAt(1);
                                    if(_loc1_ || Boolean(this))
                                    {
                                       §§goto(addr0105);
                                    }
                                 }
                              }
                              §§goto(addr010f);
                           }
                           addr0114:
                           return;
                        }
                        this._basementAsset.presentation.gotoAndStop(this.targetFrame);
                        if(!_loc2_)
                        {
                           §§goto(addr00b3);
                        }
                        §§goto(addr0105);
                     }
                     §§goto(addr0087);
                  }
                  §§goto(addr005a);
               }
            }
            §§goto(addr005b);
         }
         §§goto(addr010f);
      }
      
      protected function get targetFrame() : String
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = this._billboardObjVo.configPlayfieldItemVo.tags;
         while(true)
         {
            if(!(§§hasnext(_loc3_,_loc2_)))
            {
               §§push("base_");
               if(_loc5_ || Boolean(_loc1_))
               {
                  §§push(this._billboardObjVo);
                  if(_loc5_)
                  {
                     §§push(§§pop() + §§pop().configPlayfieldItemVo.sizeX);
                     if(!(_loc4_ && Boolean(_loc1_)))
                     {
                        addr01f3:
                        §§push(§§pop() + "_");
                        if(_loc5_)
                        {
                           addr0201:
                           return §§pop() + this._billboardObjVo.configPlayfieldItemVo.sizeY;
                        }
                     }
                  }
                  §§goto(addr0201);
               }
               §§goto(addr01f3);
            }
            else
            {
               §§push(§§nextvalue(_loc2_,_loc3_));
               if(!(_loc4_ && _loc3_))
               {
                  _loc1_ = §§pop();
                  if(_loc5_ || Boolean(_loc2_))
                  {
                     §§push(_loc1_);
                     if(!_loc4_)
                     {
                        addr0054:
                        §§push(ServerRestrictionConstants.SEA_WHITELIST);
                        if(_loc5_)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(_loc4_ && _loc3_)
                              {
                                 continue;
                              }
                              §§push("SEA_base_");
                              if(!(_loc4_ && Boolean(_loc2_)))
                              {
                                 §§push(this._billboardObjVo);
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§push(§§pop() + §§pop().configPlayfieldItemVo.sizeX);
                                    if(!(_loc5_ || Boolean(this)))
                                    {
                                       break;
                                    }
                                    §§push("_");
                                    if(!_loc4_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc5_ || Boolean(this))
                                       {
                                          addr00c3:
                                          §§push(this._billboardObjVo);
                                          if(!(_loc4_ && Boolean(this)))
                                          {
                                             §§push(§§pop() + §§pop().configPlayfieldItemVo.sizeY);
                                             if(!_loc4_)
                                             {
                                                return §§pop();
                                             }
                                          }
                                          else
                                          {
                                             addr0180:
                                             §§push(§§pop() + §§pop().configPlayfieldItemVo.sizeX);
                                             if(_loc4_)
                                             {
                                                break;
                                             }
                                          }
                                          addr0190:
                                          §§push(§§pop() + "_");
                                          if(!(_loc5_ || _loc3_))
                                          {
                                             break;
                                          }
                                       }
                                       addr01a3:
                                       §§push(§§pop() + this._billboardObjVo.configPlayfieldItemVo.sizeY);
                                       break;
                                    }
                                    §§goto(addr0190);
                                 }
                                 §§goto(addr01a3);
                              }
                              §§goto(addr00c3);
                           }
                           else
                           {
                              addr00fe:
                              §§push(_loc1_);
                              if(_loc5_ || Boolean(this))
                              {
                                 §§push(ServerRestrictionConstants.COAST_WHITELIST);
                                 if(!(_loc4_ && Boolean(this)))
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(!_loc4_)
                                    {
                                       var _temp_15:* = §§pop();
                                       §§push(_temp_15);
                                       if(!_temp_15)
                                       {
                                          if(!_loc4_)
                                          {
                                             addr0133:
                                             §§pop();
                                             if(_loc4_ && _loc3_)
                                             {
                                                continue;
                                             }
                                             addr0149:
                                             addr0143:
                                             §§push(_loc1_ == ServerRestrictionConstants.FISHINGGROUND_WHITELIST);
                                          }
                                       }
                                       if(!§§pop())
                                       {
                                          continue;
                                       }
                                       if(!(_loc5_ || Boolean(this)))
                                       {
                                          continue;
                                       }
                                       §§push("COAST_base_");
                                       if(!(_loc5_ || _loc3_))
                                       {
                                          break;
                                       }
                                       §§push(this._billboardObjVo);
                                       if(_loc5_ || Boolean(this))
                                       {
                                          §§goto(addr0180);
                                       }
                                       §§goto(addr01a3);
                                    }
                                    §§goto(addr0133);
                                 }
                                 §§goto(addr0149);
                              }
                              §§goto(addr0143);
                           }
                        }
                        §§goto(addr0149);
                     }
                     §§goto(addr0143);
                  }
                  §§goto(addr00fe);
               }
               §§goto(addr0054);
            }
         }
         return §§pop();
      }
      
      protected function onLoadComplete(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this._basementAsset.removeEventListener(PreloadableDisplayObject.PRELOADING_COMPLETE,this.onLoadComplete);
            if(!_loc3_)
            {
               this.checkStandardBasementAsset();
            }
         }
      }
      
      private function handleSourcePreloadComplete(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            (this._assetReferences.mainAsset as PreloadableDisplayObject).removeEventListener(PreloadableDisplayObject.PRELOADING_COMPLETE,this.handleSourcePreloadComplete);
            if(_loc3_)
            {
               addr0034:
               this.determineBasementAsset();
            }
            return;
         }
         §§goto(addr0034);
      }
      
      private function changeToBasementView() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this._currentNormalAsset = this._billboardContainer.currentImage;
         }
         loop0:
         while(true)
         {
            §§push(this._billboardContainer);
            if(_loc1_ && _loc1_)
            {
               break;
            }
            while(true)
            {
               if(§§pop().numChildren <= 0)
               {
                  if(_loc2_ || Boolean(this))
                  {
                     break;
                  }
                  §§goto(addr00d8);
               }
               §§push(this._billboardContainer);
               if(_loc2_)
               {
                  §§pop().removeChildAt(0);
                  if(_loc1_ && _loc1_)
                  {
                     break;
                  }
                  continue loop0;
               }
            }
            this._currentBasememtAsset = RenderHelper.getRendered(this._basementAsset,this._dimensionRect);
            if(!_loc1_)
            {
               §§push(this._billboardContainer);
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr00cf);
            }
            this._inBasementView = true;
            if(_loc2_)
            {
               addr00cf:
               §§pop().invalidate();
               if(_loc2_)
               {
                  addr00d8:
                  this._isDirty = false;
                  §§goto(addr00dd);
               }
               addr00dd:
               return;
               §§push(this._billboardContainer);
            }
            §§goto(addr00d8);
         }
         §§pop().addChild(this._currentBasememtAsset);
         if(_loc2_ || _loc1_)
         {
            this._billboardObjVo.isInBaseMode = true;
            if(_loc2_)
            {
               §§goto(addr00c0);
            }
            §§goto(addr00d8);
         }
         §§goto(addr00dd);
      }
      
      private function changeBackToNormalView() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            §§push(this._billboardContainer);
            if(_loc1_ && Boolean(this))
            {
               break;
            }
            if(§§pop().numChildren <= 0)
            {
               if(!(_loc1_ && _loc2_))
               {
                  §§push(this._billboardContainer);
                  if(!(_loc2_ || _loc1_))
                  {
                     break;
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0081);
            }
            else
            {
               §§push(this._billboardContainer);
               if(!(_loc1_ && _loc1_))
               {
                  §§pop().removeChildAt(0);
                  if(_loc2_)
                  {
                     continue;
                  }
                  §§goto(addr00a0);
               }
               else
               {
                  addr0074:
                  §§pop().addChild(this._currentNormalAsset);
                  if(_loc2_)
                  {
                     addr0081:
                     this._billboardObjVo.isInBaseMode = false;
                     if(!(_loc1_ && Boolean(this)))
                     {
                        addr00a0:
                        this._inBasementView = false;
                        §§goto(addr00c5);
                     }
                     §§goto(addr00b3);
                  }
                  this._isDirty = false;
                  §§goto(addr00c5);
               }
            }
            §§goto(addr0074);
         }
         §§pop().invalidate();
         if(_loc2_)
         {
            §§goto(addr00c0);
         }
         addr00c5:
         if(!(_loc1_ && Boolean(this)))
         {
            addr00b3:
            §§push(this._billboardContainer);
            break loop0;
         }
      }
      
      private function nullCheck(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            §§push(this._billboardObjVo == null);
            if(_loc2_ || _loc2_)
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               if(!_temp_3)
               {
                  if(_loc2_ || _loc3_)
                  {
                     §§pop();
                     if(_loc2_)
                     {
                        §§goto(addr0067);
                     }
                     §§goto(addr0078);
                  }
               }
            }
            addr0067:
            §§goto(addr0061);
         }
         addr0061:
         if(this._billboardContainer == null)
         {
            if(_loc2_ || _loc3_)
            {
               addr0078:
               throw new RamaCityError(param1);
            }
         }
      }
   }
}

