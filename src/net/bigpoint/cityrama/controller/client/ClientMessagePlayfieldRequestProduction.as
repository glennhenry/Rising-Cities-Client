package net.bigpoint.cityrama.controller.client
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.field.vo.ProductionFieldObjectVo;
   import net.bigpoint.cityrama.model.good.vo.ProductionGoodObjectVo;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessagePlayfieldRequestProduction extends SimpleCommand implements ICommand
   {
      
      public function ClientMessagePlayfieldRequestProduction()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = _temp_1;
         var _loc6_:* = NaN;
         var _loc7_:ConfigPhaseDTO = null;
         var _loc10_:ConfigOutputDTO = null;
         var _loc11_:ConfigPhaseDTO = null;
         var _loc2_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc3_:Object = param1.getBody();
         var _loc4_:ProductionFieldObjectVo = ProductionFieldObjectVo(_loc3_.building);
         var _loc5_:ProductionGoodObjectVo = _loc3_.good;
         for each(_loc7_ in _loc4_.configPlayfieldItemVo.activePhases)
         {
            if(!(_loc18_ && Boolean(_loc2_)))
            {
               var _loc14_:int = 0;
               if(!(_loc18_ && Boolean(param1)))
               {
                  for each(_loc10_ in _loc7_.listEntryOutputs)
                  {
                     §§push(_loc10_.goodConfig);
                     if(!_loc18_)
                     {
                        §§push(§§pop());
                        if(!(_loc18_ && Boolean(_loc3_)))
                        {
                           var _temp_6:* = §§pop();
                           §§push(_temp_6);
                           if(_temp_6)
                           {
                              if(!(_loc18_ && Boolean(param1)))
                              {
                                 §§pop();
                                 if(!_loc19_)
                                 {
                                    continue;
                                 }
                                 addr00ee:
                                 §§push(_loc10_.goodConfig.id == _loc5_.config.id);
                              }
                           }
                        }
                        if(§§pop())
                        {
                           if(_loc19_)
                           {
                              var _loc16_:int = 0;
                              if(!_loc18_)
                              {
                                 for each(_loc11_ in _loc4_.configPlayfieldItemVo.activePhases)
                                 {
                                    if(_loc11_.phaseOrderId == _loc7_.phaseOrderId - 1)
                                    {
                                       if(!_loc18_)
                                       {
                                          §§push(_loc11_.phaseId);
                                          if(_loc19_ || Boolean(_loc3_))
                                          {
                                             §§push(§§pop());
                                          }
                                          _loc6_ = §§pop();
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        continue;
                     }
                     §§goto(addr00ee);
                  }
               }
            }
         }
         if(!(_loc18_ && Boolean(param1)))
         {
            if(isNaN(_loc6_))
            {
               if(!(_loc18_ && Boolean(this)))
               {
                  §§goto(addr01a7);
               }
            }
            var _loc8_:Object = new Object();
            _loc8_.bid = _loc4_.buildingDTO.id;
            if(_loc19_ || Boolean(this))
            {
               _loc8_.cpi = _loc6_;
               if(_loc19_)
               {
                  _loc8_.bst = false;
                  if(_loc19_ || Boolean(param1))
                  {
                     if(_loc3_.boost)
                     {
                        if(_loc19_)
                        {
                           addr0215:
                           _loc8_.bst = _loc3_.boost;
                        }
                     }
                     §§goto(addr0220);
                  }
                  §§goto(addr0215);
               }
            }
            addr0220:
            var _loc9_:MessageVo = _loc2_.createMessage(_loc8_,ServerMessageConstants.PLAYFIELD_REQUEST_PRODUCTION);
            if(_loc19_)
            {
               _loc2_.sendMessage(_loc9_);
            }
            return;
         }
         addr01a7:
         throw new RamaCityError("Invalid Production Phase!!!");
      }
   }
}

