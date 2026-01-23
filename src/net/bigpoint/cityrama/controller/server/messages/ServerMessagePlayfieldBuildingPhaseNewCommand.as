package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldBuildingPhaseNewCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMessagePlayfieldBuildingPhaseNewCommand()
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
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = _temp_1;
         var _loc5_:ConfigPhaseDTO = null;
         var _loc7_:Object = null;
         var _loc8_:PhaseDTO = null;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:BillboardObject = _loc3_.getBillboardById(_loc2_.json.bid);
         var _loc6_:Vector.<PhaseDTO> = new Vector.<PhaseDTO>();
         var _loc9_:int = 0;
         var _loc10_:* = _loc2_.json.ph;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc10_,_loc9_));
            if(!(_loc12_ || Boolean(this)))
            {
               break;
            }
            if(§§pop())
            {
               _loc7_ = §§nextvalue(_loc9_,_loc10_);
               if(_loc12_ || Boolean(_loc3_))
               {
                  _loc6_.push(ConfigFactory.buildPhaseDTOForConfigPlayfieldItem(_loc7_,_loc4_.billboardObjectVo.configPlayfieldItemVo));
               }
               continue;
            }
            if(_loc12_ || Boolean(param1))
            {
               if(_loc12_)
               {
                  if(_loc12_ || Boolean(_loc2_))
                  {
                     _loc9_ = 0;
                     if(!_loc11_)
                     {
                        _loc10_ = _loc6_;
                        while(true)
                        {
                           §§push(§§hasnext(_loc10_,_loc9_));
                           break loop0;
                        }
                        addr0139:
                        addr0132:
                     }
                     §§goto(addr013b);
                  }
                  §§goto(addr014b);
               }
               addr013b:
               if(!(_loc11_ && Boolean(_loc3_)))
               {
                  addr014b:
                  _loc4_.billboardObjectVo.invalidate();
               }
               return;
            }
            §§goto(addr0139);
         }
         while(§§pop())
         {
            _loc8_ = §§nextvalue(_loc9_,_loc10_);
            if(!(_loc11_ && Boolean(_loc2_)))
            {
               _loc4_.billboardObjectVo.buildingDTO.activePhases.push(_loc8_);
            }
            §§goto(addr0132);
         }
         §§goto(addr0139);
      }
   }
}

