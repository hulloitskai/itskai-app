import { type Consumer } from "@rails/actioncable";
import { createConsumer } from "@rails/actioncable";

import { ActionCableContext } from "~/helpers/actioncable";

export interface ActionCableProviderProps extends PropsWithChildren {}

const ActionCableProvider: FC<ActionCableProviderProps> = ({ children }) => {
  const [cable, setCable] = useState<Consumer | null>(null);
  useEffect(() => {
    setCable(createConsumer());
  }, []);
  return (
    <ActionCableContext.Provider value={cable}>
      {children}
    </ActionCableContext.Provider>
  );
};

export default ActionCableProvider;
