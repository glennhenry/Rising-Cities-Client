package net.bigpoint.cityrama.view.field.ui.components.fieldObjects
{
   import flash.display.DisplayObject;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.field.PlayfieldExpansionsProxy;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.InteractiveObjectEvent;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ExpansionFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.AnimationSlotManager;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.BasementViewManager;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.EstablishedManagerDefault;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.HighlightManager;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.HighlightManagerExtended;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.HitZoneAssistant;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.IconStateManager;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.InformationFloaterManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IAnimationSlot;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IAnimationSlotManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IBasement;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IBasementViewManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IBuildUpManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IDemolishManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IEstablishedManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IEstablishedManagerImplementation;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IHighlightManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IIconState;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IIconStateManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IInformationFloat;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IInformationFloaterManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IInteraction;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.ILayoutViewManager;
   import net.bigpoint.field3d.objects.SpriteMatrixObject3d;
   import org.puremvc.as3.patterns.facade.Facade;
   
   public class BillboardObject extends SpriteMatrixObject3d implements IAnimationSlot, IInteraction, IIconState, IDemolishManager, IInformationFloat, IBasement, IEstablishedManagerImplementation, ILayoutViewManager
   {
      
      protected var _animationSlotManager:IAnimationSlotManager;
      
      protected var _assetCollection:BillboardAssetsReferenceHolder;
      
      protected var _establishedManager:IEstablishedManager;
      
      protected var _buildUpManager:IBuildUpManager;
      
      protected var _highlightManager:IHighlightManager;
      
      protected var _iconStateManager:IIconStateManager;
      
      protected var _informationFloaterManager:IInformationFloaterManager;
      
      protected var _basementViewManager:IBasementViewManager;
      
      protected var _timerTicked:int;
      
      protected var _concreteComposition:Sprite;
      
      protected var _billbordObjectContainer:SmartObjectContainer;
      
      protected var _hitzoneContainer:Sprite;
      
      protected var _iconContainer:Sprite;
      
      protected var _hitzoneAssistant:HitZoneAssistant;
      
      private var _tolerancePoint:Point;
      
      private var _clickLock:Boolean;
      
      protected var _productionAnimationContainer:Sprite;
      
      private var _hitzoneOldPos:Point;
      
      private var _hitzoneOld:DisplayObject;
      
      public function BillboardObject(param1:BillboardAssetsReferenceHolder, param2:BillboardObjectVo)
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:DisplayObject = null;
         if(!_loc7_)
         {
            this._concreteComposition = new Sprite();
            if(_loc6_ || Boolean(this))
            {
               this._billbordObjectContainer = new SmartObjectContainer();
               if(_loc6_ || Boolean(param1))
               {
                  this._hitzoneContainer = new Sprite();
                  if(!(_loc7_ && Boolean(_loc3_)))
                  {
                     this._iconContainer = new Sprite();
                     if(!(_loc7_ && Boolean(_loc3_)))
                     {
                        this._productionAnimationContainer = new Sprite();
                        if(_loc6_ || Boolean(param2))
                        {
                           addr0092:
                           super(this._concreteComposition,param2);
                           if(_loc6_)
                           {
                              this._hitzoneAssistant = new HitZoneAssistant(this._hitzoneContainer,this._billbordObjectContainer);
                              if(_loc6_)
                              {
                                 this._assetCollection = param1;
                                 if(_loc6_)
                                 {
                                    this.prepareEstablishedManager();
                                    if(!_loc7_)
                                    {
                                       addr00cf:
                                       this.invalidateEstablishedManager();
                                       if(!(_loc7_ && Boolean(param2)))
                                       {
                                          addr00e2:
                                          this.addContainer(this._hitzoneContainer,true);
                                          if(!(_loc7_ && Boolean(param1)))
                                          {
                                             this.addContainer(this._iconContainer,true);
                                             if(!(_loc7_ && Boolean(param1)))
                                             {
                                                this.addContainer(this._productionAnimationContainer,true);
                                                if(_loc6_)
                                                {
                                                   addr012c:
                                                   this._hitzoneContainer.addEventListener(MouseEvent.MOUSE_OVER,this.onMouseRollOver);
                                                   if(!_loc7_)
                                                   {
                                                      addr0142:
                                                      this._iconContainer.addEventListener(MouseEvent.CLICK,this.onMouseClick);
                                                      if(!_loc7_)
                                                      {
                                                         addr0158:
                                                         this._iconContainer.addEventListener(MouseEvent.MOUSE_OVER,this.onIconMouseOver);
                                                         if(!(_loc7_ && Boolean(_loc3_)))
                                                         {
                                                            addr0176:
                                                            this._productionAnimationContainer.addEventListener(MouseEvent.CLICK,this.onMouseClick);
                                                            if(_loc6_)
                                                            {
                                                               addr018c:
                                                               this._productionAnimationContainer.addEventListener(MouseEvent.MOUSE_OVER,this.onIconMouseOver);
                                                               if(_loc6_)
                                                               {
                                                                  addr01a2:
                                                                  this.prepareHighlightManager();
                                                                  if(_loc6_ || Boolean(param1))
                                                                  {
                                                                     this.prepareIconStateManager();
                                                                     if(!_loc7_)
                                                                     {
                                                                        this.prepareInformationFloaterManager();
                                                                        if(!_loc7_)
                                                                        {
                                                                           addr01cb:
                                                                           this.prepareBasementViewManager();
                                                                           if(!(_loc7_ && Boolean(param1)))
                                                                           {
                                                                              addr01de:
                                                                              this.prepareAnimationSlotManager();
                                                                           }
                                                                           addr01e3:
                                                                           for each(_loc3_ in this.sprites)
                                                                           {
                                                                              if(!_loc7_)
                                                                              {
                                                                                 if(!(_loc3_ is Sprite))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(_loc7_ && Boolean(param2))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                              }
                                                                              (_loc3_ as Sprite).mouseEnabled = false;
                                                                           }
                                                                           if(_loc6_ || Boolean(param2))
                                                                           {
                                                                              this._hitzoneContainer.mouseEnabled = true;
                                                                              if(_loc6_)
                                                                              {
                                                                                 this._iconContainer.mouseEnabled = true;
                                                                                 if(_loc6_ || Boolean(_loc3_))
                                                                                 {
                                                                                    addr026b:
                                                                                    this.usePreciseValues = true;
                                                                                 }
                                                                              }
                                                                              return;
                                                                           }
                                                                           §§goto(addr026b);
                                                                        }
                                                                        §§goto(addr01de);
                                                                     }
                                                                     §§goto(addr01e3);
                                                                  }
                                                                  §§goto(addr01de);
                                                               }
                                                               §§goto(addr01cb);
                                                            }
                                                            §§goto(addr01e3);
                                                         }
                                                         §§goto(addr01cb);
                                                      }
                                                   }
                                                }
                                                §§goto(addr01a2);
                                             }
                                             §§goto(addr01e3);
                                          }
                                          §§goto(addr0158);
                                       }
                                       §§goto(addr0142);
                                    }
                                    §§goto(addr00e2);
                                 }
                                 §§goto(addr01e3);
                              }
                              §§goto(addr018c);
                           }
                           §§goto(addr01e3);
                        }
                        §§goto(addr012c);
                     }
                     §§goto(addr0142);
                  }
                  §§goto(addr00cf);
               }
               §§goto(addr0092);
            }
            §§goto(addr0158);
         }
         §§goto(addr0176);
      }
      
      public function changeInteractionstate(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._hitzoneContainer.mouseEnabled = param1;
            if(_loc3_ || _loc2_)
            {
               this._iconContainer.mouseEnabled = param1;
            }
         }
      }
      
      public function prepareEstablishedManager() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            §§push(this._establishedManager);
            if(_loc1_ || Boolean(this))
            {
               if(§§pop() == null)
               {
                  if(_loc1_ || _loc2_)
                  {
                     addr004a:
                     if(this._hitzoneAssistant == null)
                     {
                        if(!(_loc2_ && Boolean(this)))
                        {
                           throw new RamaCityError("Please instantiate _hitzoneAssistant first");
                        }
                     }
                     else
                     {
                        addr007a:
                        this.addContainer(this._billbordObjectContainer);
                        if(!_loc2_)
                        {
                           this._establishedManager = new EstablishedManagerDefault();
                           if(!_loc2_)
                           {
                              addr009c:
                              this._establishedManager.prepare(this.billboardObjectVo,this._billbordObjectContainer,this._assetCollection.mainAsset);
                           }
                        }
                     }
                     §§goto(addr00ae);
                  }
                  §§goto(addr007a);
               }
               addr00ae:
               return;
            }
            §§goto(addr009c);
         }
         §§goto(addr004a);
      }
      
      public function prepareHighlightManager() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this._highlightManager);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop() == null)
               {
                  if(_loc2_ || Boolean(this))
                  {
                     if(this is ExpansionFieldObject)
                     {
                        if(!(_loc1_ && _loc2_))
                        {
                           addr0061:
                           this._highlightManager = new HighlightManagerExtended();
                           if(_loc2_ || _loc2_)
                           {
                           }
                        }
                        addr00a3:
                        this._highlightManager.prepareHighlightManager(this.billboardObjectVo,this._billbordObjectContainer);
                        addr009f:
                     }
                     else
                     {
                        this._highlightManager = new HighlightManager();
                        if(!(_loc1_ && Boolean(this)))
                        {
                           §§goto(addr009f);
                        }
                     }
                     return;
                  }
               }
               §§goto(addr009f);
            }
            §§goto(addr00a3);
         }
         §§goto(addr0061);
      }
      
      public function set iconVisibility(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §§push(this.billboardObjectVo);
            §§push(param1);
            if(!_loc3_)
            {
               §§push(!§§pop());
            }
            §§pop().hideIconsForMoveMode = §§pop();
            if(!(_loc3_ && _loc3_))
            {
               this.invalidateIconStateManager();
            }
         }
      }
      
      public function prepareIconStateManager() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this._iconStateManager);
            if(_loc2_ || _loc2_)
            {
               if(§§pop() == null)
               {
                  if(_loc2_ || Boolean(this))
                  {
                     addr004d:
                     this._iconStateManager = new IconStateManager();
                     if(!_loc1_)
                     {
                        addr0061:
                        this._iconStateManager.prepareIconStateManager(this.billboardObjectVo,this._iconContainer,this._billbordObjectContainer);
                        addr005d:
                     }
                  }
                  return;
               }
               §§goto(addr005d);
            }
            §§goto(addr0061);
         }
         §§goto(addr004d);
      }
      
      public function prepareInformationFloaterManager() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this._informationFloaterManager);
            if(!_loc1_)
            {
               if(§§pop() == null)
               {
                  if(_loc2_)
                  {
                     this._informationFloaterManager = new InformationFloaterManager();
                     if(_loc2_)
                     {
                        addr0047:
                        this._informationFloaterManager.prepareInformationFloaterManager(this.billboardObjectVo,this._billbordObjectContainer);
                        addr0043:
                     }
                  }
                  return;
               }
               §§goto(addr0043);
            }
            §§goto(addr0047);
         }
         §§goto(addr0043);
      }
      
      public function prepareBasementViewManager() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this._basementViewManager);
            if(_loc2_)
            {
               if(§§pop() == null)
               {
                  if(!_loc1_)
                  {
                     this._basementViewManager = new BasementViewManager();
                     if(_loc2_)
                     {
                        addr0047:
                        this._basementViewManager.prepareBasementViewManager(this.billboardObjectVo,this._billbordObjectContainer,this._assetCollection);
                        addr0043:
                     }
                  }
                  §§goto(addr0056);
               }
               §§goto(addr0043);
            }
            §§goto(addr0047);
         }
         addr0056:
      }
      
      public function invalidateEstablishedManager() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this._establishedManager.invalidate();
            if(!_loc1_)
            {
               addr0023:
               if(this._basementViewManager != null)
               {
                  if(!_loc1_)
                  {
                     this.invalidateBasementViewManager(true);
                  }
               }
            }
            return;
         }
         §§goto(addr0023);
      }
      
      public function invalidateHighlightManager(param1:String, param2:Boolean = true) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:PlayfieldExpansionsProxy = null;
         if(_loc4_)
         {
            §§push(this.billboardObjectVo);
            if(!_loc5_)
            {
               if(!§§pop().isExpansionObject)
               {
                  if(_loc4_ || Boolean(param1))
                  {
                     addr003c:
                     this._highlightManager.invalidateHighlightManager(param1,param2);
                     if(!(_loc5_ && Boolean(_loc3_)))
                     {
                        this.x = Math.abs(x);
                        if(_loc4_ || Boolean(_loc3_))
                        {
                           this.y = Math.abs(y);
                           if(_loc5_ && Boolean(_loc3_))
                           {
                              addr00a1:
                              _loc3_ = Facade.getInstance().retrieveProxy(PlayfieldExpansionsProxy.NAME) as PlayfieldExpansionsProxy;
                              if(!(_loc5_ && Boolean(this)))
                              {
                                 §§push(Boolean(_loc3_));
                                 if(_loc4_ || Boolean(param1))
                                 {
                                    var _temp_7:* = §§pop();
                                    §§push(_temp_7);
                                    if(_temp_7)
                                    {
                                       if(!_loc5_)
                                       {
                                          §§pop();
                                          if(!(_loc5_ && Boolean(this)))
                                          {
                                             §§goto(addr0117);
                                          }
                                          §§goto(addr0129);
                                       }
                                       §§goto(addr0116);
                                    }
                                    addr0117:
                                    §§goto(addr00ef);
                                 }
                                 §§goto(addr0116);
                              }
                              addr00ef:
                              §§push(_loc3_.isBuyableExpansions(this.billboardObjectVo.expansionObject.expansionFieldObjectVo.configOrigin.id));
                              if(!_loc5_)
                              {
                                 addr0116:
                                 §§push(§§pop());
                              }
                              if(§§pop())
                              {
                                 if(!(_loc5_ && param2))
                                 {
                                    addr0129:
                                    this.billboardObjectVo.expansionObject.invalidateHighlightManager(param1,param2);
                                 }
                              }
                           }
                           §§goto(addr0135);
                        }
                        §§goto(addr00a1);
                     }
                  }
               }
               else
               {
                  addr009a:
                  if(this.billboardObjectVo.expansionObject)
                  {
                     §§goto(addr00a1);
                  }
               }
               addr0135:
               return;
            }
            §§goto(addr009a);
         }
         §§goto(addr003c);
      }
      
      public function invalidateIconStateManager(param1:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._iconStateManager.invalidateIconStateManager(param1);
         }
      }
      
      public function invalidateInformationFloaterManager(param1:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._informationFloaterManager.invalidateInformationFloaterManager(param1);
         }
      }
      
      public function invalidateBasementViewManager(param1:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._basementViewManager.invalidateBasementViewManager(param1);
         }
      }
      
      public function get billboardObjectVo() : BillboardObjectVo
      {
         return _data as BillboardObjectVo;
      }
      
      protected function addContainer(param1:Sprite, param2:Boolean = false, param3:Boolean = false) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!_loc5_)
         {
            param1.mouseChildren = param3;
            if(_loc4_ || param3)
            {
               §§goto(addr0039);
            }
            §§goto(addr004c);
         }
         addr0039:
         param1.mouseEnabled = param2;
         if(!(_loc5_ && param2))
         {
            addr004c:
            this._concreteComposition.addChild(param1);
         }
      }
      
      public function expandHitzone() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Shape = null;
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            if(this._hitzoneContainer.numChildren > 0)
            {
               if(!_loc3_)
               {
                  this._hitzoneOld = this._hitzoneContainer.getChildAt(0);
                  if(!_loc3_)
                  {
                     this._hitzoneContainer.removeChildAt(0);
                     addr004a:
                  }
                  _loc1_ = new Shape();
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.graphics.beginFill(16711680,0);
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        _loc1_.graphics.drawRect(-250,-250,500,500);
                        if(_loc2_)
                        {
                           addr00bb:
                           _loc1_.graphics.endFill();
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              addr00d0:
                              this._hitzoneContainer.addChild(_loc1_);
                           }
                        }
                        §§goto(addr00d9);
                     }
                     §§goto(addr00d0);
                  }
                  §§goto(addr00bb);
               }
               §§goto(addr004a);
            }
            addr00d9:
            return;
         }
         §§goto(addr004a);
      }
      
      public function shrinkHitzone() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            if(this._hitzoneOld)
            {
               if(!_loc2_)
               {
                  §§push(this._hitzoneContainer.numChildren > 0);
                  if(!_loc2_)
                  {
                     var _temp_2:* = §§pop();
                     §§push(_temp_2);
                     if(_temp_2)
                     {
                        if(_loc1_ || _loc2_)
                        {
                           addr0055:
                           §§pop();
                           if(_loc1_)
                           {
                              addr0069:
                              if(this._hitzoneContainer.getChildAt(0) is Shape)
                              {
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    addr0084:
                                    this._hitzoneContainer.removeChildAt(0);
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       addr009b:
                                       this._hitzoneContainer.addChild(this._hitzoneOld);
                                    }
                                 }
                                 §§goto(addr00a7);
                              }
                           }
                           §§goto(addr009b);
                        }
                     }
                     §§goto(addr0069);
                  }
                  §§goto(addr0055);
               }
               §§goto(addr009b);
            }
            addr00a7:
            return;
         }
         §§goto(addr0084);
      }
      
      private function onMouseMove(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Point = new Point(param1.stageX,param1.stageY);
         if(!_loc4_)
         {
            if(Point.distance(this._tolerancePoint,_loc2_) > 30)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  addr0050:
                  this._clickLock = true;
               }
            }
            return;
         }
         §§goto(addr0050);
      }
      
      private function onMouseRollOver(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this._hitzoneContainer.removeEventListener(MouseEvent.MOUSE_OVER,this.onMouseRollOver);
            if(_loc3_ || _loc3_)
            {
               this._hitzoneContainer.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
               if(!(_loc2_ && _loc2_))
               {
                  this._hitzoneContainer.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
                  if(!(_loc2_ && Boolean(param1)))
                  {
                     this._hitzoneContainer.addEventListener(MouseEvent.MOUSE_OUT,this.onMouseRollOut);
                     if(_loc3_ || Boolean(param1))
                     {
                        this._hitzoneContainer.removeEventListener(MouseEvent.CLICK,this.onMouseClick);
                        if(_loc3_ || Boolean(param1))
                        {
                           addr00cd:
                           this._hitzoneContainer.addEventListener(MouseEvent.CLICK,this.onMouseClick);
                           if(!(_loc2_ && _loc3_))
                           {
                              addr00ea:
                              this.dispatchRollOver();
                           }
                           §§goto(addr00ef);
                        }
                     }
                     §§goto(addr00ea);
                  }
                  §§goto(addr00ef);
               }
               §§goto(addr00ea);
            }
            addr00ef:
            return;
         }
         §§goto(addr00cd);
      }
      
      private function onIconMouseOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._iconContainer.removeEventListener(MouseEvent.MOUSE_OVER,this.onIconMouseOver);
            if(_loc2_)
            {
               this._iconContainer.addEventListener(MouseEvent.MOUSE_OUT,this.onIconMouseOut);
               if(!(_loc3_ && Boolean(this)))
               {
                  this._productionAnimationContainer.removeEventListener(MouseEvent.MOUSE_OVER,this.onIconMouseOver);
                  if(_loc2_)
                  {
                     addr0074:
                     this._productionAnimationContainer.addEventListener(MouseEvent.MOUSE_OUT,this.onIconMouseOut);
                     if(_loc2_ || Boolean(this))
                     {
                        addr0091:
                        this.dispatchRollOver(true);
                     }
                  }
                  return;
               }
               §§goto(addr0074);
            }
            §§goto(addr0091);
         }
         §§goto(addr0074);
      }
      
      private function onIconMouseOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this._iconContainer.removeEventListener(MouseEvent.MOUSE_OUT,this.onIconMouseOut);
            if(_loc3_)
            {
               this._iconContainer.addEventListener(MouseEvent.MOUSE_OVER,this.onIconMouseOver);
               if(_loc3_ || _loc3_)
               {
                  this._productionAnimationContainer.addEventListener(MouseEvent.MOUSE_OVER,this.onIconMouseOver);
                  addr005e:
                  if(_loc3_ || Boolean(param1))
                  {
                     this._productionAnimationContainer.removeEventListener(MouseEvent.MOUSE_OUT,this.onIconMouseOut);
                     if(!_loc2_)
                     {
                        this.dispatchRollOut(true);
                     }
                  }
               }
               §§goto(addr00a3);
            }
            §§goto(addr005e);
         }
         addr00a3:
      }
      
      public function dispatchRollOver(param1:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:InteractiveObjectEvent = new InteractiveObjectEvent(InteractiveObjectEvent.ON_INTERACTIVE_ROLLOVER,this);
         if(_loc4_ || _loc3_)
         {
            _loc2_.iconEvent = param1;
            if(!_loc3_)
            {
               dispatchEvent(_loc2_);
            }
         }
      }
      
      public function dispatchMouseClick() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            if(!this.billboardObjectVo.userInteractionLocked)
            {
               if(_loc1_ || _loc1_)
               {
                  addr003e:
                  dispatchEvent(new InteractiveObjectEvent(InteractiveObjectEvent.ON_INTERACTIVE_CLICK,this));
               }
            }
            return;
         }
         §§goto(addr003e);
      }
      
      private function onMouseRollOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._hitzoneContainer.addEventListener(MouseEvent.MOUSE_OVER,this.onMouseRollOver);
            if(_loc3_)
            {
               this._hitzoneContainer.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
               if(!_loc2_)
               {
                  addr0056:
                  this._hitzoneContainer.removeEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     this._hitzoneContainer.removeEventListener(MouseEvent.MOUSE_OUT,this.onMouseRollOut);
                     if(_loc3_ || Boolean(this))
                     {
                        addr009e:
                        this.dispatchRollOut();
                     }
                     §§goto(addr00a3);
                  }
               }
               §§goto(addr009e);
            }
            §§goto(addr0056);
         }
         addr00a3:
      }
      
      public function dispatchRollOut(param1:Boolean = false) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:InteractiveObjectEvent = new InteractiveObjectEvent(InteractiveObjectEvent.ON_INTERACTIVE_ROLLOUT,this);
         if(_loc3_ || param1)
         {
            _loc2_.iconEvent = param1;
            if(_loc3_)
            {
               dispatchEvent(_loc2_);
            }
         }
      }
      
      private function onMouseUp(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._hitzoneContainer.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         }
      }
      
      private function onMouseDown(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            this._tolerancePoint = new Point(param1.stageX,param1.stageY);
            if(_loc2_ || Boolean(param1))
            {
               this._hitzoneContainer.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
            }
         }
      }
      
      private function onMouseClick(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            if(!this._clickLock)
            {
               if(_loc2_ || Boolean(param1))
               {
                  this.dispatchMouseClick();
                  if(_loc2_)
                  {
                     addr0048:
                     this.dispatchRollOut();
                     if(_loc2_)
                     {
                        addr0052:
                        this._clickLock = false;
                     }
                     §§goto(addr0057);
                  }
                  §§goto(addr0052);
               }
               addr0057:
               return;
            }
            §§goto(addr0052);
         }
         §§goto(addr0048);
      }
      
      public function prepareAnimationSlotManager() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this._animationSlotManager);
            if(_loc2_)
            {
               if(§§pop() == null)
               {
                  if(!_loc1_)
                  {
                     §§goto(addr0033);
                  }
               }
               §§goto(addr004b);
            }
            §§goto(addr004f);
         }
         addr0033:
         this._animationSlotManager = new AnimationSlotManager();
         if(!(_loc1_ && Boolean(this)))
         {
            addr004f:
            this._animationSlotManager.prepareAnimationSlotManager(this.billboardObjectVo,this._billbordObjectContainer,this._productionAnimationContainer);
            addr004b:
         }
      }
      
      public function invalidateAnimationSlotManager() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            this._animationSlotManager.invalidateAnimationSlotManager();
         }
      }
   }
}

