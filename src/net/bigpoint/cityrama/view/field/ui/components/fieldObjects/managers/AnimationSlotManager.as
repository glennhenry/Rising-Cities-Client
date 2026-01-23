package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import net.bigpoint.as3toolbox.bitmapclip.BitmapClip;
   import net.bigpoint.cityrama.constants.EmergencyConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ProductionFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ScheduledDropFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.SmartObjectContainer;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IAnimationSlotManager;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeLoadServiceDynamic;
   
   public class AnimationSlotManager implements IAnimationSlotManager
   {
      
      protected var _billboardObjectVo:BillboardObjectVo;
      
      protected var _billboardContainer:SmartObjectContainer;
      
      protected var _targetContainer:Sprite;
      
      protected var _assetsLoaded:Boolean;
      
      protected var _loaderInstance:FileRuntimeLoadServiceDynamic;
      
      public function AnimationSlotManager()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super();
            if(!_loc2_)
            {
               this._loaderInstance = FileRuntimeLoadServiceDynamic.getInstance();
            }
         }
      }
      
      public function prepareAnimationSlotManager(param1:BillboardObjectVo, param2:SmartObjectContainer, param3:*) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!(_loc5_ && Boolean(param1)))
         {
            this._billboardObjectVo = param1;
            if(!(_loc5_ && param3))
            {
               this._billboardContainer = param2;
               if(_loc4_ || Boolean(param2))
               {
                  this._targetContainer = param3 as Sprite;
                  if(!(_loc5_ && Boolean(param1)))
                  {
                     addr0076:
                     this._billboardContainer.addEventListener(SmartObjectContainer.INVALIDATED,this.changeContainerHeight);
                     if(!(_loc5_ && Boolean(param2)))
                     {
                        this.loadIconAssets();
                     }
                  }
                  §§goto(addr009c);
               }
               §§goto(addr0076);
            }
         }
         addr009c:
      }
      
      private function changeContainerHeight(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.checkContainerPosition();
         }
      }
      
      protected function loadIconAssets() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc1_:Array = ["gui_production_animation"];
         var _loc2_:String = "preloadDoneNotification_GuiProductionAnimation";
         if(_loc4_ || Boolean(_loc2_))
         {
            §§push(this._loaderInstance);
            if(_loc4_ || Boolean(_loc2_))
            {
               if(!§§pop().libAllReadyLoaded("gui_production_animation"))
               {
                  if(_loc4_)
                  {
                     §§push(this._loaderInstance);
                     if(!_loc3_)
                     {
                        addr0067:
                        §§push(_loc2_);
                        if(!_loc3_)
                        {
                           §§pop().addEventListener(§§pop(),this.assetsLoaded);
                           if(_loc4_ || Boolean(this))
                           {
                              §§goto(addr0082);
                           }
                           §§goto(addr00c9);
                        }
                        §§goto(addr00bd);
                     }
                     §§goto(addr00a0);
                  }
                  addr0082:
                  §§push(this._loaderInstance);
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr00a0:
                     §§pop().checkSWFArrayLoaded(_loc1_,_loc2_);
                     if(_loc4_ || Boolean(_loc1_))
                     {
                     }
                  }
                  else
                  {
                     addr00bd:
                     §§pop().removeEventListener(_loc2_,this.assetsLoaded);
                     addr00bc:
                     if(!_loc3_)
                     {
                        addr00c9:
                        this._assetsLoaded = true;
                     }
                  }
                  §§goto(addr00ce);
               }
               else
               {
                  §§push(this._loaderInstance);
               }
               §§goto(addr00bc);
            }
            §§goto(addr0067);
         }
         addr00ce:
      }
      
      protected function checkContainerPosition() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         if(!(_loc4_ && Boolean(_loc3_)))
         {
            §§push(this._billboardObjectVo);
            if(_loc5_ || Boolean(this))
            {
               §§push(§§pop().isInBaseMode);
               if(!(_loc4_ && Boolean(_loc1_)))
               {
                  if(§§pop())
                  {
                     if(_loc5_ || Boolean(this))
                     {
                        this._targetContainer.x = this._billboardObjectVo.baseIconOffset.x + this._targetContainer.width / 2;
                        if(_loc5_)
                        {
                           this._targetContainer.y = this._billboardObjectVo.baseIconOffset.y;
                           if(!_loc4_)
                           {
                              §§goto(addr01ba);
                           }
                        }
                        §§goto(addr01ea);
                     }
                     §§goto(addr022b);
                  }
                  else
                  {
                     §§push(this._billboardObjectVo);
                     if(!(_loc4_ && Boolean(_loc3_)))
                     {
                        §§push(§§pop().currentBuildAsset);
                        if(_loc5_ || Boolean(_loc3_))
                        {
                           §§push(1);
                           if(_loc5_ || Boolean(_loc1_))
                           {
                              if(§§pop() == §§pop())
                              {
                                 if(_loc5_)
                                 {
                                    this._targetContainer.x = this._billboardObjectVo.placementIconOffset.x + this._targetContainer.width / 2;
                                    if(!_loc4_)
                                    {
                                       this._targetContainer.y = this._billboardObjectVo.placementIconOffset.y;
                                       if(_loc4_)
                                       {
                                       }
                                       §§goto(addr01ba);
                                    }
                                    else
                                    {
                                       addr01a5:
                                       this._targetContainer.y = this._billboardObjectVo.iconOffset.y;
                                       if(_loc5_)
                                       {
                                          §§goto(addr01ba);
                                       }
                                    }
                                    §§goto(addr01ea);
                                 }
                                 §§goto(addr0296);
                              }
                              else
                              {
                                 §§push(this._billboardObjectVo);
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop().currentBuildAsset);
                                    if(!(_loc4_ && Boolean(_loc2_)))
                                    {
                                       addr0129:
                                       addr0127:
                                       if(§§pop() == 2)
                                       {
                                          if(!_loc4_)
                                          {
                                             this._targetContainer.x = this._billboardObjectVo.constructionIconOffset.x + this._targetContainer.width / 2;
                                             if(_loc5_)
                                             {
                                                this._targetContainer.y = this._billboardObjectVo.constructionIconOffset.y;
                                                if(_loc5_ || Boolean(_loc1_))
                                                {
                                                   addr01ba:
                                                   §§push(this._targetContainer.x == this._targetContainer.width / 2);
                                                   if(_loc5_)
                                                   {
                                                      addr01d0:
                                                      var _temp_6:* = §§pop();
                                                      §§push(_temp_6);
                                                      if(_temp_6)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            §§goto(addr01db);
                                                         }
                                                      }
                                                      §§goto(addr0201);
                                                   }
                                                   addr01db:
                                                   §§pop();
                                                   if(!(_loc4_ && Boolean(this)))
                                                   {
                                                      addr01ea:
                                                      §§push(this._targetContainer.y == 0);
                                                      if(!(_loc4_ && Boolean(_loc2_)))
                                                      {
                                                         addr0201:
                                                         if(§§pop())
                                                         {
                                                            if(_loc5_ || Boolean(_loc2_))
                                                            {
                                                               addr0215:
                                                               §§push(36);
                                                               if(_loc5_ || Boolean(_loc2_))
                                                               {
                                                                  _loc1_ = §§pop();
                                                                  if(!_loc4_)
                                                                  {
                                                                     addr022b:
                                                                     §§push(this._billboardObjectVo);
                                                                     if(!_loc4_)
                                                                     {
                                                                        addr0246:
                                                                        if(§§pop().configPlayfieldItemVo.sizeX > this._billboardObjectVo.configPlayfieldItemVo.sizeY)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              addr0250:
                                                                              §§push(this._billboardObjectVo);
                                                                              §§push((!_loc4_ ? §§pop().configPlayfieldItemVo.sizeX : §§pop().configPlayfieldItemVo.sizeY) * _loc1_);
                                                                              if(!(_loc4_ && Boolean(_loc1_)))
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    addr0287:
                                                                                    _loc2_ = §§pop();
                                                                                    if(_loc5_ || Boolean(_loc1_))
                                                                                    {
                                                                                       addr0296:
                                                                                       §§push(this._billboardContainer.height - _loc2_);
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§push(-§§pop());
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             addr02ab:
                                                                                             §§push(§§pop());
                                                                                          }
                                                                                          _loc3_ = §§pop();
                                                                                          if(!(_loc4_ && Boolean(_loc3_)))
                                                                                          {
                                                                                             §§goto(addr02c9);
                                                                                          }
                                                                                          §§goto(addr02e7);
                                                                                       }
                                                                                       §§goto(addr02ab);
                                                                                    }
                                                                                    §§goto(addr02d7);
                                                                                 }
                                                                                 §§goto(addr02ab);
                                                                              }
                                                                              §§goto(addr0287);
                                                                           }
                                                                           §§goto(addr0296);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(this._billboardObjectVo);
                                                                        }
                                                                     }
                                                                     §§goto(addr0269);
                                                                  }
                                                                  §§goto(addr0250);
                                                               }
                                                               §§goto(addr02ab);
                                                            }
                                                            §§goto(addr022b);
                                                         }
                                                         §§goto(addr02e7);
                                                      }
                                                      §§goto(addr0246);
                                                   }
                                                }
                                                §§goto(addr02c9);
                                             }
                                             else
                                             {
                                                §§goto(addr01a5);
                                             }
                                          }
                                          addr02c9:
                                          this._targetContainer.x = 0;
                                          if(_loc5_)
                                          {
                                             addr02d7:
                                             this._targetContainer.y = _loc3_ - 60;
                                             if(!_loc4_)
                                             {
                                                addr02e7:
                                                this._targetContainer.y += 10;
                                             }
                                          }
                                          return;
                                       }
                                       this._targetContainer.x = this._billboardObjectVo.iconOffset.x + this._targetContainer.width / 2;
                                       if(_loc5_ || Boolean(_loc3_))
                                       {
                                          §§goto(addr01a5);
                                       }
                                       §§goto(addr02e7);
                                    }
                                    §§goto(addr0215);
                                 }
                              }
                              §§goto(addr0269);
                           }
                           §§goto(addr0129);
                        }
                        §§goto(addr0127);
                     }
                  }
                  §§goto(addr025a);
               }
               §§goto(addr01d0);
            }
            §§goto(addr0269);
         }
         §§goto(addr022b);
      }
      
      protected function assetsLoaded(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._assetsLoaded = true;
            if(!(_loc2_ && Boolean(param1)))
            {
               this.invalidateAnimationSlotManager();
            }
         }
      }
      
      public function invalidateAnimationSlotManager() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:ProductionFieldObjectVo = null;
         if(_loc3_ || Boolean(this))
         {
            §§push(this._assetsLoaded);
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     addr0038:
                     §§push(this._billboardObjectVo);
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr004d:
                        if(§§pop() is ProductionFieldObjectVo)
                        {
                           addr0055:
                           _loc1_ = this._billboardObjectVo as ProductionFieldObjectVo;
                           addr0051:
                           if(!(_loc4_ && Boolean(_loc2_)))
                           {
                              §§push(_loc1_.playProductionAinimation);
                              if(!(_loc4_ && Boolean(_loc2_)))
                              {
                                 §§push(§§pop());
                                 if(_loc3_ || Boolean(_loc2_))
                                 {
                                    var _temp_6:* = §§pop();
                                    §§push(_temp_6);
                                    §§push(_temp_6);
                                    if(_loc3_ || Boolean(_loc2_))
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc3_ || Boolean(this))
                                          {
                                             §§pop();
                                             if(_loc3_)
                                             {
                                                §§push(_loc1_.playEventAnimation);
                                                if(!_loc4_)
                                                {
                                                   §§push(!§§pop());
                                                   if(_loc3_)
                                                   {
                                                      addr00c0:
                                                      if(§§pop())
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            addr00ca:
                                                            §§push(Boolean(_loc1_.produceAbleGoods));
                                                            if(_loc3_ || _loc3_)
                                                            {
                                                               addr00dc:
                                                               var _temp_10:* = §§pop();
                                                               addr00dd:
                                                               §§push(_temp_10);
                                                               if(_temp_10)
                                                               {
                                                                  if(!(_loc4_ && Boolean(_loc1_)))
                                                                  {
                                                                     §§pop();
                                                                     if(_loc3_)
                                                                     {
                                                                        addr00fc:
                                                                        if(Boolean(_loc1_.produceAbleGoods.length))
                                                                        {
                                                                           if(!(_loc4_ && Boolean(this)))
                                                                           {
                                                                              addr010e:
                                                                              if(_loc1_.produceAbleGoods[0].groupType)
                                                                              {
                                                                                 addr0182:
                                                                                 var _loc2_:* = _loc1_.produceAbleGoods[0].groupType;
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§push(ServerTagConstants.GOOD_CONSTRUCTION);
                                                                                    if(_loc3_ || Boolean(this))
                                                                                    {
                                                                                       if(§§pop() === _loc2_)
                                                                                       {
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             addr01b2:
                                                                                             §§push(0);
                                                                                             if(_loc3_)
                                                                                             {
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr01c7:
                                                                                             §§push(1);
                                                                                             if(_loc4_ && Boolean(this))
                                                                                             {
                                                                                             }
                                                                                          }
                                                                                          addr01e7:
                                                                                          switch(§§pop())
                                                                                          {
                                                                                             case 0:
                                                                                                this.addAnimation(this.animationForConstructionGood);
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   _loc1_.playProductionAinimation = false;
                                                                                                   if(_loc3_ || Boolean(_loc1_))
                                                                                                   {
                                                                                                      return;
                                                                                                   }
                                                                                                   addr0276:
                                                                                                   _loc1_.playEventAnimation = false;
                                                                                                   if(_loc4_ && Boolean(_loc1_))
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr026c:
                                                                                                   _loc1_.playProductionAinimation = false;
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      §§goto(addr0276);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr0289);
                                                                                             case 1:
                                                                                                this.addAnimation(this.animationForNormalGood);
                                                                                                if(_loc3_ || Boolean(_loc1_))
                                                                                                {
                                                                                                   _loc1_.playProductionAinimation = false;
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      return;
                                                                                                   }
                                                                                                   §§goto(addr0276);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr0232:
                                                                                                   addr0244:
                                                                                                   §§push(_loc1_.playEventAnimation);
                                                                                                   if(_loc3_ || _loc3_)
                                                                                                   {
                                                                                                      addr0243:
                                                                                                      §§push(§§pop());
                                                                                                   }
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   if(_loc3_ || Boolean(_loc2_))
                                                                                                   {
                                                                                                      this.addAnimation(this.animationForEventGood);
                                                                                                      if(!(_loc3_ || Boolean(_loc1_)))
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr026c);
                                                                                                }
                                                                                                addr0289:
                                                                                                return;
                                                                                          }
                                                                                          addr028a:
                                                                                          §§push(this._billboardObjectVo);
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             §§push(§§pop() is ScheduledDropFieldObjectVo);
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      §§push(this._billboardObjectVo);
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         §§push((§§pop() as ScheduledDropFieldObjectVo).playAnimation);
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            addr02bb:
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  this.addAnimation(this.animationForScheduledItem);
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     §§push(this._billboardObjectVo);
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        (§§pop() as ScheduledDropFieldObjectVo).playAnimation = false;
                                                                                                                        if(!(_loc4_ && Boolean(_loc1_)))
                                                                                                                        {
                                                                                                                           §§push(this._billboardObjectVo);
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              (§§pop() as ScheduledDropFieldObjectVo).isAnimationPlaying = true;
                                                                                                                              if(_loc3_)
                                                                                                                              {
                                                                                                                                 return;
                                                                                                                              }
                                                                                                                              addr031c:
                                                                                                                              §§push(this._billboardObjectVo);
                                                                                                                              if(!(_loc4_ && _loc3_))
                                                                                                                              {
                                                                                                                                 addr032e:
                                                                                                                                 §§push(§§pop().hasEmergency());
                                                                                                                                 if(_loc3_ || Boolean(_loc1_))
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       if(!(_loc4_ && Boolean(this)))
                                                                                                                                       {
                                                                                                                                          §§push(this._billboardObjectVo);
                                                                                                                                          if(_loc3_ || Boolean(this))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().emergencyInProgress);
                                                                                                                                             if(!_loc4_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop());
                                                                                                                                                if(!(_loc4_ && Boolean(this)))
                                                                                                                                                {
                                                                                                                                                   var _temp_27:* = §§pop();
                                                                                                                                                   §§push(_temp_27);
                                                                                                                                                   §§push(_temp_27);
                                                                                                                                                   if(!(_loc4_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc4_ && Boolean(_loc1_)))
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            if(!_loc4_)
                                                                                                                                                            {
                                                                                                                                                               §§push(this._billboardObjectVo);
                                                                                                                                                               if(!(_loc4_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  addr03b4:
                                                                                                                                                                  §§push(§§pop().emergencyState);
                                                                                                                                                                  if(_loc3_ || Boolean(_loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(EmergencyConstants.EMERGENCY_STATUS_STARTED);
                                                                                                                                                                     if(!_loc4_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() == §§pop());
                                                                                                                                                                        if(!(_loc4_ && Boolean(this)))
                                                                                                                                                                        {
                                                                                                                                                                           addr03df:
                                                                                                                                                                           §§push(!§§pop());
                                                                                                                                                                           if(_loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              addr03e5:
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc3_ || Boolean(_loc2_))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr03f6:
                                                                                                                                                                                    this.addAnimation(this.animationForEmergencyInProgress);
                                                                                                                                                                                    if(!(_loc3_ || Boolean(this)))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr04f8:
                                                                                                                                                                                       §§push(this._billboardObjectVo);
                                                                                                                                                                                       if(!_loc4_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr0502:
                                                                                                                                                                                          §§push(§§pop().emergencyState);
                                                                                                                                                                                          if(_loc3_ || Boolean(this))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr0512:
                                                                                                                                                                                             §§push(EmergencyConstants.EMERGENCY_STATUS_FAIL);
                                                                                                                                                                                             if(!_loc4_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() == §§pop());
                                                                                                                                                                                                if(_loc3_ || Boolean(_loc1_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr052c:
                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc3_ || Boolean(this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr053d:
                                                                                                                                                                                                         this.addAnimation(this.animationForEmergencyFailed);
                                                                                                                                                                                                         if(_loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this._billboardObjectVo);
                                                                                                                                                                                                      if(!(_loc4_ && Boolean(this)))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop().emergencyInProgress);
                                                                                                                                                                                                         if(!(_loc4_ && Boolean(this)))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr0573:
                                                                                                                                                                                                            §§push(!§§pop());
                                                                                                                                                                                                            if(_loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr0579:
                                                                                                                                                                                                               var _temp_40:* = §§pop();
                                                                                                                                                                                                               addr057a:
                                                                                                                                                                                                               §§push(_temp_40);
                                                                                                                                                                                                               if(_temp_40)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc3_ || Boolean(this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr0596:
                                                                                                                                                                                                                     §§pop();
                                                                                                                                                                                                                     if(!_loc4_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr05ab:
                                                                                                                                                                                                                        addr05a1:
                                                                                                                                                                                                                        addr05aa:
                                                                                                                                                                                                                        addr05a4:
                                                                                                                                                                                                                        if(this._billboardObjectVo.emergencyState == EmergencyConstants.EMERGENCY_STATUS_SUCCESS)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              this.addAnimation(this.animationForEmergencyReward);
                                                                                                                                                                                                                              if(_loc4_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr05cc);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr05ab);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr05a1);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr05cc);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr0573);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr05aa);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr05a4);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr05a1);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr05cc);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this._billboardObjectVo);
                                                                                                                                                                                 if(_loc3_ || Boolean(_loc2_))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr0421:
                                                                                                                                                                                    §§push(§§pop().emergencyInProgress);
                                                                                                                                                                                    if(!(_loc4_ && Boolean(this)))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(!§§pop());
                                                                                                                                                                                       if(!_loc4_)
                                                                                                                                                                                       {
                                                                                                                                                                                          var _temp_44:* = §§pop();
                                                                                                                                                                                          §§push(_temp_44);
                                                                                                                                                                                          §§push(_temp_44);
                                                                                                                                                                                          if(_loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr043f:
                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc4_ && Boolean(this)))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr0451:
                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                   if(_loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this._billboardObjectVo);
                                                                                                                                                                                                      if(_loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr0460:
                                                                                                                                                                                                         §§push(§§pop().emergencyState);
                                                                                                                                                                                                         if(!_loc4_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(EmergencyConstants.EMERGENCY_STATUS_STARTED);
                                                                                                                                                                                                            if(!_loc4_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr0475:
                                                                                                                                                                                                               §§push(§§pop() == §§pop());
                                                                                                                                                                                                               if(_loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr047b);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr04e9);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr05aa);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr05a4);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr04b1);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr04f8);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr0596);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr047b:
                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc4_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   this.addAnimation(this.animationForEmergencyStarted);
                                                                                                                                                                                                   if(_loc3_ || Boolean(_loc2_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this._billboardObjectVo);
                                                                                                                                                                                                if(_loc3_ || Boolean(_loc2_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr04b1:
                                                                                                                                                                                                   §§push(§§pop().emergencyInProgress);
                                                                                                                                                                                                   if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(!§§pop());
                                                                                                                                                                                                      if(!(_loc4_ && Boolean(_loc2_)))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr04d1:
                                                                                                                                                                                                         var _temp_50:* = §§pop();
                                                                                                                                                                                                         §§push(_temp_50);
                                                                                                                                                                                                         §§push(_temp_50);
                                                                                                                                                                                                         if(_loc3_ || Boolean(this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr04df:
                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc4_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr04e9:
                                                                                                                                                                                                                  §§pop();
                                                                                                                                                                                                                  if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr04f8);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr05cc);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr0573);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr052c);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr057a);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr0579);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr05ab);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr05a1);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr05cc);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr04df);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr052c);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr0451);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr05a1);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr04d1);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr03e5);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr0475);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr0512);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0421);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr05cc);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr04e9);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr03e5);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr043f);
                                                                                                                                                }
                                                                                                                                                §§goto(addr04e9);
                                                                                                                                             }
                                                                                                                                             §§goto(addr052c);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0502);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       this.removeCurrentAnimation();
                                                                                                                                    }
                                                                                                                                    §§goto(addr05cc);
                                                                                                                                 }
                                                                                                                                 §§goto(addr03df);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr03b4);
                                                                                                                        }
                                                                                                                        §§goto(addr03f6);
                                                                                                                     }
                                                                                                                     §§goto(addr0460);
                                                                                                                  }
                                                                                                                  §§goto(addr05cc);
                                                                                                               }
                                                                                                               §§goto(addr053d);
                                                                                                            }
                                                                                                            §§goto(addr031c);
                                                                                                         }
                                                                                                         §§goto(addr03e5);
                                                                                                      }
                                                                                                      §§goto(addr0460);
                                                                                                   }
                                                                                                   §§goto(addr05cc);
                                                                                                }
                                                                                                §§goto(addr031c);
                                                                                             }
                                                                                             §§goto(addr02bb);
                                                                                          }
                                                                                          §§goto(addr032e);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr01c2:
                                                                                          if(ServerTagConstants.GOOD_NORMAL === _loc2_)
                                                                                          {
                                                                                             §§goto(addr01c7);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(2);
                                                                                          }
                                                                                          §§goto(addr01e7);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr01c2);
                                                                                 }
                                                                                 §§goto(addr01b2);
                                                                              }
                                                                              §§goto(addr028a);
                                                                           }
                                                                           §§goto(addr0182);
                                                                        }
                                                                        §§goto(addr028a);
                                                                     }
                                                                     §§goto(addr010e);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr00fc);
                                                         }
                                                         §§goto(addr0182);
                                                      }
                                                      else
                                                      {
                                                         §§push(_loc1_.playProductionAinimation);
                                                         if(!(_loc4_ && Boolean(_loc1_)))
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc3_)
                                                            {
                                                               var _temp_54:* = §§pop();
                                                               §§push(_temp_54);
                                                               if(_temp_54)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     addr022b:
                                                                     §§pop();
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§goto(addr0232);
                                                                     }
                                                                     §§goto(addr028a);
                                                                  }
                                                               }
                                                               §§goto(addr0244);
                                                            }
                                                            §§goto(addr0243);
                                                         }
                                                         §§goto(addr022b);
                                                      }
                                                   }
                                                }
                                                §§goto(addr00dc);
                                             }
                                             §§goto(addr010e);
                                          }
                                          §§goto(addr00fc);
                                       }
                                       §§goto(addr00c0);
                                    }
                                    §§goto(addr00dd);
                                 }
                              }
                              §§goto(addr00dc);
                           }
                           §§goto(addr00ca);
                        }
                        §§goto(addr028a);
                     }
                     §§goto(addr0055);
                  }
                  §§goto(addr0051);
               }
               addr05cc:
               return;
            }
            §§goto(addr004d);
         }
         §§goto(addr0038);
      }
      
      private function get animationForEventGood() : BitmapClip
      {
         var _loc1_:MovieClip = this._loaderInstance.getFileAsMovieClip("eventProductionAnimation");
         return new BitmapClip(_loc1_,"eventProductionAnimation",12,true);
      }
      
      private function get animationForNormalGood() : BitmapClip
      {
         var _loc1_:MovieClip = this._loaderInstance.getFileAsMovieClip("crate_fold_animation");
         return new BitmapClip(_loc1_,"crate_fold_animation",12,true);
      }
      
      private function get animationForConstructionGood() : BitmapClip
      {
         var _loc1_:MovieClip = this._loaderInstance.getFileAsMovieClip("construction_animation");
         return new BitmapClip(_loc1_,"construction_animation",12,true);
      }
      
      protected function get animationForEmergencyStarted() : BitmapClip
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:MovieClip = this._loaderInstance.getFileAsMovieClip("emergency_running_animation");
         var _loc2_:BitmapClip = new BitmapClip(_loc1_,"emergencyStarted",12);
         if(_loc3_ || _loc3_)
         {
            _loc2_.playbackMode = BitmapClip.PLAYBACK_FORWARD;
         }
         return _loc2_;
      }
      
      protected function get animationForEmergencyInProgress() : BitmapClip
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:MovieClip = this._loaderInstance.getFileAsMovieClip("emergency_fighting_animation");
         var _loc2_:BitmapClip = new BitmapClip(_loc1_,"emergencyProgress",12);
         if(!_loc4_)
         {
            _loc2_.playbackMode = BitmapClip.PLAYBACK_FORWARD;
         }
         return _loc2_;
      }
      
      protected function get animationForEmergencyReward() : BitmapClip
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc1_:MovieClip = this._loaderInstance.getFileAsMovieClip("emergency_reward_animation");
         var _loc2_:BitmapClip = new BitmapClip(_loc1_,"emergencyReward",12);
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc2_.playbackMode = BitmapClip.PLAYBACK_FORWARD;
         }
         return _loc2_;
      }
      
      private function get animationForEmergencyFailed() : BitmapClip
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:MovieClip = this._loaderInstance.getFileAsMovieClip("emergency_destroyedBuilding_animation");
         var _loc2_:BitmapClip = new BitmapClip(_loc1_,"emergencyFailed",12);
         if(!_loc4_)
         {
            _loc2_.playbackMode = BitmapClip.PLAYBACK_FORWARD;
         }
         return _loc2_;
      }
      
      private function get animationForScheduledItem() : BitmapClip
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:MovieClip = null;
         var _loc2_:BitmapClip = null;
         var _loc3_:* = (this._billboardObjectVo as ScheduledDropFieldObjectVo).tagType;
         if(!_loc4_)
         {
            §§push(ServerTagConstants.CHRISTMAS_TREE);
            if(_loc5_)
            {
               §§push(_loc3_);
               if(_loc5_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc4_ && Boolean(this)))
                     {
                        §§push(0);
                        if(_loc4_)
                        {
                        }
                     }
                     else
                     {
                        addr00e6:
                        §§push(1);
                        if(_loc4_)
                        {
                        }
                     }
                     §§goto(addr00fe);
                  }
                  else
                  {
                     §§goto(addr00e2);
                  }
               }
               addr00e2:
               §§goto(addr00e1);
            }
            addr00e1:
            if(ServerTagConstants.CLIENT_OLYMPIC_STADIUM === _loc3_)
            {
               §§goto(addr00e6);
            }
            else
            {
               §§push(2);
            }
            addr00fe:
            switch(§§pop())
            {
               case 0:
                  _loc1_ = this._loaderInstance.getFileAsMovieClip("christmas_tree_animation");
                  _loc2_ = new BitmapClip(_loc1_,"christmasTree",12,true);
                  if(!_loc4_)
                  {
                     addr010e:
                     if(!_loc2_)
                     {
                        break;
                     }
                     if(!_loc5_)
                     {
                        break;
                     }
                  }
                  _loc2_.playbackMode = BitmapClip.PLAYBACK_FORWARD;
                  break;
               case 1:
                  _loc1_ = this._loaderInstance.getFileAsMovieClip("olympic_torch_animation");
                  _loc2_ = new BitmapClip(_loc1_,"olympicTorch",12,true);
                  §§goto(addr010e);
               default:
                  §§goto(addr010e);
            }
            return _loc2_;
         }
         §§goto(addr00e6);
      }
      
      protected function addAnimation(param1:BitmapClip) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         do
         {
            if(!this._targetContainer.numChildren)
            {
               if(!(_loc2_ && Boolean(param1)))
               {
                  this._targetContainer.addChild(param1);
                  if(_loc3_)
                  {
                     break;
                  }
                  §§goto(addr0083);
               }
               break;
            }
            this._targetContainer.removeChildAt(0);
         }
         while(!(_loc2_ && _loc3_));
         
         this.checkContainerPosition();
         if(_loc3_ || _loc2_)
         {
            param1.play();
         }
         addr0083:
      }
      
      protected function removeCurrentAnimation() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(this._targetContainer.numChildren)
         {
            this._targetContainer.removeChildAt(0);
            if(_loc1_ && _loc1_)
            {
               break;
            }
         }
      }
   }
}

