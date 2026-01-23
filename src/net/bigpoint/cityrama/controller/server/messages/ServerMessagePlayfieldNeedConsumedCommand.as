package net.bigpoint.cityrama.controller.server.messages
{
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.model.buffSystem.NeedMatrixProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.globalbalance.GlobalBalanceProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigNeedDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigNeedStackDTO;
   import net.bigpoint.cityrama.model.server.vo.server.NeedStackDTO;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldNeedConsumedCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMessagePlayfieldNeedConsumedCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = _temp_1;
         var _loc6_:Boolean = false;
         var _loc8_:NeedStackDTO = null;
         var _loc9_:NeedMatrixProxy = null;
         var _loc10_:ConfigNeedDTO = null;
         var _loc11_:ConfigNeedStackDTO = null;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:GlobalBalanceProxy = facade.retrieveProxy(GlobalBalanceProxy.NAME) as GlobalBalanceProxy;
         var _loc5_:ShopFieldObject = ShopFieldObject(_loc3_.getBillboardById(_loc2_.json.bid));
         var _loc7_:* = 0;
         for each(_loc8_ in _loc5_.shopFieldObjectVo.sellableNeedStack)
         {
            if(_loc19_)
            {
               var _loc14_:int = 0;
               if(_loc19_)
               {
                  for each(_loc10_ in _loc5_.shopFieldObjectVo.configPlayfieldItemVo.needShopConfigs)
                  {
                     if(!(_loc18_ && Boolean(_loc2_)))
                     {
                        var _loc16_:int = 0;
                        if(_loc19_)
                        {
                           for each(_loc11_ in _loc10_.requiredGoods)
                           {
                              if(_loc19_)
                              {
                                 §§push(_loc8_.configId);
                                 if(!(_loc18_ && Boolean(_loc2_)))
                                 {
                                    if(§§pop() == _loc11_.id)
                                    {
                                       if(!(_loc18_ && Boolean(_loc3_)))
                                       {
                                          §§push(Math.abs(_loc11_.configOutout.outputAmount * _loc4_.happinessOutputModifier));
                                          if(!(_loc18_ && Boolean(param1)))
                                          {
                                             addr0159:
                                             _loc7_ = §§pop();
                                             if(!_loc19_)
                                             {
                                                continue;
                                             }
                                             addr0161:
                                             §§push(Math.ceil(_loc7_));
                                          }
                                          _loc7_ = §§pop();
                                       }
                                    }
                                    continue;
                                 }
                                 §§goto(addr0159);
                              }
                              §§goto(addr0161);
                           }
                        }
                     }
                  }
               }
               if(_loc18_)
               {
                  continue;
               }
            }
            §§push(_loc8_);
            §§push(_loc8_.amount);
            if(_loc19_)
            {
               §§push(§§pop() - _loc7_);
            }
            §§pop().amount = §§pop();
         }
         if(!(_loc18_ && Boolean(this)))
         {
            §§push(_loc5_.shopFieldObjectVo);
            if(_loc19_)
            {
               §§push(ResourceManager.getInstance());
               §§push("rcl.misc.infieldfloaterCustomText");
               if(_loc19_ || Boolean(param1))
               {
                  §§push("");
                  if(_loc19_ || Boolean(this))
                  {
                     addr01e8:
                     §§push(§§pop() + §§pop());
                     §§push("rcl.misc.infieldfloaterCustomText.needBuildingOperation");
                     if(!(_loc18_ && Boolean(this)))
                     {
                        §§push(§§pop() + "");
                     }
                  }
                  §§pop().informationFloaterCustomText = §§pop().getString(§§pop(),§§pop());
                  if(!_loc18_)
                  {
                     §§goto(addr020f);
                  }
                  §§goto(addr022d);
               }
               §§goto(addr01e8);
            }
            addr020f:
            _loc5_.shopFieldObjectVo.informationFloaterPhase = null;
            §§goto(addr020a);
         }
         addr020a:
         if(!(_loc18_ && Boolean(this)))
         {
            addr022d:
            _loc5_.invalidateIconStateManager();
            if(_loc19_)
            {
               _loc5_.invalidateInformationFloaterManager();
            }
         }
         _loc9_ = facade.retrieveProxy(NeedMatrixProxy.NAME) as NeedMatrixProxy;
         _loc9_.updateShop((_loc5_ as ShopFieldObject).shopFieldObjectVo);
      }
   }
}

