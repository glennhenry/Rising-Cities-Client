package net.bigpoint.cityrama.view.common.components
{
   import net.bigpoint.cityrama.model.common.vo.RewardItemComponentVo;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.supportClasses.SkinnableComponent;
   
   public class RewardItemComponent extends SkinnableComponent
   {
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         _skinParts = {
            "stickyTape":false,
            "item":true,
            "pricingBg":true,
            "cardBoardGfx":true,
            "pricingIcon":false,
            "labelDisplay":true,
            "buffMultiplier":false,
            "qualityBadge":false,
            "newIcon":false
         };
      }
      
      public var cardBoardGfx:BriskImageDynaLib;
      
      public var stickyTape:BriskMCDynaLib;
      
      public var labelDisplay:LocaLabel;
      
      public var pricingIcon:BriskImageDynaLib;
      
      public var pricingBg:BriskImageDynaLib;
      
      public var newIcon:BriskImageDynaLib;
      
      public var item:BriskImageDynaLib;
      
      public var qualityBadge:BriskImageDynaLib;
      
      public var buffMultiplier:BriskImageDynaLib;
      
      public var showBottomPaper:Boolean = true;
      
      private var _data:RewardItemComponentVo;
      
      private var _dataDirty:Boolean;
      
      private var _oldStyle:String;
      
      private var _styleDirty:Boolean;
      
      public function RewardItemComponent()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
         }
      }
      
      public function set data(param1:RewardItemComponentVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(_loc3_)
               {
                  this._data = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     addr0058:
                     this._dataDirty = true;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        this.setCardBoard();
                        if(!_loc2_)
                        {
                           addr0075:
                           invalidateProperties();
                        }
                        §§goto(addr007a);
                     }
                     §§goto(addr0075);
                  }
                  §§goto(addr007a);
               }
               §§goto(addr0058);
            }
            addr007a:
            return;
         }
         §§goto(addr0058);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.commitProperties();
            if(!_loc3_)
            {
               §§push(this._dataDirty);
               if(!(_loc3_ && _loc1_))
               {
                  if(§§pop())
                  {
                     if(_loc2_ || _loc3_)
                     {
                        this._dataDirty = false;
                        if(_loc2_)
                        {
                           §§push(this.labelDisplay);
                           if(_loc2_)
                           {
                              if(§§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    §§push(this.labelDisplay);
                                    if(!_loc3_)
                                    {
                                       §§push(this._data.price);
                                       if(_loc2_)
                                       {
                                          §§pop().text = §§pop();
                                          if(_loc2_ || _loc1_)
                                          {
                                             §§push(this.labelDisplay);
                                             if(!_loc3_)
                                             {
                                                §§push(§§pop().text == "0");
                                                if(_loc2_ || _loc1_)
                                                {
                                                   var _temp_5:* = §§pop();
                                                   §§push(_temp_5);
                                                   §§push(_temp_5);
                                                   if(_loc2_ || _loc3_)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            addr00b6:
                                                            §§pop();
                                                            if(_loc2_ || _loc2_)
                                                            {
                                                               §§push(this.labelDisplay);
                                                               if(!_loc3_)
                                                               {
                                                                  addr00cd:
                                                                  §§push(§§pop().text == "-1");
                                                                  if(_loc2_ || _loc1_)
                                                                  {
                                                                     addr00e0:
                                                                     var _temp_9:* = §§pop();
                                                                     addr00e1:
                                                                     §§push(_temp_9);
                                                                     if(_temp_9)
                                                                     {
                                                                        if(!(_loc3_ && _loc2_))
                                                                        {
                                                                           addr00f2:
                                                                           §§pop();
                                                                           if(!(_loc3_ && _loc2_))
                                                                           {
                                                                              §§push(this._data);
                                                                              if(_loc2_)
                                                                              {
                                                                                 §§push(§§pop().useNew);
                                                                                 if(!(_loc3_ && _loc2_))
                                                                                 {
                                                                                    addr0119:
                                                                                    §§push(§§pop());
                                                                                    if(_loc2_ || _loc1_)
                                                                                    {
                                                                                       addr0127:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!(_loc3_ && Boolean(this)))
                                                                                          {
                                                                                             §§push(this.labelDisplay);
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                addr014d:
                                                                                                §§pop().text = LocaUtils.getString("rcl.booklayer.levelUp","rcl.booklayer.levelUp.new.capital");
                                                                                                addr0141:
                                                                                                if(!(_loc3_ && Boolean(this)))
                                                                                                {
                                                                                                   addr015c:
                                                                                                   §§push(this.pricingIcon);
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      §§push(this.pricingIcon);
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         §§push(false);
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            var _temp_16:* = §§pop();
                                                                                                            §§push(_temp_16);
                                                                                                            §§push(_temp_16);
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               var _loc1_:* = §§pop();
                                                                                                               if(!(_loc3_ && _loc1_))
                                                                                                               {
                                                                                                                  §§pop().includeInLayout = §§pop();
                                                                                                                  if(_loc2_)
                                                                                                                  {
                                                                                                                     §§push(_loc1_);
                                                                                                                     if(_loc2_ || _loc3_)
                                                                                                                     {
                                                                                                                        if(!(_loc3_ && _loc1_))
                                                                                                                        {
                                                                                                                           §§pop().visible = §§pop();
                                                                                                                           if(!(_loc3_ && _loc3_))
                                                                                                                           {
                                                                                                                              addr0250:
                                                                                                                              §§push(this.newIcon);
                                                                                                                              if(!_loc3_)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    if(!_loc3_)
                                                                                                                                    {
                                                                                                                                       addr0266:
                                                                                                                                       this.newIcon.visible = this._data.useNew;
                                                                                                                                       addr0262:
                                                                                                                                       if(!(_loc3_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          addr027c:
                                                                                                                                          §§push(this.pricingIcon);
                                                                                                                                          if(!_loc3_)
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                if(!(_loc3_ && Boolean(this)))
                                                                                                                                                {
                                                                                                                                                   addr02a2:
                                                                                                                                                   §§push(this.pricingIcon);
                                                                                                                                                   if(!_loc3_)
                                                                                                                                                   {
                                                                                                                                                      addr02ab:
                                                                                                                                                      §§push(this.pricingIcon);
                                                                                                                                                      if(_loc2_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         addr02bc:
                                                                                                                                                         §§push(this._data.priceIconVo == null);
                                                                                                                                                         if(_loc2_)
                                                                                                                                                         {
                                                                                                                                                            addr02ca:
                                                                                                                                                            §§push(!§§pop());
                                                                                                                                                            if(_loc2_)
                                                                                                                                                            {
                                                                                                                                                               addr02d0:
                                                                                                                                                               var _temp_24:* = §§pop();
                                                                                                                                                               §§push(_temp_24);
                                                                                                                                                               §§push(_temp_24);
                                                                                                                                                               if(_loc2_)
                                                                                                                                                               {
                                                                                                                                                                  _loc1_ = §§pop();
                                                                                                                                                                  if(!(_loc3_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().visible = §§pop();
                                                                                                                                                                     if(_loc2_ || _loc1_)
                                                                                                                                                                     {
                                                                                                                                                                        addr02f3:
                                                                                                                                                                        §§push(_loc1_);
                                                                                                                                                                        if(!(_loc3_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           addr0301:
                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              addr0308:
                                                                                                                                                                              §§pop().includeInLayout = §§pop();
                                                                                                                                                                              if(_loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr030f:
                                                                                                                                                                                 §§push(this._data);
                                                                                                                                                                                 if(_loc2_ || _loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop().priceIconVo)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr032c:
                                                                                                                                                                                          §§push(this.pricingIcon);
                                                                                                                                                                                          if(!(_loc3_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr033d:
                                                                                                                                                                                             §§pop().briskDynaVo = this._data.priceIconVo;
                                                                                                                                                                                             if(!(_loc3_ && Boolean(this)))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr0354:
                                                                                                                                                                                                §§push(this.qualityBadge);
                                                                                                                                                                                                if(!_loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.qualityBadge);
                                                                                                                                                                                                         if(_loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this.qualityBadge);
                                                                                                                                                                                                            §§push(this._data.qualityBadge == null);
                                                                                                                                                                                                            if(_loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(!§§pop());
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§pop().visible = _loc1_ = §§pop();
                                                                                                                                                                                                            §§pop().includeInLayout = _loc1_;
                                                                                                                                                                                                            if(!(_loc3_ && _loc1_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(this._data);
                                                                                                                                                                                                               if(_loc2_ || Boolean(this))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr03a9:
                                                                                                                                                                                                                  if(§§pop().qualityBadge)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc2_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr03b9:
                                                                                                                                                                                                                        this.qualityBadge.briskDynaVo = this._data.qualityBadge;
                                                                                                                                                                                                                        addr03b5:
                                                                                                                                                                                                                        if(_loc2_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr03c8:
                                                                                                                                                                                                                           §§push(this.buffMultiplier);
                                                                                                                                                                                                                           if(_loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc3_ && Boolean(this)))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(this.buffMultiplier);
                                                                                                                                                                                                                                    if(_loc2_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr03eb:
                                                                                                                                                                                                                                       this.buffMultiplier.visible = _loc1_ = this._data.showBuff;
                                                                                                                                                                                                                                       §§pop().includeInLayout = _loc1_;
                                                                                                                                                                                                                                       if(!(_loc3_ && _loc2_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr0411:
                                                                                                                                                                                                                                          §§push(this._data.showBuff);
                                                                                                                                                                                                                                          if(_loc2_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr041a:
                                                                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc3_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr0427:
                                                                                                                                                                                                                                                   this.buffMultiplier.briskDynaVo = this._data.buffGfxVo;
                                                                                                                                                                                                                                                   addr0423:
                                                                                                                                                                                                                                                   if(!(_loc3_ && _loc2_))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr043f:
                                                                                                                                                                                                                                                      §§push(this._styleDirty);
                                                                                                                                                                                                                                                      if(!(_loc3_ && _loc1_))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc3_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr0459:
                                                                                                                                                                                                                                                               this.checkStyle();
                                                                                                                                                                                                                                                               if(!_loc3_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  this._styleDirty = false;
                                                                                                                                                                                                                                                                  if(!(_loc3_ && _loc2_))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr0476:
                                                                                                                                                                                                                                                                     addr047a:
                                                                                                                                                                                                                                                                     if(!this.showBottomPaper)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc3_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr0483:
                                                                                                                                                                                                                                                                           §§push(this.stickyTape);
                                                                                                                                                                                                                                                                           if(_loc2_ || Boolean(this))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!_loc3_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr04a1:
                                                                                                                                                                                                                                                                                    this.stickyTape.includeInLayout = this.stickyTape.visible = false;
                                                                                                                                                                                                                                                                                    addr049d:
                                                                                                                                                                                                                                                                                    if(_loc2_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr04b4:
                                                                                                                                                                                                                                                                                       §§push(this.labelDisplay);
                                                                                                                                                                                                                                                                                       if(_loc2_ || Boolean(this))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr04c5:
                                                                                                                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc3_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr04d2:
                                                                                                                                                                                                                                                                                                this.labelDisplay.includeInLayout = this.labelDisplay.visible = false;
                                                                                                                                                                                                                                                                                                addr04ce:
                                                                                                                                                                                                                                                                                                if(_loc2_ || _loc2_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr04ed:
                                                                                                                                                                                                                                                                                                   §§push(this.pricingBg);
                                                                                                                                                                                                                                                                                                   if(_loc2_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!_loc3_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§goto(addr0503);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr052a);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr0503:
                                                                                                                                                                                                                                                                                                   this.pricingBg.includeInLayout = this.pricingBg.visible = false;
                                                                                                                                                                                                                                                                                                   addr04ff:
                                                                                                                                                                                                                                                                                                   if(_loc2_ || Boolean(this))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr052a:
                                                                                                                                                                                                                                                                                                      §§push(this.pricingIcon);
                                                                                                                                                                                                                                                                                                      if(_loc2_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr0533:
                                                                                                                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc2_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr0547:
                                                                                                                                                                                                                                                                                                               §§push(this.pricingIcon);
                                                                                                                                                                                                                                                                                                               this.pricingIcon.visible = _loc1_ = false;
                                                                                                                                                                                                                                                                                                               addr054c:
                                                                                                                                                                                                                                                                                                               §§pop().includeInLayout = _loc1_;
                                                                                                                                                                                                                                                                                                               addr0540:
                                                                                                                                                                                                                                                                                                               addr053c:
                                                                                                                                                                                                                                                                                                               addr054a:
                                                                                                                                                                                                                                                                                                               addr0549:
                                                                                                                                                                                                                                                                                                               addr0546:
                                                                                                                                                                                                                                                                                                               addr0545:
                                                                                                                                                                                                                                                                                                               addr0544:
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr054e);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr0540);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr054e);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr054e);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr04ed);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr04d2);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr053c);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr04ff);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr04b4);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr04a1);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr049d);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr054e);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr04b4);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr0483);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr0476);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr047a);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr04b4);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr0483);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr043f);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr047a);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr0459);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr0427);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr043f);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr03eb);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr043f);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr04ff);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr03c8);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr0411);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr04ff);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr03b9);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr0483);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr03c8);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr03b9);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr0459);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr0533);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr0483);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr0354);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr0411);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr0423);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr054c);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr054a);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr0549);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr0547);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0546);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0545);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr02d0);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr0544);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0540);
                                                                                                                                                }
                                                                                                                                                §§goto(addr04ce);
                                                                                                                                             }
                                                                                                                                             §§goto(addr0354);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0533);
                                                                                                                                       }
                                                                                                                                       §§goto(addr032c);
                                                                                                                                    }
                                                                                                                                    §§goto(addr030f);
                                                                                                                                 }
                                                                                                                                 §§goto(addr027c);
                                                                                                                              }
                                                                                                                              §§goto(addr0266);
                                                                                                                           }
                                                                                                                           §§goto(addr04b4);
                                                                                                                        }
                                                                                                                        §§goto(addr0308);
                                                                                                                     }
                                                                                                                     §§goto(addr0301);
                                                                                                                  }
                                                                                                                  §§goto(addr02f3);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr021d:
                                                                                                                  §§pop().includeInLayout = §§pop();
                                                                                                                  if(_loc2_ || _loc1_)
                                                                                                                  {
                                                                                                                     §§push(_loc1_);
                                                                                                                     if(!(_loc3_ && _loc1_))
                                                                                                                     {
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           §§pop().visible = §§pop();
                                                                                                                           if(!(_loc3_ && _loc2_))
                                                                                                                           {
                                                                                                                              §§goto(addr0250);
                                                                                                                           }
                                                                                                                           §§goto(addr030f);
                                                                                                                        }
                                                                                                                        §§goto(addr0308);
                                                                                                                     }
                                                                                                                     §§goto(addr054a);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr0549);
                                                                                                            }
                                                                                                            §§goto(addr0546);
                                                                                                         }
                                                                                                         §§goto(addr02ca);
                                                                                                      }
                                                                                                      §§goto(addr0544);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr01d0:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(!(_loc3_ && _loc2_))
                                                                                                         {
                                                                                                            §§push(this.pricingIcon);
                                                                                                            if(_loc2_)
                                                                                                            {
                                                                                                               §§push(this.pricingIcon);
                                                                                                               if(_loc2_)
                                                                                                               {
                                                                                                                  §§push(true);
                                                                                                                  if(!(_loc3_ && _loc1_))
                                                                                                                  {
                                                                                                                     var _temp_49:* = §§pop();
                                                                                                                     §§push(_temp_49);
                                                                                                                     §§push(_temp_49);
                                                                                                                     if(!(_loc3_ && _loc1_))
                                                                                                                     {
                                                                                                                        _loc1_ = §§pop();
                                                                                                                        if(!(_loc3_ && _loc2_))
                                                                                                                        {
                                                                                                                           §§goto(addr021d);
                                                                                                                        }
                                                                                                                        §§goto(addr0547);
                                                                                                                     }
                                                                                                                     §§goto(addr0546);
                                                                                                                  }
                                                                                                                  §§goto(addr02d0);
                                                                                                               }
                                                                                                               §§goto(addr02bc);
                                                                                                            }
                                                                                                            §§goto(addr02ab);
                                                                                                         }
                                                                                                         §§goto(addr053c);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr0250);
                                                                                                }
                                                                                                §§goto(addr030f);
                                                                                             }
                                                                                             §§goto(addr04d2);
                                                                                          }
                                                                                          §§goto(addr030f);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(this.pricingIcon);
                                                                                          if(_loc2_ || _loc3_)
                                                                                          {
                                                                                             §§goto(addr01d0);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr033d);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr041a);
                                                                              }
                                                                              §§goto(addr03a9);
                                                                           }
                                                                           §§goto(addr032c);
                                                                        }
                                                                        §§goto(addr0119);
                                                                     }
                                                                     §§goto(addr0127);
                                                                  }
                                                                  §§goto(addr041a);
                                                               }
                                                               §§goto(addr04c5);
                                                            }
                                                            §§goto(addr02a2);
                                                         }
                                                         §§goto(addr047a);
                                                      }
                                                      §§goto(addr00e0);
                                                   }
                                                   §§goto(addr00e1);
                                                }
                                                §§goto(addr00f2);
                                             }
                                             §§goto(addr00cd);
                                          }
                                          §§goto(addr04ed);
                                       }
                                       §§goto(addr014d);
                                    }
                                    §§goto(addr0141);
                                 }
                                 §§goto(addr015c);
                              }
                              §§goto(addr0250);
                           }
                           §§goto(addr04d2);
                        }
                        §§goto(addr0262);
                     }
                     §§goto(addr043f);
                  }
                  addr054e:
                  return;
               }
               §§goto(addr00b6);
            }
            §§goto(addr03b5);
         }
         §§goto(addr015c);
      }
      
      private function setCardBoard() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            if(this._data)
            {
               if(!_loc2_)
               {
                  §§push(this);
                  §§push(this._data.type + "_");
                  if(!_loc2_)
                  {
                     §§push(§§pop() + this._data.size);
                  }
                  §§pop().styleName = §§pop();
                  if(!_loc2_)
                  {
                     addr005d:
                     this._oldStyle = styleName.toString();
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr0076:
                        this._styleDirty = true;
                     }
                     §§goto(addr007b);
                  }
                  §§goto(addr0076);
               }
            }
            addr007b:
            return;
         }
         §§goto(addr005d);
      }
      
      override public function set styleName(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            if(param1 != super.styleName)
            {
               if(_loc3_)
               {
                  super.styleName = param1;
               }
            }
         }
      }
      
      private function checkStyle() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this.cardBoardGfx);
            if(!(_loc1_ && Boolean(this)))
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     §§push(this.cardBoardGfx);
                     if(_loc2_)
                     {
                        addr0041:
                        §§pop().dynaBmpSourceName = this.getStyle("bgDynaImageName");
                        if(!_loc1_)
                        {
                           §§push(this.cardBoardGfx);
                           if(_loc2_ || Boolean(this))
                           {
                              if(this.getStyle("bgDynaSwfName") == "null")
                              {
                                 if(_loc2_ || _loc2_)
                                 {
                                    §§push(null);
                                    if(_loc2_ || _loc2_)
                                    {
                                    }
                                    §§goto(addr00a6);
                                 }
                                 §§goto(addr00b2);
                              }
                              else
                              {
                                 §§push(this.getStyle("bgDynaSwfName"));
                              }
                              addr00a6:
                              §§pop().dynaSWFFileName = §§pop();
                              if(!_loc1_)
                              {
                                 addr00b2:
                                 this.cardBoardGfx.dynaLibName = this.getStyle("bgDynaLibName");
                                 addr00ae:
                                 if(!_loc1_)
                                 {
                                    §§goto(addr00c1);
                                 }
                                 §§goto(addr00ee);
                              }
                              §§goto(addr00c1);
                           }
                           §§goto(addr00b2);
                        }
                        §§goto(addr0138);
                     }
                     §§goto(addr00b2);
                  }
                  §§goto(addr00ae);
               }
               addr00c1:
               §§push(this.stickyTape);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc2_ || Boolean(this))
                     {
                        §§goto(addr00df);
                     }
                     §§goto(addr0112);
                  }
                  §§goto(addr00ee);
               }
               addr00df:
               this.stickyTape.visible = this.getStyle("useSticky");
               if(!_loc1_)
               {
                  addr00ee:
                  §§push(this.item);
                  if(_loc2_ || _loc1_)
                  {
                     if(§§pop())
                     {
                        if(_loc2_)
                        {
                           §§goto(addr0116);
                        }
                        §§goto(addr0138);
                     }
                     §§goto(addr0126);
                  }
                  addr0116:
                  this.item.briskDynaVo = this._data.itemIconVo;
                  addr0112:
                  if(!_loc1_)
                  {
                     addr0126:
                     §§push(this.labelDisplay);
                     if(_loc2_)
                     {
                        if(§§pop())
                        {
                           if(!_loc1_)
                           {
                              addr013c:
                              this.labelDisplay.styleName = this.getStyle("priceFontStyle").toString();
                              addr0138:
                           }
                        }
                        §§goto(addr014b);
                     }
                     §§goto(addr013c);
                  }
                  §§goto(addr014b);
               }
               addr014b:
               return;
            }
            §§goto(addr0041);
         }
         §§goto(addr0138);
      }
      
      public function get text() : String
      {
         return this.labelDisplay.text;
      }
      
      public function set text(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this.labelDisplay.text = param1;
         }
      }
   }
}

