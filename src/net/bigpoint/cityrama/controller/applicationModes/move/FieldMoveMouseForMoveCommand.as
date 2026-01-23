package net.bigpoint.cityrama.controller.applicationModes.move
{
   import flash.geom.Rectangle;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerRestrictionConstants;
   import net.bigpoint.cityrama.model.field.FieldMoveProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.field.ground.GridProxy;
   import net.bigpoint.cityrama.model.field.ground.RestrictionProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IEmergencyInfrastructure;
   import net.bigpoint.cityrama.model.field.interfaces.IGameObjectVo;
   import net.bigpoint.cityrama.model.field.vo.BoulderObjectVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGroundRestrictionDTO;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.AcademyFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.CinemaFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.CitySquareFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.InfrastructureBuildingFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.MysteryBuildingFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.PowerplantFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ProductionFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ScheduledDropFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.HighlightManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IInteraction;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IPlaneObject;
   import net.bigpoint.field3d.interfaces.IMatrixObject3D;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class FieldMoveMouseForMoveCommand extends SimpleCommand
   {
      
      public function FieldMoveMouseForMoveCommand()
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
         §§push(false);
         var _loc20_:Boolean = true;
         var _loc21_:* = §§pop();
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:BillboardObject = null;
         var _loc9_:* = false;
         var _loc10_:* = false;
         var _loc11_:PlayfieldObjectsProxy = null;
         var _loc12_:Vector.<IGameObjectVo> = null;
         var _loc13_:IGameObjectVo = null;
         var _loc14_:Vector.<ConfigGroundRestrictionDTO> = null;
         var _loc15_:* = false;
         var _loc16_:ConfigGroundRestrictionDTO = null;
         var _loc17_:IPlaneObject = null;
         var _loc2_:GridProxy = facade.retrieveProxy(GridProxy.NAME) as GridProxy;
         var _loc3_:PlayfieldProxy = PlayfieldProxy(facade.retrieveProxy(PlayfieldProxy.NAME));
         var _loc4_:FieldMoveProxy = FieldMoveProxy(facade.retrieveProxy(FieldMoveProxy.NAME));
         var _loc5_:RestrictionProxy = facade.retrieveProxy(RestrictionProxy.NAME) as RestrictionProxy;
         if(_loc20_ || Boolean(_loc3_))
         {
            §§push(_loc4_.objectToMove);
            if(!_loc21_)
            {
               if(§§pop() != null)
               {
                  if(!_loc21_)
                  {
                     _loc2_.setPositionByMouse(_loc3_.mouseMatrixPoint.x,_loc3_.mouseMatrixPoint.y);
                     if(!(_loc21_ && Boolean(_loc2_)))
                     {
                        addr00e4:
                        §§push(_loc4_.objectToMove);
                        if(_loc20_ || Boolean(_loc3_))
                        {
                           addr00f7:
                           if(§§pop() is BillboardObject)
                           {
                              addr0103:
                              _loc8_ = _loc4_.objectToMove as BillboardObject;
                              addr00fe:
                              if(!_loc21_)
                              {
                                 §§push(int(Math.round(_loc3_.mouseMatrixPoint.x - _loc8_.billboardObjectVo.configPlayfieldItemVo.sizeX / 2)));
                                 if(_loc20_ || Boolean(_loc2_))
                                 {
                                    _loc7_ = §§pop();
                                    if(_loc20_ || Boolean(_loc3_))
                                    {
                                       §§push(int(Math.round(_loc3_.mouseMatrixPoint.y - _loc8_.billboardObjectVo.configPlayfieldItemVo.sizeY / 2)));
                                       if(!_loc21_)
                                       {
                                          addr016a:
                                          _loc6_ = §§pop();
                                          if(_loc20_)
                                          {
                                             §§push(_loc8_.xIndex == _loc7_);
                                             if(_loc20_)
                                             {
                                                var _temp_6:* = §§pop();
                                                §§push(_temp_6);
                                                §§push(_temp_6);
                                                if(_loc20_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc20_ || Boolean(this))
                                                      {
                                                         §§pop();
                                                         if(_loc20_)
                                                         {
                                                            addr01a0:
                                                            §§push(_loc8_.yIndex == _loc6_);
                                                            if(_loc20_)
                                                            {
                                                               addr01ae:
                                                               var _temp_8:* = §§pop();
                                                               §§push(_temp_8);
                                                               §§push(_temp_8);
                                                               if(!_loc21_)
                                                               {
                                                                  addr01b5:
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc20_)
                                                                     {
                                                                        §§pop();
                                                                        if(_loc20_ || Boolean(_loc2_))
                                                                        {
                                                                           §§push(_loc7_);
                                                                           if(!_loc21_)
                                                                           {
                                                                              §§push(_loc4_.originalPosition);
                                                                              if(_loc20_)
                                                                              {
                                                                                 §§push(§§pop() == §§pop().x);
                                                                                 if(!(_loc21_ && Boolean(param1)))
                                                                                 {
                                                                                    §§push(!§§pop());
                                                                                    if(_loc20_ || Boolean(_loc2_))
                                                                                    {
                                                                                       var _temp_12:* = §§pop();
                                                                                       §§push(_temp_12);
                                                                                       §§push(_temp_12);
                                                                                       if(!_loc21_)
                                                                                       {
                                                                                          addr0208:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc20_)
                                                                                             {
                                                                                                addr0212:
                                                                                                §§pop();
                                                                                                if(_loc20_)
                                                                                                {
                                                                                                   addr0220:
                                                                                                   addr021b:
                                                                                                   addr0219:
                                                                                                   §§push(_loc6_ == _loc4_.originalPosition.y);
                                                                                                   if(!(_loc21_ && Boolean(_loc3_)))
                                                                                                   {
                                                                                                      §§push(!§§pop());
                                                                                                      if(_loc20_ || Boolean(_loc3_))
                                                                                                      {
                                                                                                         addr0240:
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(_loc20_)
                                                                                                            {
                                                                                                               return;
                                                                                                            }
                                                                                                            addr032a:
                                                                                                            §§push(_loc8_.billboardObjectVo);
                                                                                                            if(!(_loc21_ && Boolean(this)))
                                                                                                            {
                                                                                                               §§push(false);
                                                                                                               if(_loc20_)
                                                                                                               {
                                                                                                                  addr0343:
                                                                                                                  §§pop().isBlockedByBoulder = §§pop();
                                                                                                                  if(!_loc21_)
                                                                                                                  {
                                                                                                                     addr0351:
                                                                                                                     _loc8_.billboardObjectVo.isBlockedByObject = false;
                                                                                                                     addr0350:
                                                                                                                     if(!(_loc21_ && Boolean(_loc2_)))
                                                                                                                     {
                                                                                                                        §§push(_loc9_);
                                                                                                                        if(!(_loc21_ && Boolean(this)))
                                                                                                                        {
                                                                                                                           addr0372:
                                                                                                                           §§push(§§pop());
                                                                                                                           if(_loc20_ || Boolean(this))
                                                                                                                           {
                                                                                                                              addr0381:
                                                                                                                              var _temp_19:* = §§pop();
                                                                                                                              addr0382:
                                                                                                                              §§push(_temp_19);
                                                                                                                              if(_temp_19)
                                                                                                                              {
                                                                                                                                 if(_loc20_ || Boolean(this))
                                                                                                                                 {
                                                                                                                                    addr0394:
                                                                                                                                    §§pop();
                                                                                                                                    if(!(_loc21_ && Boolean(_loc3_)))
                                                                                                                                    {
                                                                                                                                       §§push(_loc10_);
                                                                                                                                       if(_loc20_)
                                                                                                                                       {
                                                                                                                                          addr03ab:
                                                                                                                                          §§push(§§pop());
                                                                                                                                          if(_loc20_)
                                                                                                                                          {
                                                                                                                                             addr03b2:
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                if(_loc20_ || Boolean(this))
                                                                                                                                                {
                                                                                                                                                   _loc8_.invalidateHighlightManager(HighlightManager.INMOVE_ALLOW_MOVE_TINT);
                                                                                                                                                   if(!(_loc20_ || Boolean(_loc2_)))
                                                                                                                                                   {
                                                                                                                                                      addr03e8:
                                                                                                                                                      _loc11_ = PlayfieldObjectsProxy(facade.retrieveProxy(PlayfieldObjectsProxy.NAME));
                                                                                                                                                      _loc12_ = _loc11_.getGameObjectsByCuboid(_loc2_.selectedCuboid);
                                                                                                                                                      for each(_loc13_ in _loc12_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc21_ && Boolean(_loc2_)))
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc8_.billboardObjectVo);
                                                                                                                                                            if(_loc20_ || Boolean(_loc3_))
                                                                                                                                                            {
                                                                                                                                                               §§push(true);
                                                                                                                                                               if(!_loc21_)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().isBlockedByObject = §§pop();
                                                                                                                                                                  if(_loc20_ || Boolean(_loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     addr0458:
                                                                                                                                                                     if(!(_loc13_ is BoulderObjectVo))
                                                                                                                                                                     {
                                                                                                                                                                        continue;
                                                                                                                                                                     }
                                                                                                                                                                     if(_loc21_)
                                                                                                                                                                     {
                                                                                                                                                                        continue;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr046c:
                                                                                                                                                                  §§push(_loc8_.billboardObjectVo);
                                                                                                                                                                  §§push(false);
                                                                                                                                                               }
                                                                                                                                                               §§pop().isBlockedByBoulder = §§pop();
                                                                                                                                                               continue;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr046c);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0458);
                                                                                                                                                      }
                                                                                                                                                      addr047b:
                                                                                                                                                      §§push(_loc10_);
                                                                                                                                                      if(_loc20_ || Boolean(this))
                                                                                                                                                      {
                                                                                                                                                         if(!§§pop())
                                                                                                                                                         {
                                                                                                                                                            if(!_loc21_)
                                                                                                                                                            {
                                                                                                                                                               _loc8_.billboardObjectVo.isRestrictedByGround = true;
                                                                                                                                                               if(_loc20_ || Boolean(_loc2_))
                                                                                                                                                               {
                                                                                                                                                                  _loc14_ = _loc5_.getAllRestrictionsForItem(_loc8_.billboardObjectVo.configPlayfieldItemVo);
                                                                                                                                                                  if(_loc20_)
                                                                                                                                                                  {
                                                                                                                                                                     _loc15_ = false;
                                                                                                                                                                  }
                                                                                                                                                                  for each(_loc16_ in _loc14_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc16_.whiteList);
                                                                                                                                                                     if(_loc20_ || Boolean(_loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        if(!§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                        if(!(_loc20_ || Boolean(this)))
                                                                                                                                                                        {
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        _loc8_.billboardObjectVo.terrainTypeNeeded = _loc16_.groundType;
                                                                                                                                                                        if(!_loc20_)
                                                                                                                                                                        {
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(true);
                                                                                                                                                                     }
                                                                                                                                                                     _loc15_ = §§pop();
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  if(!(_loc21_ && Boolean(this)))
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc15_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc21_ && Boolean(param1)))
                                                                                                                                                                        {
                                                                                                                                                                           addr0548:
                                                                                                                                                                           _loc8_.billboardObjectVo.terrainTypeNeeded = ServerRestrictionConstants.BUILDINGLAND;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr0555:
                                                                                                                                                                     _loc8_.invalidateHighlightManager(HighlightManager.INMOVE_DISALLOW_TINT);
                                                                                                                                                                     if(_loc20_ || Boolean(_loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        addr056f:
                                                                                                                                                                        _loc8_.updateIndex(_loc7_,_loc6_);
                                                                                                                                                                        if(!_loc21_)
                                                                                                                                                                        {
                                                                                                                                                                           sendNotification(ApplicationNotificationConstants.FIELD_UPDATE_SINGLE_POSITION,_loc4_.objectToMove);
                                                                                                                                                                           if(!(_loc21_ && Boolean(_loc3_)))
                                                                                                                                                                           {
                                                                                                                                                                              addr059c:
                                                                                                                                                                              §§push(_loc4_.objectToMove);
                                                                                                                                                                              if(_loc20_ || Boolean(_loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() is ShopFieldObject);
                                                                                                                                                                                 if(!_loc21_)
                                                                                                                                                                                 {
                                                                                                                                                                                    var _temp_38:* = §§pop();
                                                                                                                                                                                    §§push(_temp_38);
                                                                                                                                                                                    §§push(_temp_38);
                                                                                                                                                                                    if(_loc20_ || Boolean(_loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc20_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr05dd:
                                                                                                                                                                                             §§pop();
                                                                                                                                                                                             if(_loc20_ || Boolean(_loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc4_.objectToMove);
                                                                                                                                                                                                if(!_loc21_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() is IEmergencyInfrastructure);
                                                                                                                                                                                                   if(_loc20_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr0601:
                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc20_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr060b:
                                                                                                                                                                                                            sendNotification(ApplicationNotificationConstants.GROUND_ITEM_BUFFGRID_MOVE,(_loc4_.objectToMove as BillboardObject).billboardObjectVo);
                                                                                                                                                                                                            if(!(_loc21_ && Boolean(this)))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr062d:
                                                                                                                                                                                                               §§push(_loc4_.objectToMove);
                                                                                                                                                                                                               if(_loc20_ || Boolean(this))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() is ResidentialFieldObject);
                                                                                                                                                                                                                  if(!(_loc21_ && Boolean(_loc3_)))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     var _temp_44:* = §§pop();
                                                                                                                                                                                                                     §§push(_temp_44);
                                                                                                                                                                                                                     §§push(_temp_44);
                                                                                                                                                                                                                     if(_loc20_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr0659:
                                                                                                                                                                                                                        if(!§§pop())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc20_ || Boolean(this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§pop();
                                                                                                                                                                                                                              if(!(_loc21_ && Boolean(_loc2_)))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr067a:
                                                                                                                                                                                                                                 §§push(_loc4_.objectToMove);
                                                                                                                                                                                                                                 if(_loc20_ || Boolean(this))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() is InfrastructureBuildingFieldObject);
                                                                                                                                                                                                                                    if(_loc20_ || Boolean(_loc3_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr069f:
                                                                                                                                                                                                                                       var _temp_49:* = §§pop();
                                                                                                                                                                                                                                       §§push(_temp_49);
                                                                                                                                                                                                                                       §§push(_temp_49);
                                                                                                                                                                                                                                       if(_loc20_ || Boolean(param1))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!§§pop())
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc21_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                                                                if(_loc20_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr06bf:
                                                                                                                                                                                                                                                   §§push(_loc4_.objectToMove);
                                                                                                                                                                                                                                                   if(!(_loc21_ && Boolean(_loc2_)))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr06d2:
                                                                                                                                                                                                                                                      §§push(§§pop() is PowerplantFieldObject);
                                                                                                                                                                                                                                                      if(_loc20_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr06dc:
                                                                                                                                                                                                                                                         var _temp_52:* = §§pop();
                                                                                                                                                                                                                                                         §§push(_temp_52);
                                                                                                                                                                                                                                                         §§push(_temp_52);
                                                                                                                                                                                                                                                         if(!_loc21_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr06e3:
                                                                                                                                                                                                                                                            if(!§§pop())
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc20_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§pop();
                                                                                                                                                                                                                                                                  if(!_loc21_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr06f4:
                                                                                                                                                                                                                                                                     §§push(_loc4_.objectToMove);
                                                                                                                                                                                                                                                                     if(_loc20_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() is ProductionFieldObject);
                                                                                                                                                                                                                                                                        if(_loc20_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr0709:
                                                                                                                                                                                                                                                                           var _temp_53:* = §§pop();
                                                                                                                                                                                                                                                                           §§push(_temp_53);
                                                                                                                                                                                                                                                                           §§push(_temp_53);
                                                                                                                                                                                                                                                                           if(_loc20_ || Boolean(_loc3_))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr0718:
                                                                                                                                                                                                                                                                              if(!§§pop())
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!_loc21_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr0722);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr07b4);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr074e);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr081c);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr079b);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr087f);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr089b);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr0722:
                                                                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                                                                               if(!(_loc21_ && Boolean(_loc3_)))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc4_.objectToMove);
                                                                                                                                                                                                                                                                  if(_loc20_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() is ShopFieldObject);
                                                                                                                                                                                                                                                                     if(!(_loc21_ && Boolean(_loc2_)))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr074e:
                                                                                                                                                                                                                                                                        var _temp_57:* = §§pop();
                                                                                                                                                                                                                                                                        §§push(_temp_57);
                                                                                                                                                                                                                                                                        §§push(_temp_57);
                                                                                                                                                                                                                                                                        if(_loc20_ || Boolean(this))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!§§pop())
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!(_loc21_ && Boolean(param1)))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr076f:
                                                                                                                                                                                                                                                                                 §§pop();
                                                                                                                                                                                                                                                                                 if(_loc20_ || Boolean(_loc2_))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(_loc4_.objectToMove);
                                                                                                                                                                                                                                                                                    if(!(_loc21_ && Boolean(param1)))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop() is AcademyFieldObject);
                                                                                                                                                                                                                                                                                       if(_loc20_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr079b:
                                                                                                                                                                                                                                                                                          var _temp_62:* = §§pop();
                                                                                                                                                                                                                                                                                          §§push(_temp_62);
                                                                                                                                                                                                                                                                                          §§push(_temp_62);
                                                                                                                                                                                                                                                                                          if(!_loc21_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!§§pop())
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!(_loc21_ && Boolean(this)))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr07b4:
                                                                                                                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                                                                                                                   if(_loc20_ || Boolean(this))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr07c3:
                                                                                                                                                                                                                                                                                                      §§push(_loc4_.objectToMove);
                                                                                                                                                                                                                                                                                                      if(!_loc21_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop() is CinemaFieldObject);
                                                                                                                                                                                                                                                                                                         if(_loc20_ || Boolean(this))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr07e0:
                                                                                                                                                                                                                                                                                                            var _temp_66:* = §§pop();
                                                                                                                                                                                                                                                                                                            §§push(_temp_66);
                                                                                                                                                                                                                                                                                                            §§push(_temp_66);
                                                                                                                                                                                                                                                                                                            if(!_loc21_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr07e7:
                                                                                                                                                                                                                                                                                                               if(!§§pop())
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc20_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr07f1:
                                                                                                                                                                                                                                                                                                                     §§pop();
                                                                                                                                                                                                                                                                                                                     if(!_loc21_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(_loc4_.objectToMove);
                                                                                                                                                                                                                                                                                                                        if(!_loc21_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr0803:
                                                                                                                                                                                                                                                                                                                           §§push(§§pop() is CitySquareFieldObject);
                                                                                                                                                                                                                                                                                                                           if(!_loc21_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr080d:
                                                                                                                                                                                                                                                                                                                              var _temp_67:* = §§pop();
                                                                                                                                                                                                                                                                                                                              §§push(_temp_67);
                                                                                                                                                                                                                                                                                                                              §§push(_temp_67);
                                                                                                                                                                                                                                                                                                                              if(!(_loc21_ && Boolean(param1)))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 addr081c:
                                                                                                                                                                                                                                                                                                                                 if(!§§pop())
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(_loc20_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       addr0826:
                                                                                                                                                                                                                                                                                                                                       §§pop();
                                                                                                                                                                                                                                                                                                                                       if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr082d:
                                                                                                                                                                                                                                                                                                                                          §§push(_loc4_.objectToMove);
                                                                                                                                                                                                                                                                                                                                          if(_loc20_ || Boolean(param1))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             addr0840:
                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() is ScheduledDropFieldObject);
                                                                                                                                                                                                                                                                                                                                             if(!(_loc21_ && Boolean(this)))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                addr0852:
                                                                                                                                                                                                                                                                                                                                                var _temp_71:* = §§pop();
                                                                                                                                                                                                                                                                                                                                                addr0853:
                                                                                                                                                                                                                                                                                                                                                §§push(_temp_71);
                                                                                                                                                                                                                                                                                                                                                if(!_temp_71)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(!(_loc21_ && Boolean(_loc3_)))
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr0865);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr08b6);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr0891);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr087f);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr08ad);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    addr0865:
                                                                                                                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                                                                                                                    if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       addr086c:
                                                                                                                                                                                                                                                                                                                                       §§push(_loc4_.objectToMove);
                                                                                                                                                                                                                                                                                                                                       if(!(_loc21_ && Boolean(this)))
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr087f:
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() is MysteryBuildingFieldObject);
                                                                                                                                                                                                                                                                                                                                          if(!(_loc21_ && Boolean(param1)))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             addr0891:
                                                                                                                                                                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(_loc20_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   addr089b:
                                                                                                                                                                                                                                                                                                                                                   sendNotification(ApplicationNotificationConstants.PLAYFIELD_MOVE_ITEM_CHECK_ACTIVATED,_loc8_);
                                                                                                                                                                                                                                                                                                                                                   if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      addr08ad:
                                                                                                                                                                                                                                                                                                                                                      addr08b6:
                                                                                                                                                                                                                                                                                                                                                      addr08b2:
                                                                                                                                                                                                                                                                                                                                                      if(_loc4_.objectToMove is ResidentialFieldObject)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(!(_loc21_ && Boolean(_loc2_)))
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            sendNotification(ApplicationNotificationConstants.PLAYFIELD_MOVE_ITEM_CHECK_SHOPS_FOR_NEEDS,_loc8_.billboardObjectVo);
                                                                                                                                                                                                                                                                                                                                                            if(_loc20_ || Boolean(this))
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr08e4:
                                                                                                                                                                                                                                                                                                                                                               sendNotification(ApplicationNotificationConstants.MOUSE_MOVE_FOR_CHANGE_HEATMAP);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr0bd7);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr08e4);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr0bd7);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr08ad);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr08b6);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr08b2);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr0bd7);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr0852);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr0853);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr0826);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr08b2);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr08e4);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr0852);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr080d);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr0853);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr07f1);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr0803);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr086c);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr0891);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr07e0);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr07e7);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr0891);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr0803);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr08e4);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr0891);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr079b);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr0853);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr0891);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr087f);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr0bd7);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr0709);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr0718);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr07e0);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr087f);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr086c);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr0709);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr06dc);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr0718);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr080d);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr06d2);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr07c3);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr076f);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr069f);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr06e3);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr07e0);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr0840);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr067a);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr0bd7);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr062d);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr06dc);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr087f);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr08e4);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr080d);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr0601);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr0659);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr08b6);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr087f);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr060b);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr082d);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr060b);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr0548);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr06bf);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr06f4);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0555);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr05dd);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr056f);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr03e4:
                                                                                                                                                if(!_loc9_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr03e8);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr047b);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr03e4);
                                                                                                                                    }
                                                                                                                                    §§goto(addr03e8);
                                                                                                                                 }
                                                                                                                                 §§goto(addr03e4);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr03b2);
                                                                                                                        }
                                                                                                                        §§goto(addr0394);
                                                                                                                     }
                                                                                                                     §§goto(addr056f);
                                                                                                                  }
                                                                                                                  §§goto(addr03e8);
                                                                                                               }
                                                                                                               §§goto(addr0351);
                                                                                                            }
                                                                                                            §§goto(addr0350);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push(_loc3_.checkIfRectIsInUsablePlayfieldSize(new Rectangle(_loc7_,_loc6_,_loc8_.billboardObjectVo.configPlayfieldItemVo.sizeX,_loc8_.billboardObjectVo.configPlayfieldItemVo.sizeY)));
                                                                                                            if(_loc20_ || Boolean(_loc3_))
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  if(!(_loc21_ && Boolean(_loc3_)))
                                                                                                                  {
                                                                                                                     addr029d:
                                                                                                                     _loc8_.presentation.visible = false;
                                                                                                                     if(!_loc20_)
                                                                                                                     {
                                                                                                                        §§goto(addr032a);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr059c);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  _loc8_.presentation.visible = true;
                                                                                                                  if(!_loc21_)
                                                                                                                  {
                                                                                                                     addr02bd:
                                                                                                                     §§push(_loc2_.selectedRectangleIsFree);
                                                                                                                     if(!_loc21_)
                                                                                                                     {
                                                                                                                        addr02c7:
                                                                                                                        §§push(§§pop());
                                                                                                                        if(!_loc21_)
                                                                                                                        {
                                                                                                                           _loc9_ = §§pop();
                                                                                                                           if(!_loc21_)
                                                                                                                           {
                                                                                                                              addr02d6:
                                                                                                                              §§push(_loc5_.positionPossible(_loc8_.billboardObjectVo.configPlayfieldItemVo));
                                                                                                                              if(!_loc21_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 if(!_loc21_)
                                                                                                                                 {
                                                                                                                                    _loc10_ = §§pop();
                                                                                                                                    if(!(_loc21_ && Boolean(_loc3_)))
                                                                                                                                    {
                                                                                                                                       §§push(_loc8_.billboardObjectVo);
                                                                                                                                       if(!(_loc21_ && Boolean(this)))
                                                                                                                                       {
                                                                                                                                          §§push(false);
                                                                                                                                          if(_loc20_)
                                                                                                                                          {
                                                                                                                                             §§pop().isRestrictedByGround = §§pop();
                                                                                                                                             if(!(_loc21_ && Boolean(_loc3_)))
                                                                                                                                             {
                                                                                                                                                §§goto(addr032a);
                                                                                                                                             }
                                                                                                                                             §§goto(addr03e8);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0343);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0350);
                                                                                                                                    }
                                                                                                                                    §§goto(addr056f);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr03b2);
                                                                                                                           }
                                                                                                                           §§goto(addr03e8);
                                                                                                                        }
                                                                                                                        §§goto(addr03e4);
                                                                                                                     }
                                                                                                                     §§goto(addr03b2);
                                                                                                                  }
                                                                                                                  §§goto(addr02d6);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr0381);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr03b2);
                                                                                                }
                                                                                                §§goto(addr056f);
                                                                                             }
                                                                                             §§goto(addr0372);
                                                                                          }
                                                                                          §§goto(addr0240);
                                                                                       }
                                                                                       §§goto(addr0382);
                                                                                    }
                                                                                    §§goto(addr0372);
                                                                                 }
                                                                                 §§goto(addr02c7);
                                                                              }
                                                                              §§goto(addr0220);
                                                                           }
                                                                           §§goto(addr021b);
                                                                        }
                                                                        §§goto(addr029d);
                                                                     }
                                                                     §§goto(addr0212);
                                                                  }
                                                                  §§goto(addr0240);
                                                               }
                                                               §§goto(addr0208);
                                                            }
                                                            §§goto(addr03b2);
                                                         }
                                                         §§goto(addr0219);
                                                      }
                                                      §§goto(addr03ab);
                                                   }
                                                   §§goto(addr01ae);
                                                }
                                                §§goto(addr01b5);
                                             }
                                             §§goto(addr03ab);
                                          }
                                          §§goto(addr02bd);
                                       }
                                       §§goto(addr021b);
                                    }
                                    §§goto(addr02bd);
                                 }
                                 §§goto(addr016a);
                              }
                              §§goto(addr01a0);
                           }
                           else
                           {
                              §§push(_loc4_.objectToMove);
                              if(_loc20_ || Boolean(this))
                              {
                                 if(§§pop() is IPlaneObject)
                                 {
                                    addr0912:
                                    _loc17_ = _loc4_.objectToMove as IPlaneObject;
                                    if(!(_loc21_ && Boolean(_loc2_)))
                                    {
                                       §§push(int(Math.round(_loc3_.mouseMatrixPoint.x - _loc17_.objectVo.configPlayfieldItemVo.sizeX / 2)));
                                       if(_loc20_)
                                       {
                                          _loc7_ = §§pop();
                                          if(_loc20_ || Boolean(_loc3_))
                                          {
                                             §§push(int(Math.round(_loc3_.mouseMatrixPoint.y - _loc17_.objectVo.configPlayfieldItemVo.sizeY / 2)));
                                             if(!_loc21_)
                                             {
                                                _loc6_ = §§pop();
                                                if(_loc20_)
                                                {
                                                   §§push((_loc17_ as IMatrixObject3D).xIndex);
                                                   if(!_loc21_)
                                                   {
                                                      §§push(_loc7_);
                                                      if(!_loc21_)
                                                      {
                                                         §§push(§§pop() == §§pop());
                                                         if(_loc20_)
                                                         {
                                                            var _temp_85:* = §§pop();
                                                            §§push(_temp_85);
                                                            §§push(_temp_85);
                                                            if(!(_loc21_ && Boolean(_loc3_)))
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(!(_loc21_ && Boolean(param1)))
                                                                  {
                                                                     §§pop();
                                                                     if(_loc20_ || Boolean(_loc2_))
                                                                     {
                                                                        §§push((_loc17_ as IMatrixObject3D).yIndex);
                                                                        if(_loc20_)
                                                                        {
                                                                           addr09e6:
                                                                           addr09e4:
                                                                           §§push(§§pop() == _loc6_);
                                                                           if(!_loc21_)
                                                                           {
                                                                              addr09ed:
                                                                              var _temp_89:* = §§pop();
                                                                              §§push(_temp_89);
                                                                              §§push(_temp_89);
                                                                              if(!_loc21_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!(_loc21_ && Boolean(param1)))
                                                                                    {
                                                                                       addr0a06:
                                                                                       §§pop();
                                                                                       if(_loc20_)
                                                                                       {
                                                                                          §§push(_loc7_);
                                                                                          if(!_loc21_)
                                                                                          {
                                                                                             addr0a15:
                                                                                             §§push(_loc4_.originalPosition);
                                                                                             if(_loc20_)
                                                                                             {
                                                                                                §§push(§§pop() == §§pop().x);
                                                                                                if(_loc20_ || Boolean(this))
                                                                                                {
                                                                                                   §§push(!§§pop());
                                                                                                   if(_loc20_ || Boolean(_loc2_))
                                                                                                   {
                                                                                                      addr0a40:
                                                                                                      var _temp_93:* = §§pop();
                                                                                                      §§push(_temp_93);
                                                                                                      §§push(_temp_93);
                                                                                                      if(!(_loc21_ && Boolean(this)))
                                                                                                      {
                                                                                                         addr0a4f:
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(_loc20_)
                                                                                                            {
                                                                                                               addr0a59:
                                                                                                               §§pop();
                                                                                                               if(_loc20_ || Boolean(this))
                                                                                                               {
                                                                                                                  addr0a6f:
                                                                                                                  addr0a6a:
                                                                                                                  §§push(_loc6_ == _loc4_.originalPosition.y);
                                                                                                                  if(!(_loc21_ && Boolean(this)))
                                                                                                                  {
                                                                                                                     §§push(!§§pop());
                                                                                                                     if(_loc20_ || Boolean(this))
                                                                                                                     {
                                                                                                                        §§goto(addr0a8f);
                                                                                                                     }
                                                                                                                     §§goto(addr0b2c);
                                                                                                                  }
                                                                                                                  §§goto(addr0b62);
                                                                                                               }
                                                                                                               §§goto(addr0aec);
                                                                                                            }
                                                                                                            §§goto(addr0ad4);
                                                                                                         }
                                                                                                         §§goto(addr0a8f);
                                                                                                      }
                                                                                                      §§goto(addr0b34);
                                                                                                   }
                                                                                                   §§goto(addr0a59);
                                                                                                }
                                                                                                §§goto(addr0a8f);
                                                                                             }
                                                                                             §§goto(addr0a6f);
                                                                                          }
                                                                                          §§goto(addr0a6a);
                                                                                       }
                                                                                       §§goto(addr0ade);
                                                                                    }
                                                                                    §§goto(addr0b46);
                                                                                 }
                                                                                 addr0a8f:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc20_)
                                                                                    {
                                                                                       return;
                                                                                    }
                                                                                    addr0aec:
                                                                                    _loc17_.container.visible = false;
                                                                                    if(!_loc20_)
                                                                                    {
                                                                                       addr0b4d:
                                                                                       addr0b62:
                                                                                       §§push(_loc5_.positionPossible(_loc17_.objectVo.configPlayfieldItemVo));
                                                                                       if(!_loc21_)
                                                                                       {
                                                                                          addr0b61:
                                                                                          §§push(§§pop());
                                                                                       }
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc20_)
                                                                                          {
                                                                                             addr0b6c:
                                                                                             (_loc17_ as IInteraction).invalidateHighlightManager(HighlightManager.INMOVE_ALLOW_MOVE_TINT);
                                                                                             if(!(_loc21_ && Boolean(_loc3_)))
                                                                                             {
                                                                                                §§goto(addr0bb8);
                                                                                             }
                                                                                             §§goto(addr0bc8);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          (_loc17_ as IInteraction).invalidateHighlightManager(HighlightManager.INMOVE_DISALLOW_TINT);
                                                                                          if(!(_loc21_ && Boolean(_loc3_)))
                                                                                          {
                                                                                             addr0bb8:
                                                                                             _loc17_.updateIndex(_loc7_,_loc6_);
                                                                                             if(_loc20_)
                                                                                             {
                                                                                                addr0bc8:
                                                                                                sendNotification(ApplicationNotificationConstants.FIELD_UPDATE_SINGLE_POSITION,_loc4_.objectToMove);
                                                                                             }
                                                                                             §§goto(addr0bd7);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(_loc3_.checkIfRectIsInUsablePlayfieldSize(new Rectangle(_loc7_,_loc6_,_loc17_.objectVo.configPlayfieldItemVo.sizeX,_loc17_.objectVo.configPlayfieldItemVo.sizeY)));
                                                                                    if(!_loc21_)
                                                                                    {
                                                                                       addr0ad4:
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          if(_loc20_)
                                                                                          {
                                                                                             addr0ade:
                                                                                             _loc17_.presentation.visible = false;
                                                                                             if(_loc20_)
                                                                                             {
                                                                                                §§goto(addr0aec);
                                                                                             }
                                                                                             §§goto(addr0b6c);
                                                                                          }
                                                                                          §§goto(addr0bc8);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          _loc17_.presentation.visible = true;
                                                                                          if(_loc20_)
                                                                                          {
                                                                                             _loc17_.container.visible = true;
                                                                                             if(!_loc21_)
                                                                                             {
                                                                                                addr0b1a:
                                                                                                §§push(_loc2_.selectedRectangleIsFree);
                                                                                                if(_loc20_ || Boolean(this))
                                                                                                {
                                                                                                   addr0b2c:
                                                                                                   §§push(§§pop());
                                                                                                   if(!_loc21_)
                                                                                                   {
                                                                                                      var _temp_101:* = §§pop();
                                                                                                      addr0b34:
                                                                                                      §§push(_temp_101);
                                                                                                      if(_temp_101)
                                                                                                      {
                                                                                                         if(_loc20_ || Boolean(_loc2_))
                                                                                                         {
                                                                                                            §§goto(addr0b46);
                                                                                                         }
                                                                                                         §§goto(addr0b61);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr0b62);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr0b6c);
                                                                                    }
                                                                                    addr0b46:
                                                                                    §§pop();
                                                                                    if(!_loc21_)
                                                                                    {
                                                                                       §§goto(addr0b4d);
                                                                                    }
                                                                                    §§goto(addr0bd7);
                                                                                 }
                                                                                 §§goto(addr0bd7);
                                                                              }
                                                                              §§goto(addr0a4f);
                                                                           }
                                                                           §§goto(addr0a06);
                                                                        }
                                                                        §§goto(addr0a15);
                                                                     }
                                                                     §§goto(addr0bb8);
                                                                  }
                                                                  §§goto(addr0b61);
                                                               }
                                                               §§goto(addr09ed);
                                                            }
                                                            §§goto(addr0a4f);
                                                         }
                                                         §§goto(addr0a40);
                                                      }
                                                      §§goto(addr09e6);
                                                   }
                                                   §§goto(addr09e4);
                                                }
                                                §§goto(addr0b1a);
                                             }
                                             §§goto(addr0a15);
                                          }
                                          §§goto(addr0bd7);
                                       }
                                       §§goto(addr09e4);
                                    }
                                    §§goto(addr0ade);
                                 }
                                 §§goto(addr0bd7);
                              }
                              §§goto(addr0912);
                           }
                        }
                        §§goto(addr0103);
                     }
                  }
                  §§goto(addr00fe);
               }
               addr0bd7:
               return;
            }
            §§goto(addr00f7);
         }
         §§goto(addr00e4);
      }
   }
}

