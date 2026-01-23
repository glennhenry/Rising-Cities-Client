package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.good.vo.GoodObjectVo;
   import net.bigpoint.cityrama.model.player.PlayerGoodsStockProxy;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessagePlayfieldBuildingSwapResident extends SimpleCommand
   {
      
      public function ClientMessagePlayfieldBuildingSwapResident()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = _temp_1;
         var _loc5_:* = NaN;
         var _loc6_:ConfigPhaseDTO = null;
         var _loc8_:GoodObjectVo = null;
         var _loc12_:ConfigOutputDTO = null;
         var _loc2_:Object = param1.getBody() as Object;
         var _loc3_:BillboardObjectVo = _loc2_.billboard;
         var _loc4_:String = _loc2_.popType;
         for each(_loc6_ in _loc3_.configPlayfieldItemVo.getAllPhasesByType(ServerPhaseTypes.RESIDENT))
         {
            for each(_loc12_ in _loc6_.listEntryOutputs)
            {
               if(_loc12_.resourceConfig.type == _loc4_)
               {
                  if(_loc18_ || Boolean(_loc3_))
                  {
                     §§push(_loc6_.phaseId);
                     if(!(_loc17_ && Boolean(param1)))
                     {
                        §§push(§§pop());
                     }
                     _loc5_ = §§pop();
                  }
                  break;
               }
            }
         }
         if(!(_loc17_ && Boolean(_loc2_)))
         {
            if(isNaN(_loc5_))
            {
               if(_loc18_)
               {
                  §§goto(addr00ee);
               }
            }
            var _loc7_:PlayerGoodsStockProxy = facade.retrieveProxy(PlayerGoodsStockProxy.NAME) as PlayerGoodsStockProxy;
            if(!(_loc17_ && Boolean(_loc2_)))
            {
               var _loc13_:* = 0;
               if(!_loc17_)
               {
                  for each(_loc8_ in _loc7_.getAllGoodsByTag(ServerTagConstants.GOOD_KEY))
                  {
                  }
               }
               if(_loc18_)
               {
                  if(_loc8_ == null)
                  {
                     if(!_loc17_)
                     {
                        §§goto(addr016c);
                     }
                  }
               }
               var _loc9_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
               var _loc10_:Object = new Object();
               _loc10_.bid = _loc13_ = _loc3_.buildingDTO.id;
               if(_loc18_ || Boolean(_loc3_))
               {
                  §§push(_loc13_);
                  if(!(_loc17_ && Boolean(param1)))
                  {
                     if(_loc18_ || Boolean(_loc2_))
                     {
                        §§pop();
                        if(_loc18_)
                        {
                           _loc10_.pop = _loc13_ = _loc5_;
                           if(!_loc17_)
                           {
                              addr01eb:
                              §§push(_loc13_);
                              if(_loc18_)
                              {
                                 addr01f3:
                                 if(!(_loc17_ && Boolean(this)))
                                 {
                                    §§pop();
                                    if(_loc18_ || Boolean(param1))
                                    {
                                       _loc10_.kgi = _loc13_ = _loc8_.config.id;
                                       addr0230:
                                       _loc13_;
                                       addr022e:
                                       addr022c:
                                       addr0212:
                                    }
                                    var _loc11_:MessageVo = _loc9_.createMessage(_loc10_,ServerMessageConstants.PLAYFIELD_BUILDING_SWAP_RESIDENT);
                                    if(_loc18_ || Boolean(param1))
                                    {
                                       _loc9_.sendMessage(_loc11_);
                                    }
                                    return;
                                 }
                                 §§goto(addr0230);
                              }
                              §§goto(addr022e);
                           }
                           §§goto(addr022c);
                        }
                        §§goto(addr0212);
                     }
                     §§goto(addr0230);
                  }
                  §§goto(addr01f3);
               }
               §§goto(addr01eb);
            }
            addr016c:
            throw new Error("Good is null");
         }
         addr00ee:
         throw new Error("Resident id is NaN");
      }
   }
}

